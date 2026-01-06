"""
    MembraneTreeMapping

Maps P-system membrane latent states to B-series rooted tree physical parameters.

# Concept

This module creates a bidirectional bridge between:

1. **Membrane Latent States**: Neural embeddings from P-system hierarchy
2. **Tree Physical Parameters**: B-series coefficients, structure, and dynamics

# Mathematical Foundation

## Membrane → Tree Mapping

The mapping Φ: ℝ^d_membrane → TreeSpace takes membrane embeddings and produces:

1. **Tree Structure Selection**: Which rooted trees to activate
   ```
   tree_selection = softmax(W_structure · s_membrane)
   ```

2. **Coefficient Generation**: B-series coefficients b(τ)
   ```
   b(τ) = σ(W_coeff · s_membrane + b_τ)
   ```

3. **Dynamics Parameters**: Spectral radius, time step, etc.
   ```
   ρ = ρ_min + (ρ_max - ρ_min) · σ(w_ρ · s_membrane)
   ```

## Tree → Membrane Mapping

The inverse mapping Φ⁻¹: TreeSpace → ℝ^d_membrane extracts latent structure:

1. **Tree Encoding**: Encode tree topology as embedding
   ```
   e_τ = encode_tree(τ) = [|τ|, height(τ), bushiness(τ), ...]
   ```

2. **Coefficient Embedding**: Embed coefficient patterns
   ```
   e_coeff = embed_coefficients([b(τ₁), ..., b(τₙ)])
   ```

3. **Inverse Network**: Neural network Ψ
   ```
   s_membrane = Ψ([e_τ₁, ..., e_τₙ, e_coeff])
   ```

# Physical Interpretation

This mapping allows:

- **Perception → Reasoning**: Membrane perception states directly configure symbolic reasoning
- **Reasoning → Perception**: Tree reasoning states inform membrane organization
- **Unified Dynamics**: Both systems co-evolve through coupled parameters

# Integration with Neuro-Symbolic System

```
Observation → P-system Membranes → Latent State
                                        ↓
                                    [MAPPING Φ]
                                        ↓
                              Tree Physical Parameters
                                        ↓
                            B-series Integration → Reasoning
```

# Usage

```julia
using DeepTreeEcho.NeuroSymbolicBridge.MembraneTreeMapping

# Create mapping
mapping = create_membrane_tree_mapping(
    membrane_dim = 64,
    max_tree_order = 6,
    num_trees = 10
)

# Map membrane state to tree parameters
membrane_state = randn(64)
tree_params = map_membrane_to_tree!(mapping, membrane_state)

# Access mapped parameters
tree_selection = tree_params.tree_selection
b_coefficients = tree_params.coefficients
dynamics_params = tree_params.dynamics

# Inverse mapping
reconstructed_membrane = map_tree_to_membrane!(mapping, tree_params)
```
"""
module MembraneTreeMapping

using LinearAlgebra
using Random
using Statistics

export MembraneTreeMapper, TreePhysicalParameters, create_membrane_tree_mapping,
       map_membrane_to_tree!, map_tree_to_membrane!, update_mapping!,
       get_tree_structure_encoding, get_coefficient_pattern

########################################################################
# Core Types
########################################################################

"""
    TreePhysicalParameters

Physical parameters of B-series rooted trees derived from membrane state.
"""
mutable struct TreePhysicalParameters
    # Tree selection
    tree_selection::Vector{Float64}      # Probability distribution over trees
    active_trees::Vector{Int}            # Indices of selected trees
    
    # B-series coefficients
    coefficients::Vector{Float64}        # b(τ) for each tree
    coefficient_pattern::Vector{Float64} # Pattern in coefficient space
    
    # Dynamics parameters
    spectral_radius::Float64             # ρ for stability
    time_step::Float64                   # h for integration
    leak_rate::Float64                   # α for reservoir-like behavior
    
    # Tree structure parameters
    tree_orders::Vector{Int}             # Order of each active tree
    tree_heights::Vector{Int}            # Height of each tree
    tree_bushiness::Vector{Float64}      # Bushiness coefficient
    
    # Meta-parameters
    exploration_factor::Float64          # Controls diversity
    stability_factor::Float64            # Controls numerical stability
end

"""
    TreeStructureEncoding

Encodes rooted tree topology into feature vector for inverse mapping.
"""
struct TreeStructureEncoding
    order::Int                           # Number of nodes
    height::Int                          # Maximum depth
    bushiness::Float64                   # Average branching factor
    symmetry_factor::Int                 # σ(τ)
    level_sequence::Vector{Int}          # Level sequence representation
    embedding::Vector{Float64}           # Neural embedding of structure
end

"""
    MembraneTreeMapper

Bidirectional mapping between membrane latent states and tree physical parameters.
"""
mutable struct MembraneTreeMapper
    # Dimensions
    membrane_dim::Int                    # Dimension of membrane latent space
    max_tree_order::Int                  # Maximum tree order to consider
    num_trees::Int                       # Number of rooted trees available
    
    # Forward mapping weights (Membrane → Tree)
    W_structure::Matrix{Float64}         # For tree selection
    W_coefficients::Matrix{Float64}      # For B-series coefficients
    W_dynamics::Matrix{Float64}          # For dynamics parameters
    
    # Biases
    b_structure::Vector{Float64}
    b_coefficients::Vector{Float64}
    b_dynamics::Vector{Float64}
    
    # Inverse mapping network (Tree → Membrane)
    Ψ_encoder::Matrix{Float64}           # Tree encoding → latent
    Ψ_hidden::Matrix{Float64}            # Hidden layer
    Ψ_output::Matrix{Float64}            # Output layer
    
    # Tree database
    tree_library::Vector{Vector{Int}}    # Level sequences of available trees
    tree_encodings::Vector{TreeStructureEncoding}
    
    # Mapping statistics
    membrane_to_tree_coherence::Float64  # How well mapping preserves structure
    tree_to_membrane_coherence::Float64
    mapping_stability::Float64
    
    # Learning
    learning_rate::Float64
    regularization::Float64
end

########################################################################
# Constructors
########################################################################

"""
    TreePhysicalParameters(num_trees)

Initialize tree physical parameters with default values.
"""
function TreePhysicalParameters(num_trees::Int)
    return TreePhysicalParameters(
        ones(num_trees) / num_trees,     # Uniform distribution initially
        collect(1:min(5, num_trees)),    # First 5 trees active
        ones(num_trees) / factorial(3),  # RK-like coefficients
        zeros(10),                        # Pattern space
        0.9,                             # Safe spectral radius
        0.01,                            # Small time step
        0.3,                             # Moderate leak
        ones(Int, num_trees),            # All order 1 initially
        ones(Int, num_trees),            # All height 1
        ones(num_trees),                 # All bushiness 1
        0.1,                             # Low exploration
        0.9                              # High stability
    )
end

"""
    TreeStructureEncoding(level_sequence)

Create encoding of tree structure from level sequence.
"""
function TreeStructureEncoding(level_sequence::Vector{Int})
    order = length(level_sequence)
    height = maximum(level_sequence)
    
    # Bushiness: average branching at each level
    bushiness = 0.0
    for level in 1:(height-1)
        count_at_level = sum(level_sequence .== level)
        count_at_next = sum(level_sequence .== (level+1))
        if count_at_level > 0
            bushiness += count_at_next / count_at_level
        end
    end
    bushiness = height > 1 ? bushiness / (height - 1) : 1.0
    
    # Symmetry factor (simplified: count automorphisms approximately)
    symmetry = 1
    for level in 1:height
        count = sum(level_sequence .== level)
        symmetry *= factorial(count)
    end
    
    # Create embedding
    embedding = Float64[
        order,
        height,
        bushiness,
        symmetry,
        std(level_sequence),
        order / height  # Width-to-height ratio
    ]
    
    return TreeStructureEncoding(
        order, height, bushiness, symmetry,
        level_sequence, embedding
    )
end

"""
    create_membrane_tree_mapping(;membrane_dim, max_tree_order, num_trees)

Create bidirectional mapping between membrane states and tree parameters.
"""
function create_membrane_tree_mapping(;
    membrane_dim::Int=64,
    max_tree_order::Int=6,
    num_trees::Int=10
)
    # Initialize forward mapping weights
    W_structure = randn(num_trees, membrane_dim) * 0.1
    W_coefficients = randn(num_trees, membrane_dim) * 0.1
    W_dynamics = randn(3, membrane_dim) * 0.1  # 3 dynamics params
    
    b_structure = zeros(num_trees)
    b_coefficients = ones(num_trees) / factorial(3)  # RK-like bias
    b_dynamics = [0.9, 0.01, 0.3]  # Defaults for ρ, h, α
    
    # Initialize inverse mapping network
    embedding_dim = 6  # From TreeStructureEncoding
    Ψ_encoder = randn(32, num_trees * (embedding_dim + 1)) * 0.1  # +1 for coefficient
    Ψ_hidden = randn(32, 32) * 0.1
    Ψ_output = randn(membrane_dim, 32) * 0.1
    
    # Build tree library (simplified level sequences)
    tree_library = Vector{Vector{Int}}()
    
    # Order 1: [1]
    push!(tree_library, [1])
    
    # Order 2: [1, 2]
    if max_tree_order >= 2
        push!(tree_library, [1, 2])
    end
    
    # Order 3: [1, 2, 3], [1, 2, 2]
    if max_tree_order >= 3
        push!(tree_library, [1, 2, 3])
        push!(tree_library, [1, 2, 2])
    end
    
    # Order 4+: Add more complex trees
    for order in 4:max_tree_order
        # Linear chain
        push!(tree_library, collect(1:order))
        # Bushy tree
        if order >= 4
            bushy = vcat([1, 2], fill(3, order-2))
            push!(tree_library, bushy)
        end
    end
    
    # Pad to num_trees
    while length(tree_library) < num_trees
        # Generate random tree
        order = rand(1:max_tree_order)
        tree = [1]
        for i in 2:order
            parent_level = rand(tree)
            push!(tree, parent_level + 1)
        end
        push!(tree_library, tree)
    end
    
    # Truncate if too many
    tree_library = tree_library[1:num_trees]
    
    # Create encodings
    tree_encodings = [TreeStructureEncoding(tree) for tree in tree_library]
    
    return MembraneTreeMapper(
        membrane_dim,
        max_tree_order,
        num_trees,
        W_structure, W_coefficients, W_dynamics,
        b_structure, b_coefficients, b_dynamics,
        Ψ_encoder, Ψ_hidden, Ψ_output,
        tree_library,
        tree_encodings,
        1.0, 1.0, 1.0,
        0.01,
        0.001
    )
end

########################################################################
# Forward Mapping: Membrane → Tree
########################################################################

"""
    map_membrane_to_tree!(mapper, membrane_state)

Map membrane latent state to tree physical parameters (forward mapping).
"""
function map_membrane_to_tree!(
    mapper::MembraneTreeMapper,
    membrane_state::Vector{Float64}
)
    # Ensure correct dimension
    if length(membrane_state) != mapper.membrane_dim
        # Pad or truncate
        if length(membrane_state) < mapper.membrane_dim
            membrane_state = vcat(membrane_state, 
                                 zeros(mapper.membrane_dim - length(membrane_state)))
        else
            membrane_state = membrane_state[1:mapper.membrane_dim]
        end
    end
    
    # 1. Tree Selection: softmax(W_structure · s + b)
    logits_structure = mapper.W_structure * membrane_state + mapper.b_structure
    tree_selection = softmax(logits_structure)
    
    # Select top-k active trees
    k = min(5, mapper.num_trees)
    active_trees = sortperm(tree_selection, rev=true)[1:k]
    
    # 2. B-series Coefficients: sigmoid(W_coeff · s + b)
    logits_coeff = mapper.W_coefficients * membrane_state + mapper.b_coefficients
    coefficients = sigmoid.(logits_coeff)
    
    # Normalize coefficients to sum to reasonable value
    coefficients = coefficients ./ sum(coefficients[active_trees]) * length(active_trees)
    
    # 3. Dynamics Parameters
    dynamics_logits = mapper.W_dynamics * membrane_state + mapper.b_dynamics
    
    # Spectral radius: ρ ∈ [0.5, 1.2]
    spectral_radius = 0.5 + 0.7 * sigmoid(dynamics_logits[1])
    
    # Time step: h ∈ [0.001, 0.1]
    time_step = 0.001 + 0.099 * sigmoid(dynamics_logits[2])
    
    # Leak rate: α ∈ [0.1, 0.9]
    leak_rate = 0.1 + 0.8 * sigmoid(dynamics_logits[3])
    
    # 4. Extract tree structure parameters
    tree_orders = [length(mapper.tree_library[i]) for i in active_trees]
    tree_heights = [mapper.tree_encodings[i].height for i in active_trees]
    tree_bushiness = [mapper.tree_encodings[i].bushiness for i in active_trees]
    
    # 5. Meta-parameters from membrane state statistics
    exploration_factor = std(membrane_state)
    stability_factor = 1.0 / (1.0 + abs(mean(membrane_state)))
    
    # 6. Coefficient pattern (PCA-like projection)
    coefficient_pattern = coefficients[1:min(10, length(coefficients))]
    if length(coefficient_pattern) < 10
        coefficient_pattern = vcat(coefficient_pattern, 
                                  zeros(10 - length(coefficient_pattern)))
    end
    
    # Create and return parameters
    params = TreePhysicalParameters(mapper.num_trees)
    params.tree_selection = tree_selection
    params.active_trees = active_trees
    params.coefficients = coefficients
    params.coefficient_pattern = coefficient_pattern
    params.spectral_radius = spectral_radius
    params.time_step = time_step
    params.leak_rate = leak_rate
    params.tree_orders = tree_orders
    params.tree_heights = tree_heights
    params.tree_bushiness = tree_bushiness
    params.exploration_factor = exploration_factor
    params.stability_factor = stability_factor
    
    return params
end

########################################################################
# Inverse Mapping: Tree → Membrane
########################################################################

"""
    map_tree_to_membrane!(mapper, tree_params)

Map tree physical parameters back to membrane latent state (inverse mapping).
"""
function map_tree_to_membrane!(
    mapper::MembraneTreeMapper,
    tree_params::TreePhysicalParameters
)
    # Encode tree information as feature vector
    features = Float64[]
    
    # Add tree structure encodings and coefficients
    for i in 1:mapper.num_trees
        # Tree structure embedding
        append!(features, mapper.tree_encodings[i].embedding)
        
        # Coefficient for this tree
        push!(features, tree_params.coefficients[i])
    end
    
    # Ensure correct dimension
    expected_dim = mapper.num_trees * 7  # 6 from embedding + 1 coefficient
    if length(features) < expected_dim
        append!(features, zeros(expected_dim - length(features)))
    elseif length(features) > expected_dim
        features = features[1:expected_dim]
    end
    
    # Pass through inverse network
    # Layer 1: Encoder
    h1 = tanh.(mapper.Ψ_encoder * features)
    
    # Layer 2: Hidden
    h2 = tanh.(mapper.Ψ_hidden * h1)
    
    # Layer 3: Output
    membrane_state = mapper.Ψ_output * h2
    
    return membrane_state
end

########################################################################
# Mapping Update and Learning
########################################################################

"""
    update_mapping!(mapper, membrane_state, tree_params, learning_signal)

Update mapping weights based on consistency between forward and inverse mappings.
"""
function update_mapping!(
    mapper::MembraneTreeMapper,
    membrane_state::Vector{Float64},
    tree_params::TreePhysicalParameters,
    learning_signal::Float64=1.0
)
    # Forward-inverse consistency loss
    # membrane → tree → membrane'
    reconstructed_membrane = map_tree_to_membrane!(mapper, tree_params)
    forward_inverse_error = norm(membrane_state - reconstructed_membrane)
    
    # Inverse-forward consistency loss
    # tree → membrane' → tree'
    reconstructed_params = map_membrane_to_tree!(mapper, reconstructed_membrane)
    inverse_forward_error = norm(tree_params.coefficients - reconstructed_params.coefficients)
    
    # Update coherence metrics
    mapper.membrane_to_tree_coherence = exp(-forward_inverse_error)
    mapper.tree_to_membrane_coherence = exp(-inverse_forward_error)
    mapper.mapping_stability = (mapper.membrane_to_tree_coherence + 
                               mapper.tree_to_membrane_coherence) / 2
    
    # Gradient-based update (simplified - would use autodiff in production)
    if learning_signal > 0 && forward_inverse_error > 0.1
        # Update inverse network to reduce reconstruction error
        error_gradient = (reconstructed_membrane - membrane_state) * mapper.learning_rate
        
        # L2 regularization
        mapper.Ψ_output .-= mapper.regularization * mapper.Ψ_output
        mapper.Ψ_hidden .-= mapper.regularization * mapper.Ψ_hidden
        
        # Simple gradient descent (in practice, would compute proper gradients)
        mapper.Ψ_output .-= error_gradient * reconstructed_membrane'
    end
    
    return mapper.mapping_stability
end

########################################################################
# Utility Functions
########################################################################

"""Softmax activation"""
function softmax(x::Vector{Float64})
    ex = exp.(x .- maximum(x))
    return ex ./ sum(ex)
end

"""Sigmoid activation"""
function sigmoid(x::Float64)
    return 1.0 / (1.0 + exp(-x))
end

"""
    get_tree_structure_encoding(mapper, tree_index)

Get structure encoding for a specific tree in the library.
"""
function get_tree_structure_encoding(mapper::MembraneTreeMapper, tree_index::Int)
    return mapper.tree_encodings[tree_index]
end

"""
    get_coefficient_pattern(tree_params)

Extract pattern from B-series coefficients.
"""
function get_coefficient_pattern(tree_params::TreePhysicalParameters)
    return tree_params.coefficient_pattern
end

"""
    apply_tree_parameters!(reasoning, tree_params)

Apply mapped tree parameters to symbolic reasoning system.
"""
function apply_tree_parameters!(reasoning, tree_params::TreePhysicalParameters)
    # Update active trees
    reasoning.trees = reasoning.trees[tree_params.active_trees]
    
    # Update coefficients
    reasoning.coefficients = tree_params.coefficients[tree_params.active_trees]
    
    # Update dynamics parameters (if reasoning system supports them)
    # This would integrate with the existing SymbolicReasoning struct
    
    return reasoning
end

end # module MembraneTreeMapping
