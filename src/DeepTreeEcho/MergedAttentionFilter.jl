"""
    MergedAttentionFilter

Non-linear Kalman filter with merged attention mechanism for fusing 
observations with simulated predictions from the world model.

# Concept

The merged attention filter implements:

1. **Observation Stream**: Real sensory data from environment
2. **Simulation Stream**: Predicted observations from world model
3. **Attention Mechanism**: Learned weights balancing observation vs simulation
4. **Non-Linear Kalman**: Extended Kalman Filter (EKF) or Unscented Kalman Filter (UKF)

# Mathematical Foundation

## Attention-Weighted Observation

```
z_merged = α·z_obs + (1-α)·z_sim
```

Where:
- z_obs: Real observation from sensors
- z_sim: Simulated observation from world model
- α: Attention weight (learned based on prediction confidence)

## Non-Linear Kalman Update

Extended Kalman Filter (EKF):
```
Predict:
  x̂⁻ = f(x̂, u)
  P⁻ = F·P·F' + Q

Update:
  K = P⁻·H'·(H·P⁻·H' + R)⁻¹
  x̂ = x̂⁻ + K·(z_merged - h(x̂⁻))
  P = (I - K·H)·P⁻
```

Where:
- f(x,u): Non-linear state transition function
- h(x): Non-linear observation function
- F: Jacobian of f
- H: Jacobian of h
- K: Kalman gain

## Attention Learning

Attention weight α is computed based on:
```
α = σ(w_α · [prediction_confidence, observation_quality, innovation_magnitude])
```

This allows the system to:
- Trust observations more when world model is uncertain
- Trust simulation more when observations are noisy
- Adapt attention dynamically based on context

# Integration with Active Inference

The merged attention filter naturally integrates with active inference:

- **Prediction Error**: innovation = z_merged - h(x̂⁻)
- **Free Energy**: F includes both observation and simulation terms
- **Action Selection**: Choose actions to minimize prediction error

# Usage

```julia
using DeepTreeEcho.NeuroSymbolicBridge
using DeepTreeEcho.NeuroSymbolicBridge.MergedAttentionFilter

# Create filter
filter = create_merged_attention_filter(
    state_dim = 128,
    obs_dim = 64,
    filter_type = :ekf  # or :ukf
)

# Process observation
observation = randn(64)
simulation = world_model_prediction(state)

# Merge with attention
merged_obs, attention_weight = merge_with_attention!(filter, observation, simulation)

# Kalman update
updated_state = kalman_update!(filter, merged_obs, control_input)
```
"""
module MergedAttentionFilter

using LinearAlgebra
using Random
using Statistics

export MergedAttentionKalmanFilter, create_merged_attention_filter,
       merge_with_attention!, kalman_predict!, kalman_update!,
       compute_attention_weight, get_innovation, get_filter_state

########################################################################
# Core Types
########################################################################

"""
    AttentionMechanism

Learns optimal weighting between observation and simulation based on 
prediction confidence, observation quality, and innovation magnitude.
"""
mutable struct AttentionMechanism
    # Attention network weights
    weights::Vector{Float64}           # w_α for attention computation
    bias::Float64                      # Bias term
    
    # Attention statistics
    attention_history::Vector{Float64} # Historical attention weights
    observation_quality::Float64       # Estimated observation SNR
    prediction_confidence::Float64     # World model certainty
    
    # Learning parameters
    learning_rate::Float64
    momentum::Float64
    velocity::Vector{Float64}          # For momentum-based updates
end

"""
    NonLinearKalmanFilter

Extended Kalman Filter (EKF) or Unscented Kalman Filter (UKF) for
non-linear state estimation with merged attention.
"""
mutable struct NonLinearKalmanFilter
    # Filter type
    filter_type::Symbol                # :ekf or :ukf
    
    # State
    state::Vector{Float64}             # x̂
    covariance::Matrix{Float64}        # P
    
    # Dimensions
    state_dim::Int                     # n
    obs_dim::Int                       # m
    
    # Noise covariances
    process_noise::Matrix{Float64}     # Q
    measurement_noise::Matrix{Float64} # R
    
    # Functions (for EKF)
    state_transition::Function         # f(x, u)
    observation_model::Function        # h(x)
    
    # Jacobians (computed or provided)
    jacobian_F::Union{Matrix{Float64}, Nothing}  # ∂f/∂x
    jacobian_H::Union{Matrix{Float64}, Nothing}  # ∂h/∂x
    
    # Innovation (prediction error)
    innovation::Vector{Float64}        # z - h(x̂⁻)
    innovation_covariance::Matrix{Float64} # S = H·P⁻·H' + R
    
    # Kalman gain
    kalman_gain::Matrix{Float64}       # K
    
    # Statistics
    log_likelihood::Float64
    normalized_innovation::Float64
end

"""
    MergedAttentionKalmanFilter

Complete system integrating attention mechanism with non-linear Kalman filter
for optimal fusion of observations and simulations.
"""
mutable struct MergedAttentionKalmanFilter
    # Core components
    attention::AttentionMechanism
    kalman::NonLinearKalmanFilter
    
    # Merged observation
    merged_observation::Vector{Float64}
    raw_observation::Vector{Float64}
    simulated_observation::Vector{Float64}
    current_attention_weight::Float64  # α
    
    # Integration statistics
    observation_simulation_divergence::Float64
    filter_consistency::Float64
    attention_stability::Float64
    
    # Timestep
    time::Float64
    step_count::Int
end

########################################################################
# Constructors
########################################################################

"""
    AttentionMechanism(input_dim)

Create attention mechanism for learning observation vs simulation weighting.
"""
function AttentionMechanism(input_dim::Int=3)
    return AttentionMechanism(
        randn(input_dim) .* 0.1,  # Small random initialization
        0.0,                       # No bias initially
        Float64[],                 # Empty history
        1.0,                       # Assume good observation quality
        0.5,                       # Medium prediction confidence
        0.01,                      # Learning rate
        0.9,                       # Momentum coefficient
        zeros(input_dim)           # Velocity for momentum
    )
end

"""
    NonLinearKalmanFilter(state_dim, obs_dim; filter_type=:ekf)

Create non-linear Kalman filter (EKF or UKF).
"""
function NonLinearKalmanFilter(state_dim::Int, obs_dim::Int; 
                               filter_type::Symbol=:ekf)
    # Default state transition: nearly identity with small drift
    f_default(x, u) = 0.99 * x + 0.01 * u
    
    # Default observation model: linear projection
    h_default(x) = x[1:min(obs_dim, length(x))]
    
    return NonLinearKalmanFilter(
        filter_type,
        zeros(state_dim),
        Matrix{Float64}(I, state_dim, state_dim),
        state_dim,
        obs_dim,
        Matrix{Float64}(I, state_dim, state_dim) * 0.01,  # Small process noise
        Matrix{Float64}(I, obs_dim, obs_dim) * 0.1,       # Moderate measurement noise
        f_default,
        h_default,
        nothing,
        nothing,
        zeros(obs_dim),
        Matrix{Float64}(I, obs_dim, obs_dim),
        zeros(obs_dim, state_dim),
        0.0,
        0.0
    )
end

"""
    create_merged_attention_filter(;state_dim, obs_dim, filter_type=:ekf)

Create complete merged attention Kalman filter system.
"""
function create_merged_attention_filter(;
    state_dim::Int=128,
    obs_dim::Int=64,
    filter_type::Symbol=:ekf
)
    attention = AttentionMechanism(3)  # 3 input features
    kalman = NonLinearKalmanFilter(state_dim, obs_dim, filter_type=filter_type)
    
    return MergedAttentionKalmanFilter(
        attention,
        kalman,
        zeros(obs_dim),
        zeros(obs_dim),
        zeros(obs_dim),
        0.5,  # Initial α = 0.5 (balanced)
        0.0,
        1.0,
        1.0,
        0.0,
        0
    )
end

########################################################################
# Attention Computation
########################################################################

"""
    compute_attention_weight(attention, prediction_confidence, 
                           observation_quality, innovation_magnitude)

Compute attention weight α ∈ [0,1] balancing observation vs simulation.

Higher α → Trust observation more
Lower α → Trust simulation more
"""
function compute_attention_weight(
    attention::AttentionMechanism,
    prediction_confidence::Float64,
    observation_quality::Float64,
    innovation_magnitude::Float64
)
    # Feature vector
    features = [
        prediction_confidence,      # High confidence → trust simulation
        observation_quality,        # High quality → trust observation
        innovation_magnitude        # High innovation → trust observation
    ]
    
    # Linear combination
    logit = dot(attention.weights, features) + attention.bias
    
    # Sigmoid for α ∈ [0,1]
    α = 1.0 / (1.0 + exp(-logit))
    
    # Clamp to safe range
    α = clamp(α, 0.01, 0.99)
    
    return α
end

"""
    merge_with_attention!(filter, observation, simulation)

Merge real observation with simulated prediction using learned attention weight.

Returns (merged_observation, attention_weight)
"""
function merge_with_attention!(
    filter::MergedAttentionKalmanFilter,
    observation::Vector{Float64},
    simulation::Vector{Float64}
)
    # Store raw inputs
    filter.raw_observation = copy(observation)
    filter.simulated_observation = copy(simulation)
    
    # Compute attention features
    pred_conf = filter.attention.prediction_confidence
    obs_qual = filter.attention.observation_quality
    innov_mag = norm(filter.kalman.innovation) / (norm(observation) + 1e-10)
    
    # Compute attention weight
    α = compute_attention_weight(filter.attention, pred_conf, obs_qual, innov_mag)
    filter.current_attention_weight = α
    
    # Merge observations
    obs_dim = min(length(observation), length(simulation))
    filter.merged_observation = α * observation[1:obs_dim] + 
                               (1 - α) * simulation[1:obs_dim]
    
    # Update attention history
    push!(filter.attention.attention_history, α)
    
    # Compute divergence between observation and simulation
    filter.observation_simulation_divergence = norm(observation[1:obs_dim] - 
                                                   simulation[1:obs_dim])
    
    return filter.merged_observation, α
end

########################################################################
# Kalman Filter Operations
########################################################################

"""
    kalman_predict!(filter, control_input)

Prediction step of Kalman filter: propagate state and covariance.
"""
function kalman_predict!(
    filter::MergedAttentionKalmanFilter,
    control_input::Vector{Float64}=Float64[]
)
    kalman = filter.kalman
    
    # Handle control input dimension
    u = isempty(control_input) ? zeros(kalman.state_dim) : control_input
    if length(u) < kalman.state_dim
        u = vcat(u, zeros(kalman.state_dim - length(u)))
    elseif length(u) > kalman.state_dim
        u = u[1:kalman.state_dim]
    end
    
    # Predict state: x̂⁻ = f(x̂, u)
    predicted_state = kalman.state_transition(kalman.state, u)
    
    # Compute Jacobian F if using EKF and not provided
    if kalman.filter_type == :ekf && isnothing(kalman.jacobian_F)
        # Numerical Jacobian (finite differences)
        F = compute_jacobian(kalman.state_transition, kalman.state, u)
        kalman.jacobian_F = F
    end
    
    # Predict covariance: P⁻ = F·P·F' + Q
    if kalman.filter_type == :ekf && !isnothing(kalman.jacobian_F)
        F = kalman.jacobian_F
        kalman.covariance = F * kalman.covariance * F' + kalman.process_noise
    else
        # Simplified prediction for UKF or when Jacobian not available
        kalman.covariance = 0.99 * kalman.covariance + kalman.process_noise
    end
    
    # Update state
    kalman.state = predicted_state
    
    # Ensure covariance stays positive definite
    kalman.covariance = 0.5 * (kalman.covariance + kalman.covariance')
    kalman.covariance += Matrix{Float64}(I, kalman.state_dim, kalman.state_dim) * 1e-6
    
    return kalman.state
end

"""
    kalman_update!(filter, merged_observation)

Update step of Kalman filter: correct prediction with merged observation.
"""
function kalman_update!(
    filter::MergedAttentionKalmanFilter,
    merged_observation::Vector{Float64}
)
    kalman = filter.kalman
    
    # Predicted observation: ẑ = h(x̂⁻)
    predicted_obs = kalman.observation_model(kalman.state)
    
    # Ensure dimensions match
    obs_dim = min(length(merged_observation), length(predicted_obs))
    z = merged_observation[1:obs_dim]
    ẑ = predicted_obs[1:obs_dim]
    
    # Innovation: ν = z - ẑ
    kalman.innovation = z - ẑ
    
    # Compute Jacobian H if using EKF and not provided
    if kalman.filter_type == :ekf && isnothing(kalman.jacobian_H)
        H = compute_observation_jacobian(kalman.observation_model, kalman.state, obs_dim)
        kalman.jacobian_H = H
    end
    
    # Innovation covariance: S = H·P⁻·H' + R
    if kalman.filter_type == :ekf && !isnothing(kalman.jacobian_H)
        H = kalman.jacobian_H
        kalman.innovation_covariance = H * kalman.covariance * H' + 
                                      kalman.measurement_noise[1:obs_dim, 1:obs_dim]
    else
        # Simplified for UKF or when Jacobian not available
        kalman.innovation_covariance = kalman.covariance[1:obs_dim, 1:obs_dim] + 
                                      kalman.measurement_noise[1:obs_dim, 1:obs_dim]
    end
    
    # Kalman gain: K = P⁻·H'·S⁻¹
    if kalman.filter_type == :ekf && !isnothing(kalman.jacobian_H)
        H = kalman.jacobian_H
        kalman.kalman_gain = kalman.covariance * H' * 
                            inv(kalman.innovation_covariance + Matrix{Float64}(I, obs_dim, obs_dim) * 1e-6)
    else
        # Simplified gain
        kalman.kalman_gain = kalman.covariance[1:kalman.state_dim, 1:obs_dim] * 
                            inv(kalman.innovation_covariance + Matrix{Float64}(I, obs_dim, obs_dim) * 1e-6)
    end
    
    # Update state: x̂ = x̂⁻ + K·ν
    kalman.state = kalman.state + kalman.kalman_gain * kalman.innovation
    
    # Update covariance: P = (I - K·H)·P⁻
    if kalman.filter_type == :ekf && !isnothing(kalman.jacobian_H)
        H = kalman.jacobian_H
        IKH = Matrix{Float64}(I, kalman.state_dim, kalman.state_dim) - kalman.kalman_gain * H
        kalman.covariance = IKH * kalman.covariance
    else
        # Simplified update
        kalman.covariance = 0.95 * kalman.covariance
    end
    
    # Ensure covariance stays positive definite
    kalman.covariance = 0.5 * (kalman.covariance + kalman.covariance')
    kalman.covariance += Matrix{Float64}(I, kalman.state_dim, kalman.state_dim) * 1e-6
    
    # Compute normalized innovation (Mahalanobis distance)
    kalman.normalized_innovation = sqrt(dot(kalman.innovation, 
                                           inv(kalman.innovation_covariance + I*1e-6) * 
                                           kalman.innovation))
    
    # Update filter statistics
    filter.filter_consistency = 1.0 / (1.0 + kalman.normalized_innovation)
    
    # Update prediction confidence based on innovation
    filter.attention.prediction_confidence = exp(-0.1 * kalman.normalized_innovation)
    
    # Compute attention stability (variance of recent attention weights)
    if length(filter.attention.attention_history) >= 10
        recent = filter.attention.attention_history[end-9:end]
        filter.attention_stability = 1.0 / (1.0 + std(recent))
    end
    
    filter.step_count += 1
    
    return kalman.state
end

########################################################################
# Utility Functions
########################################################################

"""
    compute_jacobian(f, x, u; ε=1e-6)

Compute Jacobian of f(x,u) with respect to x using finite differences.
"""
function compute_jacobian(f::Function, x::Vector{Float64}, u::Vector{Float64}; ε::Float64=1e-6)
    n = length(x)
    fx = f(x, u)
    m = length(fx)
    
    J = zeros(m, n)
    for i in 1:n
        x_plus = copy(x)
        x_plus[i] += ε
        J[:, i] = (f(x_plus, u) - fx) / ε
    end
    
    return J
end

"""
    compute_observation_jacobian(h, x, obs_dim; ε=1e-6)

Compute Jacobian of h(x) with respect to x.
"""
function compute_observation_jacobian(h::Function, x::Vector{Float64}, obs_dim::Int; ε::Float64=1e-6)
    n = length(x)
    hx = h(x)
    m = min(obs_dim, length(hx))
    
    H = zeros(m, n)
    for i in 1:n
        x_plus = copy(x)
        x_plus[i] += ε
        hx_plus = h(x_plus)
        H[:, i] = (hx_plus[1:m] - hx[1:m]) / ε
    end
    
    return H
end

"""
    update_attention_weights!(filter, target_α)

Update attention mechanism weights based on target attention value.
"""
function update_attention_weights!(
    filter::MergedAttentionKalmanFilter,
    target_α::Float64
)
    attention = filter.attention
    
    # Compute gradient (simplified)
    current_α = filter.current_attention_weight
    error = target_α - current_α
    
    # Gradient w.r.t. logit (derivative of sigmoid)
    dα_dlogit = current_α * (1 - current_α)
    
    # Feature vector
    features = [
        attention.prediction_confidence,
        attention.observation_quality,
        norm(filter.kalman.innovation)
    ]
    
    # Gradient w.r.t. weights
    gradient = error * dα_dlogit * features
    
    # Momentum update
    attention.velocity = attention.momentum * attention.velocity + 
                        attention.learning_rate * gradient
    
    # Update weights
    attention.weights += attention.velocity
end

"""
    get_innovation(filter)

Get current innovation (prediction error) from filter.
"""
function get_innovation(filter::MergedAttentionKalmanFilter)
    return filter.kalman.innovation
end

"""
    get_filter_state(filter)

Get complete filter state including attention and Kalman components.
"""
function get_filter_state(filter::MergedAttentionKalmanFilter)
    return Dict(
        :state => filter.kalman.state,
        :covariance => filter.kalman.covariance,
        :attention_weight => filter.current_attention_weight,
        :innovation => filter.kalman.innovation,
        :normalized_innovation => filter.kalman.normalized_innovation,
        :filter_consistency => filter.filter_consistency,
        :attention_stability => filter.attention_stability,
        :obs_sim_divergence => filter.observation_simulation_divergence
    )
end

end # module MergedAttentionFilter
