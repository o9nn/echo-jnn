"""
    NeuroSymbolicBridge

Neuro-Symbolic Architecture integrating neural perception with symbolic reasoning
through a unified world model driven by active inference and morphogenetic self-assembly.

# Architecture

The neuro-symbolic bridge unifies three fundamental aspects:

1. **Neural Perception**: P-system nested membrane reservoirs as learnable feature embeddings
   - Deep aspect of Deep Tree Echo
   - Hierarchical perception through membrane layers
   - Learnable embeddings like vision encoders

2. **Symbolic Reasoning**: B-series rooted forest ridges as differentiable trajectories
   - Tree aspect of Deep Tree Echo
   - Physics engine solving differential equations
   - Behavior trees for specialized reasoning

3. **World Model**: Predictive engine unifying both aspects
   - Active inference for self-assembly
   - Generative diffusion grounded in reality
   - Relevance realization through opponent processing
   - Echo-state resonance for cognitive synergy

# Mathematical Foundation

## Unified Dynamics

```
∂ψ/∂t = P(ψ) + S(ψ) + W(ψ, F)
```

Where:
- **P(ψ)**: Neural perception (membrane reservoir embeddings)
- **S(ψ)**: Symbolic reasoning (B-series differential trajectories)
- **W(ψ, F)**: World model prediction (morphogenetic field F)

## Active Inference

The system minimizes free energy:

```
F = D_KL[q(s|o) || p(s)] - E_q[log p(o|s)]
```

Where:
- **q(s|o)**: Recognition model (perception → symbolic)
- **p(s)**: Prior beliefs (world model)
- **p(o|s)**: Generative model (symbolic → perception)

## Morphogenetic Field

Self-assembly through gradient following:

```
∇F(x) = Σ_i w_i · φ_i(x)
```

Where φ_i are morphogen concentrations at position x.

# Usage

```julia
using DeepTreeEcho.NeuroSymbolicBridge

# Create neuro-symbolic system
system = NeuroSymbolicSystem(
    perception_depth = 4,    # Membrane nesting depth
    reasoning_order = 6,     # B-series tree order
    world_model_dim = 128    # Latent world state dimension
)

# Initialize with morphogenetic field
initialize_morphogenetic!(system, seed_pattern=:spiral)

# Process through perception-reasoning loop
observation = randn(64)
perception = perceive!(system, observation)
reasoning = reason!(system, perception)
prediction = predict!(system, reasoning)

# Active inference step
action = infer_action!(system, prediction, observation)

# Self-assembly through morphogenesis
evolve_morphogenetic!(system, generations=10)
```
"""
module NeuroSymbolicBridge

using LinearAlgebra
using Random
using Statistics

export NeuroSymbolicSystem, NeuralPerception, SymbolicReasoning, WorldModel,
       ActiveInferenceEngine, MorphogeneticField, RelevanceRealizationUnit,
       perceive!, reason!, predict!, infer_action!, evolve_morphogenetic!,
       create_neuro_symbolic_system, initialize_morphogenetic!

########################################################################
# Core Types
########################################################################

"""
    NeuralPerception

Neural perception layer using P-system membrane reservoirs as learnable embeddings.
The "deep" aspect of Deep Tree Echo - nested membranes evolve like feature embeddings.
"""
mutable struct NeuralPerception
    # Membrane hierarchy
    depth::Int                              # Nesting depth
    membrane_sizes::Vector{Int}             # Size of each membrane level
    membrane_states::Vector{Matrix{Float64}} # State of each membrane
    
    # Learnable embedding weights
    embedding_weights::Vector{Matrix{Float64}}
    
    # P-system evolution rules
    evolution_rules::Vector{Dict}
    
    # Perception statistics
    activation_history::Vector{Vector{Float64}}
    feature_entropy::Float64
end

"""
    SymbolicReasoning

Symbolic reasoning engine using B-series rooted forest ridges as differentiable
behavior trees. The "tree" aspect of Deep Tree Echo - rooted forests resolve
Runge-Kutta gradient descent as specialized trajectories.
"""
mutable struct SymbolicReasoning
    # B-series structure
    order::Int                              # Maximum tree order
    trees::Vector{Vector{Int}}              # Rooted tree level sequences
    coefficients::Vector{Float64}           # B-series coefficients b(τ)
    
    # Differential equation solver
    vector_field::Union{Function, Nothing}  # f(y) for dy/dt = f(y)
    trajectory_state::Vector{Float64}       # Current trajectory point
    
    # Behavior tree nodes
    behavior_nodes::Vector{Dict}
    decision_thresholds::Vector{Float64}
    
    # Reasoning statistics
    trajectory_history::Vector{Vector{Float64}}
    decision_entropy::Float64
end

"""
    WorldModel

Predictive world model unifying perception and reasoning through generative modeling
and temporal prediction. Grounds diffusion in proven reality.
"""
mutable struct WorldModel
    # Latent world state
    dimension::Int
    state::Vector{Float64}
    state_covariance::Matrix{Float64}
    
    # Generative model: state → observation
    generative_weights::Matrix{Float64}
    
    # Recognition model: observation → state
    recognition_weights::Matrix{Float64}
    
    # Temporal prediction
    transition_model::Matrix{Float64}       # A in s_{t+1} = A·s_t
    process_noise::Matrix{Float64}          # Q in covariance
    
    # Prediction statistics
    prediction_error::Float64
    temporal_coherence::Float64
end

"""
    ActiveInferenceEngine

Active inference mechanism minimizing free energy to drive action selection
and self-assembly through morphogenesis.
"""
mutable struct ActiveInferenceEngine
    # Free energy components
    complexity::Float64                     # D_KL[q(s|o) || p(s)]
    accuracy::Float64                       # E_q[log p(o|s)]
    free_energy::Float64                    # F = complexity - accuracy
    
    # Action selection
    action_dim::Int
    action_precision::Float64               # Inverse temperature
    expected_free_energy::Vector{Float64}   # G(a) for each action
    
    # Inference statistics
    inference_history::Vector{Float64}
    convergence_criterion::Float64
end

"""
    MorphogeneticField

Morphogenetic field for self-assembly and pattern formation through
gradient-driven spatial organization.
"""
mutable struct MorphogeneticField
    # Spatial grid
    grid_size::Tuple{Int, Int, Int}         # 3D spatial grid
    morphogen_concentrations::Array{Float64, 4}  # (x, y, z, morphogen_type)
    
    # Field dynamics
    diffusion_rates::Vector{Float64}
    decay_rates::Vector{Float64}
    production_rules::Vector{Function}
    
    # Self-assembly patterns
    pattern_type::Symbol                    # :spiral, :waves, :turing, etc.
    organization_metric::Float64            # Measures assembly quality
end

"""
    RelevanceRealizationUnit

Relevance realization through opponent processing - echo-state resonance
that identifies salient patterns through cognitive synergy.
"""
mutable struct RelevanceRealizationUnit
    # Opponent processing channels
    channel_positive::Vector{Float64}       # Enhancement channel
    channel_negative::Vector{Float64}       # Suppression channel
    
    # Resonance detection
    resonance_frequencies::Vector{Float64}
    resonance_amplitudes::Vector{Float64}
    
    # Salience computation
    salience_map::Vector{Float64}
    attention_weights::Vector{Float64}
    
    # Cognitive synergy metrics
    synergy_coefficient::Float64
    relevance_threshold::Float64
end

"""
    NeuroSymbolicSystem

Complete neuro-symbolic architecture integrating perception, reasoning, and world
modeling through active inference and morphogenetic self-assembly.
"""
mutable struct NeuroSymbolicSystem
    # Core components
    perception::NeuralPerception
    reasoning::SymbolicReasoning
    world_model::WorldModel
    
    # Integration mechanisms
    active_inference::ActiveInferenceEngine
    morphogenetic_field::MorphogeneticField
    relevance_realization::RelevanceRealizationUnit
    
    # System state
    time::Float64
    generation::Int
    
    # Integration statistics
    perception_reasoning_coupling::Float64
    nomological_balance::Float64            # Balance between past and future
    cognitive_synergy::Float64
end

########################################################################
# Constructors
########################################################################

"""
    NeuralPerception(depth, input_dim)

Create neural perception layer with specified membrane depth.
"""
function NeuralPerception(depth::Int, input_dim::Int)
    # Membrane sizes decrease with depth (hierarchical abstraction)
    membrane_sizes = [input_dim ÷ (2^(i-1)) for i in 1:depth]
    
    # Initialize membrane states
    membrane_states = [zeros(size, size) for size in membrane_sizes]
    
    # Initialize embedding weights (learnable)
    embedding_weights = [randn(membrane_sizes[i], 
                               i < depth ? membrane_sizes[i+1] : membrane_sizes[i]) 
                        for i in 1:depth]
    
    # Simple evolution rules (P-system style)
    evolution_rules = [Dict(:type => :linear, :rate => 0.1) for _ in 1:depth]
    
    return NeuralPerception(
        depth, membrane_sizes, membrane_states,
        embedding_weights, evolution_rules,
        Vector{Vector{Float64}}(), 0.0
    )
end

"""
    SymbolicReasoning(order)

Create symbolic reasoning engine with B-series trees up to specified order.
"""
function SymbolicReasoning(order::Int)
    # Generate rooted trees (simplified level sequences)
    trees = Vector{Vector{Int}}()
    
    # Order 1: [1]
    push!(trees, [1])
    
    # Order 2: [1, 2]
    if order >= 2
        push!(trees, [1, 2])
    end
    
    # Order 3: [1, 2, 3], [1, 2, 2]
    if order >= 3
        push!(trees, [1, 2, 3])
        push!(trees, [1, 2, 2])
    end
    
    # Order 4+: Add more complex trees
    for o in 4:order
        # Simplified: linear chain
        push!(trees, collect(1:o))
        # Bushy tree
        if o >= 4
            push!(trees, [1, 2, 2, 3])
        end
    end
    
    # Initialize B-series coefficients (RK4-like)
    num_trees = length(trees)
    coefficients = ones(num_trees) ./ factorial(order)
    
    return SymbolicReasoning(
        order, trees, coefficients,
        nothing, zeros(10),  # Default 10D state space
        Vector{Dict}(), Float64[],
        Vector{Vector{Float64}}(), 0.0
    )
end

"""
    WorldModel(dimension, obs_dim)

Create world model with specified latent dimension and observation dimension.
"""
function WorldModel(dimension::Int, obs_dim::Int)
    return WorldModel(
        dimension,
        zeros(dimension),
        Matrix{Float64}(I, dimension, dimension),
        randn(obs_dim, dimension) .* 0.1,  # Generative weights
        randn(dimension, obs_dim) .* 0.1,  # Recognition weights
        Matrix{Float64}(I, dimension, dimension) .* 0.99,  # Stable dynamics
        Matrix{Float64}(I, dimension, dimension) .* 0.01,  # Small noise
        0.0, 1.0
    )
end

"""
    ActiveInferenceEngine(action_dim)

Create active inference engine for action selection.
"""
function ActiveInferenceEngine(action_dim::Int)
    return ActiveInferenceEngine(
        0.0, 0.0, 0.0,
        action_dim, 1.0,
        zeros(action_dim),
        Vector{Float64}(),
        1e-3
    )
end

"""
    MorphogeneticField(grid_size, num_morphogens)

Create morphogenetic field for self-assembly.
"""
function MorphogeneticField(grid_size::Tuple{Int,Int,Int}, num_morphogens::Int=3)
    return MorphogeneticField(
        grid_size,
        zeros(grid_size..., num_morphogens),
        ones(num_morphogens) .* 0.1,   # Diffusion rates
        ones(num_morphogens) .* 0.05,  # Decay rates
        [x -> 0.0 for _ in 1:num_morphogens],  # Production rules
        :none,
        0.0
    )
end

"""
    RelevanceRealizationUnit(dimension)

Create relevance realization unit with opponent processing.
"""
function RelevanceRealizationUnit(dimension::Int)
    return RelevanceRealizationUnit(
        zeros(dimension), zeros(dimension),
        Float64[], Float64[],
        zeros(dimension), ones(dimension) ./ dimension,
        0.0, 0.5
    )
end

"""
    create_neuro_symbolic_system(;perception_depth=4, reasoning_order=6, 
                                   world_model_dim=128, obs_dim=64, action_dim=8)

Create complete neuro-symbolic system with specified parameters.
"""
function create_neuro_symbolic_system(;
    perception_depth::Int=4,
    reasoning_order::Int=6,
    world_model_dim::Int=128,
    obs_dim::Int=64,
    action_dim::Int=8,
    morphogenetic_grid::Tuple{Int,Int,Int}=(16,16,16)
)
    perception = NeuralPerception(perception_depth, obs_dim)
    reasoning = SymbolicReasoning(reasoning_order)
    world_model = WorldModel(world_model_dim, obs_dim)
    active_inference = ActiveInferenceEngine(action_dim)
    morphogenetic_field = MorphogeneticField(morphogenetic_grid)
    relevance_realization = RelevanceRealizationUnit(world_model_dim)
    
    return NeuroSymbolicSystem(
        perception, reasoning, world_model,
        active_inference, morphogenetic_field, relevance_realization,
        0.0, 0,
        0.5, 0.5, 0.0
    )
end

########################################################################
# Core Operations
########################################################################

"""
    perceive!(system, observation)

Process observation through neural perception (P-system membranes as embeddings).
Returns hierarchical feature representation.
"""
function perceive!(system::NeuroSymbolicSystem, observation::Vector{Float64})
    perception = system.perception
    
    # Feed observation into first membrane
    obs_dim = length(observation)
    membrane_size = perception.membrane_sizes[1]
    
    # Reshape observation to fit membrane (truncate or pad)
    if obs_dim > membrane_size
        current_state = observation[1:membrane_size]
    else
        current_state = vcat(observation, zeros(membrane_size - obs_dim))
    end
    
    # Propagate through membrane hierarchy (deep aspect)
    features = Vector{Float64}[]
    
    for depth in 1:perception.depth
        # Update membrane state (P-system evolution)
        rate = perception.evolution_rules[depth][:rate]
        perception.membrane_states[depth] = (1 - rate) * perception.membrane_states[depth] +
                                           rate * (current_state * current_state')
        
        # Extract features via embedding
        if depth < perception.depth
            current_state = tanh.(perception.embedding_weights[depth]' * current_state)
        end
        
        push!(features, current_state)
        
        # Update activation history
        push!(perception.activation_history, copy(current_state))
    end
    
    # Compute feature entropy
    all_features = vcat(features...)
    feature_probs = softmax(abs.(all_features))
    perception.feature_entropy = -sum(feature_probs .* log.(feature_probs .+ 1e-10))
    
    # Return deepest features (most abstract)
    return features[end]
end

"""
    reason!(system, perception_features)

Apply symbolic reasoning (B-series trajectories as behavior trees).
Returns symbolic reasoning output.
"""
function reason!(system::NeuroSymbolicSystem, perception_features::Vector{Float64})
    reasoning = system.reasoning
    
    # Update trajectory state from perception
    feature_dim = length(perception_features)
    traj_dim = length(reasoning.trajectory_state)
    
    if feature_dim <= traj_dim
        reasoning.trajectory_state[1:feature_dim] = perception_features
    else
        reasoning.trajectory_state = perception_features[1:traj_dim]
    end
    
    # Apply B-series integration step (tree aspect of Deep Tree Echo)
    # Simplified: weighted combination of tree contributions
    h = 0.01  # Time step
    increment = zeros(traj_dim)
    
    for (idx, tree) in enumerate(reasoning.trees)
        # Elementary differential F(τ)(y)
        # Simplified: use tree structure to define differential
        tree_order = length(tree)
        coeff = reasoning.coefficients[idx]
        
        # Compute elementary differential (simplified as polynomial)
        differential = zeros(traj_dim)
        for i in 1:min(tree_order, traj_dim)
            differential[i] = coeff * reasoning.trajectory_state[i]^tree_order
        end
        
        increment += differential
    end
    
    # Update trajectory (Runge-Kutta style)
    reasoning.trajectory_state += h * increment
    
    # Record trajectory
    push!(reasoning.trajectory_history, copy(reasoning.trajectory_state))
    
    # Compute decision entropy
    decision_probs = softmax(abs.(reasoning.trajectory_state))
    reasoning.decision_entropy = -sum(decision_probs .* log.(decision_probs .+ 1e-10))
    
    return reasoning.trajectory_state
end

"""
    predict!(system, reasoning_output)

Generate world model prediction unifying perception and reasoning.
Returns predicted observation and updated world state.
"""
function predict!(system::NeuroSymbolicSystem, reasoning_output::Vector{Float64})
    wm = system.world_model
    
    # Update world state from reasoning (recognition model)
    obs_dim = size(wm.recognition_weights, 2)
    
    # Pad or truncate reasoning output
    if length(reasoning_output) < obs_dim
        obs_input = vcat(reasoning_output, zeros(obs_dim - length(reasoning_output)))
    else
        obs_input = reasoning_output[1:obs_dim]
    end
    
    # Recognition: observation → latent state
    posterior_mean = wm.recognition_weights * obs_input
    
    # Temporal prediction: integrate past (A·s_t)
    predicted_state = wm.transition_model * wm.state + 0.1 * posterior_mean
    
    # Update state and covariance
    wm.state = predicted_state
    wm.state_covariance = wm.transition_model * wm.state_covariance * 
                         wm.transition_model' + wm.process_noise
    
    # Generate prediction (generative model: state → observation)
    predicted_obs = wm.generative_weights * wm.state
    
    # Compute prediction error (will be set when actual observation available)
    # For now, track temporal coherence
    if length(reasoning_output) > 0
        correlation = cor(wm.state[1:min(length(wm.state), length(reasoning_output))],
                         reasoning_output[1:min(length(wm.state), length(reasoning_output))])
        wm.temporal_coherence = abs(correlation)
    end
    
    return predicted_obs, wm.state
end

"""
    infer_action!(system, prediction, observation)

Perform active inference to select action minimizing expected free energy.
"""
function infer_action!(system::NeuroSymbolicSystem, 
                      prediction::Vector{Float64}, 
                      observation::Vector{Float64})
    ai = system.active_inference
    wm = system.world_model
    
    # Compute prediction error
    min_len = min(length(prediction), length(observation))
    error = prediction[1:min_len] - observation[1:min_len]
    wm.prediction_error = norm(error)
    
    # Compute free energy components
    # Complexity: KL divergence between posterior and prior
    ai.complexity = 0.5 * (tr(wm.state_covariance) + dot(wm.state, wm.state) - 
                          wm.dimension - log(det(wm.state_covariance) + 1e-10))
    
    # Accuracy: expected log likelihood
    ai.accuracy = -0.5 * wm.prediction_error^2
    
    # Free energy
    ai.free_energy = ai.complexity - ai.accuracy
    push!(ai.inference_history, ai.free_energy)
    
    # Action selection: choose action minimizing expected free energy
    # Simplified: sample from Boltzmann distribution
    for a in 1:ai.action_dim
        # Expected free energy for action a (simplified)
        ai.expected_free_energy[a] = ai.free_energy + 0.1 * randn()
    end
    
    # Softmax action selection
    action_probs = softmax(-ai.action_precision * ai.expected_free_energy)
    
    # Sample action
    action_idx = sample_categorical(action_probs)
    action = zeros(ai.action_dim)
    action[action_idx] = 1.0
    
    return action
end

"""
    initialize_morphogenetic!(system; seed_pattern=:spiral)

Initialize morphogenetic field with seed pattern for self-assembly.
"""
function initialize_morphogenetic!(system::NeuroSymbolicSystem; 
                                   seed_pattern::Symbol=:spiral)
    field = system.morphogenetic_field
    field.pattern_type = seed_pattern
    
    (nx, ny, nz) = field.grid_size
    
    if seed_pattern == :spiral
        # Create spiral pattern in morphogen 1
        for i in 1:nx, j in 1:ny, k in 1:nz
            r = sqrt((i - nx/2)^2 + (j - ny/2)^2)
            θ = atan(j - ny/2, i - nx/2)
            field.morphogen_concentrations[i, j, k, 1] = exp(-r/10) * sin(3θ + k/nz*2π)
        end
    elseif seed_pattern == :waves
        # Create wave pattern
        for i in 1:nx, j in 1:ny, k in 1:nz
            field.morphogen_concentrations[i, j, k, 1] = sin(2π * i / nx) * 
                                                         cos(2π * j / ny)
        end
    elseif seed_pattern == :turing
        # Turing pattern seed (small random perturbations)
        field.morphogen_concentrations[:, :, :, 1] .= 1.0 .+ 0.1 .* randn(nx, ny, nz)
        field.morphogen_concentrations[:, :, :, 2] .= 0.5 .+ 0.05 .* randn(nx, ny, nz)
    end
    
    # Compute initial organization metric
    field.organization_metric = compute_organization(field)
end

"""
    evolve_morphogenetic!(system; generations=10, dt=0.1)

Evolve morphogenetic field through reaction-diffusion dynamics for self-assembly.
"""
function evolve_morphogenetic!(system::NeuroSymbolicSystem; 
                               generations::Int=10, 
                               dt::Float64=0.1)
    field = system.morphogenetic_field
    (nx, ny, nz) = field.grid_size
    num_morphogens = size(field.morphogen_concentrations, 4)
    
    for gen in 1:generations
        new_concentrations = copy(field.morphogen_concentrations)
        
        for m in 1:num_morphogens
            D = field.diffusion_rates[m]
            λ = field.decay_rates[m]
            
            # Reaction-diffusion update
            for i in 2:(nx-1), j in 2:(ny-1), k in 2:(nz-1)
                # Laplacian (6-point stencil)
                laplacian = (field.morphogen_concentrations[i+1, j, k, m] +
                            field.morphogen_concentrations[i-1, j, k, m] +
                            field.morphogen_concentrations[i, j+1, k, m] +
                            field.morphogen_concentrations[i, j-1, k, m] +
                            field.morphogen_concentrations[i, j, k+1, m] +
                            field.morphogen_concentrations[i, j, k-1, m] -
                            6 * field.morphogen_concentrations[i, j, k, m])
                
                # Reaction term (production)
                production = field.production_rules[m]([i, j, k])
                
                # Update
                new_concentrations[i, j, k, m] += dt * (D * laplacian - 
                                                        λ * field.morphogen_concentrations[i, j, k, m] +
                                                        production)
            end
        end
        
        field.morphogen_concentrations = new_concentrations
    end
    
    # Update organization metric
    field.organization_metric = compute_organization(field)
    system.generation += generations
end

"""
    realize_relevance!(system, features)

Compute relevance through opponent processing and echo-state resonance.
"""
function realize_relevance!(system::NeuroSymbolicSystem, features::Vector{Float64})
    rr = system.relevance_realization
    
    dim = min(length(features), length(rr.channel_positive))
    
    # Opponent processing
    # Positive channel: enhancement
    rr.channel_positive[1:dim] = max.(features[1:dim], 0.0)
    
    # Negative channel: suppression
    rr.channel_negative[1:dim] = max.(-features[1:dim], 0.0)
    
    # Compute salience as difference
    rr.salience_map[1:dim] = rr.channel_positive[1:dim] - rr.channel_negative[1:dim]
    
    # Detect resonances (simplified FFT-like approach)
    # In full implementation, would use actual frequency analysis
    if length(features) >= 8
        for i in 1:min(4, length(rr.resonance_frequencies))
            push!(rr.resonance_frequencies, Float64(i))
            push!(rr.resonance_amplitudes, abs(sum(features[i:4:end])))
        end
    end
    
    # Compute attention weights via softmax of salience
    rr.attention_weights = softmax(abs.(rr.salience_map))
    
    # Cognitive synergy: measure of coordinated processing
    salience_entropy = -sum(rr.attention_weights .* log.(rr.attention_weights .+ 1e-10))
    max_entropy = log(length(rr.attention_weights))
    rr.synergy_coefficient = 1.0 - salience_entropy / max_entropy
    
    system.cognitive_synergy = rr.synergy_coefficient
    
    return rr.salience_map, rr.attention_weights
end

########################################################################
# Unified Integration
########################################################################

"""
    unified_step!(system, observation)

Perform one unified step of perception → reasoning → prediction → action.
Returns action and updated system state.
"""
function unified_step!(system::NeuroSymbolicSystem, observation::Vector{Float64})
    # 1. Neural Perception (P-system membranes)
    perception_features = perceive!(system, observation)
    
    # 2. Symbolic Reasoning (B-series trajectories)
    reasoning_output = reason!(system, perception_features)
    
    # 3. World Model Prediction
    prediction, world_state = predict!(system, reasoning_output)
    
    # 4. Active Inference (action selection)
    action = infer_action!(system, prediction, observation)
    
    # 5. Relevance Realization
    salience, attention = realize_relevance!(system, world_state)
    
    # 6. Update coupling metrics
    # Perception-Reasoning coupling
    system.perception_reasoning_coupling = cor(
        perception_features[1:min(length(perception_features), length(reasoning_output))],
        reasoning_output[1:min(length(perception_features), length(reasoning_output))]
    )
    
    # Nomological balance (past-future balance)
    # High when world model effectively integrates temporal information
    system.nomological_balance = system.world_model.temporal_coherence * 
                                 (1.0 - system.world_model.prediction_error)
    
    system.time += 0.01
    
    return action, world_state, salience
end

########################################################################
# Utility Functions
########################################################################

"""Softmax function"""
function softmax(x::Vector{Float64})
    ex = exp.(x .- maximum(x))
    return ex ./ sum(ex)
end

"""Sample from categorical distribution"""
function sample_categorical(probs::Vector{Float64})
    cumsum_probs = cumsum(probs)
    r = rand()
    for (i, cp) in enumerate(cumsum_probs)
        if r <= cp
            return i
        end
    end
    return length(probs)
end

"""Compute organization metric for morphogenetic field"""
function compute_organization(field::MorphogeneticField)
    # Measure spatial structure via gradient magnitude
    (nx, ny, nz) = field.grid_size
    total_gradient = 0.0
    count = 0
    
    for i in 2:(nx-1), j in 2:(ny-1), k in 2:(nz-1), m in 1:size(field.morphogen_concentrations, 4)
        grad_x = field.morphogen_concentrations[i+1, j, k, m] - 
                field.morphogen_concentrations[i-1, j, k, m]
        grad_y = field.morphogen_concentrations[i, j+1, k, m] - 
                field.morphogen_concentrations[i, j-1, k, m]
        grad_z = field.morphogen_concentrations[i, j, k+1, m] - 
                field.morphogen_concentrations[i, j, k-1, m]
        
        total_gradient += sqrt(grad_x^2 + grad_y^2 + grad_z^2)
        count += 1
    end
    
    return total_gradient / count
end

end # module NeuroSymbolicBridge
