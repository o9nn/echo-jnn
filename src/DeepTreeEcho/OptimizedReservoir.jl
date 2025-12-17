"""
Optimized Echo State Reservoir Implementation
High-performance reservoir computing with A000081 alignment
Includes type stability, memory optimization, and SIMD-friendly operations
"""

module OptimizedReservoir

using LinearAlgebra
using SparseArrays
using Random

export OptimizedESN, create_optimized_reservoir
export train_reservoir!, predict_sequence, reset_reservoir!
export ReservoirState, update_state!

"""
Optimized Echo State Network with type-stable operations.
All dimensions derived from A000081 sequence.
"""
struct OptimizedESN{T<:AbstractFloat}
    # Network dimensions (A000081-aligned)
    reservoir_size::Int
    input_size::Int
    output_size::Int
    
    # Weight matrices (sparse for efficiency)
    W_in::Matrix{T}              # Input weights (reservoir_size × input_size)
    W::SparseMatrixCSC{T,Int}    # Reservoir weights (sparse)
    W_out::Matrix{T}             # Output weights (output_size × reservoir_size)
    
    # Reservoir parameters
    spectral_radius::T
    input_scaling::T
    leak_rate::T
    
    # Regularization
    ridge_param::T
    
    # Pre-allocated buffers for efficiency
    state_buffer::Vector{T}
    input_buffer::Vector{T}
    output_buffer::Vector{T}
    
    # Training data storage
    state_collection::Matrix{T}
    target_collection::Matrix{T}
    is_trained::Ref{Bool}
end

"""
Mutable reservoir state for efficient updates.
"""
mutable struct ReservoirState{T<:AbstractFloat}
    x::Vector{T}                 # Current state
    x_prev::Vector{T}            # Previous state (for leak)
    time_step::Int
end

"""
Create an optimized reservoir with A000081-derived parameters.
"""
function create_optimized_reservoir(;
    reservoir_size::Int,
    input_size::Int,
    output_size::Int,
    spectral_radius::Float64=0.9,
    input_scaling::Float64=1.0,
    leak_rate::Float64=0.3,
    sparsity::Float64=0.1,
    ridge_param::Float64=1e-6,
    seed::Int=42,
    dtype::Type{T}=Float64
) where T<:AbstractFloat
    
    Random.seed!(seed)
    
    # Input weights (dense, small matrix)
    W_in = randn(T, reservoir_size, input_size) .* T(input_scaling)
    
    # Reservoir weights (sparse for large reservoirs)
    W = create_sparse_reservoir_matrix(reservoir_size, sparsity, spectral_radius, dtype)
    
    # Output weights (initialized to zeros, trained later)
    W_out = zeros(T, output_size, reservoir_size)
    
    # Pre-allocated buffers
    state_buffer = zeros(T, reservoir_size)
    input_buffer = zeros(T, input_size)
    output_buffer = zeros(T, output_size)
    
    # Training storage (empty initially)
    state_collection = zeros(T, 0, reservoir_size)
    target_collection = zeros(T, 0, output_size)
    
    OptimizedESN{T}(
        reservoir_size, input_size, output_size,
        W_in, W, W_out,
        T(spectral_radius), T(input_scaling), T(leak_rate),
        T(ridge_param),
        state_buffer, input_buffer, output_buffer,
        state_collection, target_collection,
        Ref(false)
    )
end

"""
Create sparse reservoir matrix with specified spectral radius.
Uses efficient sparse matrix construction.
"""
function create_sparse_reservoir_matrix(
    size::Int,
    sparsity::Float64,
    spectral_radius::Float64,
    dtype::Type{T}
) where T<:AbstractFloat
    
    # Number of non-zero elements
    nnz = round(Int, size * size * sparsity)
    
    # Random sparse matrix
    W = sprandn(T, size, size, sparsity)
    
    # Scale to desired spectral radius
    # Use power iteration for efficiency
    current_radius = estimate_spectral_radius(W, max_iter=20)
    
    if current_radius > 0
        W = W .* T(spectral_radius / current_radius)
    end
    
    return W
end

"""
Estimate spectral radius using power iteration.
More efficient than full eigenvalue computation.
"""
function estimate_spectral_radius(W::SparseMatrixCSC{T}, max_iter::Int=20) where T
    n = size(W, 1)
    v = randn(T, n)
    v ./= norm(v)
    
    for _ in 1:max_iter
        v_new = W * v
        radius = norm(v_new)
        v = v_new ./ (radius + T(1e-10))
    end
    
    return norm(W * v)
end

"""
Update reservoir state with new input (type-stable, in-place).
"""
function update_state!(
    state::ReservoirState{T},
    esn::OptimizedESN{T},
    input::AbstractVector{T}
) where T<:AbstractFloat
    
    # Store previous state
    state.x_prev .= state.x
    
    # Compute new state: x(t+1) = (1-α)x(t) + α·tanh(W·x(t) + W_in·u(t))
    # In-place operations for efficiency
    
    # Compute W * x_prev
    mul!(esn.state_buffer, esn.W, state.x_prev)
    
    # Add W_in * input
    mul!(esn.state_buffer, esn.W_in, input, T(1), T(1))
    
    # Apply tanh activation
    @inbounds for i in 1:esn.reservoir_size
        esn.state_buffer[i] = tanh(esn.state_buffer[i])
    end
    
    # Leaky integration
    α = esn.leak_rate
    @inbounds for i in 1:esn.reservoir_size
        state.x[i] = (T(1) - α) * state.x_prev[i] + α * esn.state_buffer[i]
    end
    
    state.time_step += 1
    
    return state
end

"""
Train the reservoir using ridge regression.
Optimized for large datasets with efficient linear algebra.
"""
function train_reservoir!(
    esn::OptimizedESN{T},
    input_sequence::AbstractMatrix{T},
    target_sequence::AbstractMatrix{T};
    washout::Int=100
) where T<:AbstractFloat
    
    n_samples = size(input_sequence, 1)
    
    if n_samples != size(target_sequence, 1)
        error("Input and target sequences must have same length")
    end
    
    # Initialize state
    state = ReservoirState(
        zeros(T, esn.reservoir_size),
        zeros(T, esn.reservoir_size),
        0
    )
    
    # Collect states (excluding washout)
    n_train = n_samples - washout
    states = zeros(T, n_train, esn.reservoir_size)
    targets = zeros(T, n_train, esn.output_size)
    
    # Run through sequence
    for t in 1:n_samples
        input = input_sequence[t, :]
        update_state!(state, esn, input)
        
        # Collect after washout
        if t > washout
            idx = t - washout
            states[idx, :] .= state.x
            targets[idx, :] .= target_sequence[t, :]
        end
    end
    
    # Ridge regression: W_out = (X'X + λI)^(-1) X'Y
    # Use efficient Cholesky decomposition
    
    X = states
    Y = targets
    λ = esn.ridge_param
    
    # X'X + λI
    XtX = X' * X
    @inbounds for i in 1:esn.reservoir_size
        XtX[i, i] += λ
    end
    
    # Solve using Cholesky (faster than direct inverse)
    XtY = X' * Y
    W_out_T = cholesky(Symmetric(XtX)) \ XtY
    
    # Transpose to get output weights
    esn.W_out .= W_out_T'
    
    # Mark as trained
    esn.is_trained[] = true
    
    return esn
end

"""
Predict output for given input using trained reservoir.
"""
function predict_output(
    esn::OptimizedESN{T},
    state::ReservoirState{T}
) where T<:AbstractFloat
    
    if !esn.is_trained[]
        error("Reservoir must be trained before prediction")
    end
    
    # y = W_out * x
    mul!(esn.output_buffer, esn.W_out, state.x)
    
    return copy(esn.output_buffer)
end

"""
Predict a sequence of outputs given input sequence.
"""
function predict_sequence(
    esn::OptimizedESN{T},
    input_sequence::AbstractMatrix{T};
    initial_state::Union{Nothing,ReservoirState{T}}=nothing,
    washout::Int=0
) where T<:AbstractFloat
    
    n_samples = size(input_sequence, 1)
    
    # Initialize state
    if isnothing(initial_state)
        state = ReservoirState(
            zeros(T, esn.reservoir_size),
            zeros(T, esn.reservoir_size),
            0
        )
    else
        state = initial_state
    end
    
    # Output storage
    outputs = zeros(T, n_samples, esn.output_size)
    
    # Run through sequence
    for t in 1:n_samples
        input = input_sequence[t, :]
        update_state!(state, esn, input)
        
        # Predict after washout
        if t > washout
            outputs[t, :] .= predict_output(esn, state)
        end
    end
    
    return outputs
end

"""
Reset reservoir state to zero.
"""
function reset_reservoir!(state::ReservoirState{T}) where T<:AbstractFloat
    fill!(state.x, zero(T))
    fill!(state.x_prev, zero(T))
    state.time_step = 0
    return state
end

"""
Get reservoir state for external use.
"""
function get_state(state::ReservoirState{T}) where T<:AbstractFloat
    return copy(state.x)
end

"""
Set reservoir state from external source.
"""
function set_state!(state::ReservoirState{T}, new_state::Vector{T}) where T<:AbstractFloat
    if length(new_state) != length(state.x)
        error("State dimension mismatch")
    end
    state.x .= new_state
    return state
end

"""
Compute reservoir statistics for analysis.
"""
function compute_statistics(esn::OptimizedESN{T}) where T<:AbstractFloat
    return (
        reservoir_size = esn.reservoir_size,
        input_size = esn.input_size,
        output_size = esn.output_size,
        spectral_radius = esn.spectral_radius,
        leak_rate = esn.leak_rate,
        sparsity = nnz(esn.W) / (esn.reservoir_size^2),
        is_trained = esn.is_trained[],
        memory_usage_mb = estimate_memory_usage(esn)
    )
end

"""
Estimate memory usage of reservoir in MB.
"""
function estimate_memory_usage(esn::OptimizedESN{T}) where T<:AbstractFloat
    bytes = 0
    
    # Dense matrices
    bytes += sizeof(esn.W_in)
    bytes += sizeof(esn.W_out)
    
    # Sparse matrix
    bytes += sizeof(esn.W.nzval) + sizeof(esn.W.rowval) + sizeof(esn.W.colptr)
    
    # Buffers
    bytes += sizeof(esn.state_buffer)
    bytes += sizeof(esn.input_buffer)
    bytes += sizeof(esn.output_buffer)
    
    return bytes / (1024^2)  # Convert to MB
end

end # module
