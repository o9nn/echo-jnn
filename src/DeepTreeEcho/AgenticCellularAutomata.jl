"""
    AgenticCellularAutomata

Implements agentic cellular automata in tensor embeddings for spatial computing
on morphogenetic fields. Each cell is an autonomous agent with neural embeddings
that perform distributed computation.

# Concept: Agents as Spatial Computers

Instead of passive cells following fixed rules, we have **agentic cells** where:

1. Each cell is an autonomous agent with its own:
   - Neural embedding (latent state)
   - Attention mechanism (for neighbor selection)
   - Action policy (for state updates)
   - Memory (for temporal patterns)

2. Cells perform spatial computing:
   - Read morphogen concentrations
   - Communicate with neighbors
   - Execute local computations
   - Write back to morphogenetic field

3. Emergent collective intelligence:
   - Global patterns from local agent interactions
   - Self-organizing computation
   - Adaptive field dynamics

# Mathematical Foundation

## Agent Cell State

Each cell at position (x,y,z) has:

```
Agent_xyz = {
    embedding: e ∈ ℝ^d         (neural latent state)
    attention: A ∈ ℝ^(N×d)     (neighbor attention weights)
    policy: π(e, m) → a        (action selection)
    memory: M ∈ ℝ^(T×d)        (temporal buffer)
    morphogen_sensor: s(m)     (read morphogens)
    morphogen_actuator: w(a)   (write morphogens)
}
```

## Spatial Computing Loop

At each timestep:

```
1. SENSE: e_t = sense(morphogens_xyz, neighbors_embeddings)
2. ATTEND: α = softmax(e_t · E_neighbors^T)
3. AGGREGATE: h = Σ α_i · e_neighbor_i
4. COMPUTE: e_{t+1} = update(e_t, h, memory)
5. ACT: morphogens_xyz += actuate(e_{t+1})
6. REMEMBER: memory ← [e_t, memory[:-1]]
```

## Collective Dynamics

The system evolves through coupled agent-field dynamics:

```
∂e_xyz/∂t = f_agent(e_xyz, neighbors, morphogens_xyz)
∂m_xyz/∂t = D∇²m - λm + Σ_agents w_agent(e_xyz)
```

Where:
- f_agent: Agent update rule
- w_agent: Agent's morphogen production
- Coupling creates emergent spatial computation

# Agent Types

Different agent architectures:

1. **Sensor Agents**: Read field, minimal computation
2. **Processor Agents**: Complex computation, moderate I/O
3. **Actuator Agents**: Write field, minimal sensing
4. **Coordinator Agents**: Route information, high attention
5. **Memory Agents**: Store patterns, high capacity

# Spatial Computing Patterns

The system can implement:

- **Wave propagation**: Information spreading
- **Pattern formation**: Self-organized structures
- **Computation paths**: Directed information flow
- **Memory storage**: Spatial encoding of patterns
- **Collective decision**: Distributed consensus

# Usage

```julia
using DeepTreeEcho.NeuroSymbolicBridge.AgenticCellularAutomata

# Create agentic CA system
aca_system = create_agentic_ca_system(
    grid_size = (32, 32, 32),
    agent_embedding_dim = 64,
    num_morphogens = 3,
    agent_types = [:sensor, :processor, :actuator]
)

# Initialize agents
initialize_agents!(aca_system, distribution=:random)

# Run spatial computation
for step in 1:100
    # Agents sense, compute, and act
    spatial_compute_step!(aca_system)
    
    # Morphogenetic field evolves
    evolve_morphogenetic_field!(aca_system)
end

# Extract computed results from spatial pattern
result = read_spatial_computation(aca_system)
```

# Integration with Neuro-Symbolic System

```
Observation
    ↓
Rooted Membrane-Tree System
    ↓
Morphogenetic Field ← Agentic CA perform spatial computing
    ↓                   ├─ Sensor agents read field
    ↓                   ├─ Processor agents compute
    ↓                   └─ Actuator agents write field
    ↓
Field Pattern ← Emergent spatial computation result
    ↓
World Model Prediction
```
"""
module AgenticCellularAutomata

using LinearAlgebra
using Random
using Statistics

export AgenticCASystem, AgentCell, AgentType,
       create_agentic_ca_system, initialize_agents!,
       spatial_compute_step!, evolve_morphogenetic_field!,
       read_spatial_computation, write_spatial_pattern!,
       get_agent_neighborhood, compute_agent_attention

########################################################################
# Core Types
########################################################################

"""
    AgentType

Type of agent cell with different computational roles.
"""
@enum AgentType begin
    SENSOR      # Read field, minimal computation
    PROCESSOR   # Complex computation, moderate I/O
    ACTUATOR    # Write field, minimal sensing
    COORDINATOR # Route information, high attention
    MEMORY      # Store patterns, high capacity
end

"""
    AgentCell

An autonomous agent cell with neural embedding performing spatial computation.
"""
mutable struct AgentCell
    # Identity
    position::Tuple{Int, Int, Int}     # (x, y, z) in grid
    cell_id::Int                        # Unique identifier
    agent_type::AgentType               # Computational role
    
    # Neural embedding (latent state)
    embedding::Vector{Float64}          # e ∈ ℝ^d
    embedding_dim::Int                  # d
    
    # Attention mechanism
    attention_weights::Vector{Float64} # Attention to neighbors
    attention_range::Int               # How far to attend
    
    # Action policy
    policy_weights::Matrix{Float64}    # π: embedding → action
    action_dim::Int                    # Action space size
    
    # Memory (temporal buffer)
    memory::Matrix{Float64}            # T × d memory buffer
    memory_capacity::Int               # T
    write_pointer::Int                 # Current write position
    
    # Morphogen sensing
    morphogen_reading::Vector{Float64} # Current morphogen values
    sensing_weights::Matrix{Float64}   # How to read morphogens
    
    # Morphogen actuation
    morphogen_writing::Vector{Float64} # Morphogen output
    actuation_weights::Matrix{Float64} # How to write morphogens
    
    # Neighbors
    neighbor_ids::Vector{Int}          # IDs of neighbor agents
    neighbor_embeddings::Matrix{Float64} # Cached neighbor states
    
    # Statistics
    activation_level::Float64          # Current activity
    computation_count::Int             # Number of compute steps
    information_entropy::Float64       # Embedding entropy
end

"""
    AgenticCASystem

Complete agentic cellular automata system performing spatial computation
on morphogenetic field.
"""
mutable struct AgenticCASystem
    # Grid structure
    grid_size::Tuple{Int, Int, Int}    # (nx, ny, nz)
    total_cells::Int                    # nx × ny × nz
    
    # Agent collection
    agents::Array{Union{AgentCell, Nothing}, 3}  # 3D grid of agents
    agent_list::Vector{AgentCell}      # Flat list for iteration
    num_agents::Int                     # Number of active agents
    
    # Agent organization by type
    agents_by_type::Dict{AgentType, Vector{Int}}
    
    # Morphogenetic field
    morphogen_field::Array{Float64, 4} # (x, y, z, morphogen_type)
    num_morphogens::Int                 # Number of morphogen species
    
    # Field dynamics
    diffusion_rates::Vector{Float64}
    decay_rates::Vector{Float64}
    production_rates::Vector{Float64}
    
    # Spatial computing parameters
    agent_embedding_dim::Int           # Dimension of agent embeddings
    neighbor_radius::Int               # Radius for neighbor detection
    communication_strength::Float64    # Agent-agent coupling
    field_coupling::Float64            # Agent-field coupling
    
    # Computation state
    computation_buffer::Array{Float64, 4}  # Intermediate results
    collective_memory::Matrix{Float64}     # Global memory
    
    # Statistics
    spatial_coherence::Float64         # Pattern coherence
    computation_efficiency::Float64    # Active agents / total
    collective_intelligence::Float64   # Emergent behavior metric
    
    # Dynamics
    time_step::Float64
    step_count::Int
end

########################################################################
# Constructors
########################################################################

"""
    AgentCell(position, cell_id, agent_type, embedding_dim, num_morphogens)

Create an autonomous agent cell with neural embedding.
"""
function AgentCell(
    position::Tuple{Int, Int, Int},
    cell_id::Int,
    agent_type::AgentType,
    embedding_dim::Int,
    num_morphogens::Int
)
    # Initialize embedding based on agent type
    if agent_type == PROCESSOR
        embedding = randn(embedding_dim) .* 0.5  # High variance
    elseif agent_type == MEMORY
        embedding = zeros(embedding_dim)  # Start neutral
    else
        embedding = randn(embedding_dim) .* 0.2  # Moderate variance
    end
    
    # Attention range based on type
    attention_range = agent_type == COORDINATOR ? 3 : 1
    
    # Action dimension based on type
    action_dim = agent_type == ACTUATOR ? num_morphogens * 2 : embedding_dim
    
    # Memory capacity based on type
    memory_capacity = agent_type == MEMORY ? 100 : 10
    
    # Initialize policy (simple linear for now)
    policy_weights = randn(action_dim, embedding_dim) .* 0.1
    
    # Sensing/actuation weights
    sensing_weights = randn(embedding_dim, num_morphogens) .* 0.1
    actuation_weights = randn(num_morphogens, embedding_dim) .* 0.1
    
    return AgentCell(
        position,
        cell_id,
        agent_type,
        embedding,
        embedding_dim,
        Float64[],
        attention_range,
        policy_weights,
        action_dim,
        zeros(memory_capacity, embedding_dim),
        memory_capacity,
        1,
        zeros(num_morphogens),
        sensing_weights,
        zeros(num_morphogens),
        actuation_weights,
        Int[],
        zeros(embedding_dim, 0),
        0.0,
        0,
        0.0
    )
end

"""
    create_agentic_ca_system(;grid_size, agent_embedding_dim, num_morphogens, agent_types)

Create complete agentic cellular automata system.
"""
function create_agentic_ca_system(;
    grid_size::Tuple{Int, Int, Int}=(32, 32, 32),
    agent_embedding_dim::Int=64,
    num_morphogens::Int=3,
    agent_types::Vector{Symbol}=[:sensor, :processor, :actuator],
    agent_density::Float64=0.3  # Fraction of cells with agents
)
    (nx, ny, nz) = grid_size
    total_cells = nx * ny * nz
    
    # Initialize empty agent grid
    agents = Array{Union{AgentCell, Nothing}, 3}(nothing, nx, ny, nz)
    agent_list = AgentCell[]
    agents_by_type = Dict{AgentType, Vector{Int}}()
    
    for atype in instances(AgentType)
        agents_by_type[atype] = Int[]
    end
    
    # Initialize morphogenetic field
    morphogen_field = zeros(nx, ny, nz, num_morphogens)
    
    # Default field dynamics
    diffusion_rates = ones(num_morphogens) * 0.1
    decay_rates = ones(num_morphogens) * 0.05
    production_rates = ones(num_morphogens) * 0.1
    
    # Computation buffer
    computation_buffer = zeros(nx, ny, nz, agent_embedding_dim)
    
    # Collective memory (global patterns)
    collective_memory = zeros(100, agent_embedding_dim)
    
    return AgenticCASystem(
        grid_size,
        total_cells,
        agents,
        agent_list,
        0,
        agents_by_type,
        morphogen_field,
        num_morphogens,
        diffusion_rates,
        decay_rates,
        production_rates,
        agent_embedding_dim,
        1,  # neighbor_radius
        0.5,  # communication_strength
        0.3,  # field_coupling
        computation_buffer,
        collective_memory,
        0.0,
        0.0,
        0.0,
        0.01,
        0
    )
end

########################################################################
# Agent Initialization
########################################################################

"""
    initialize_agents!(system; distribution=:random, density=0.3)

Initialize agents in the cellular automata grid.
"""
function initialize_agents!(
    system::AgenticCASystem;
    distribution::Symbol=:random,
    density::Float64=0.3
)
    (nx, ny, nz) = system.grid_size
    cell_id = 1
    
    # Agent type probabilities
    type_probs = Dict(
        SENSOR => 0.25,
        PROCESSOR => 0.30,
        ACTUATOR => 0.20,
        COORDINATOR => 0.15,
        MEMORY => 0.10
    )
    
    for x in 1:nx, y in 1:ny, z in 1:nz
        # Decide if this cell gets an agent
        if distribution == :random
            if rand() > density
                continue
            end
        elseif distribution == :layered
            # More agents at boundaries
            if x > 2 && x < nx-1 && y > 2 && y < ny-1 && z > 2 && z < nz-1
                if rand() > density * 2
                    continue
                end
            end
        end
        
        # Select agent type
        r = rand()
        cumsum = 0.0
        selected_type = PROCESSOR
        
        for (atype, prob) in type_probs
            cumsum += prob
            if r <= cumsum
                selected_type = atype
                break
            end
        end
        
        # Create agent
        agent = AgentCell(
            (x, y, z),
            cell_id,
            selected_type,
            system.agent_embedding_dim,
            system.num_morphogens
        )
        
        # Place in grid
        system.agents[x, y, z] = agent
        push!(system.agent_list, agent)
        push!(system.agents_by_type[selected_type], cell_id)
        
        cell_id += 1
    end
    
    system.num_agents = length(system.agent_list)
    
    # Build neighbor connections
    build_neighbor_network!(system)
    
    println("✓ Initialized $(system.num_agents) agents")
    println("   Density: $(round(system.num_agents / system.total_cells, digits=3))")
    
    for atype in instances(AgentType)
        count = length(system.agents_by_type[atype])
        if count > 0
            println("   $(atype): $count agents")
        end
    end
    
    return system
end

"""
    build_neighbor_network!(system)

Build neighbor connectivity for all agents.
"""
function build_neighbor_network!(system::AgenticCASystem)
    (nx, ny, nz) = system.grid_size
    radius = system.neighbor_radius
    
    for agent in system.agent_list
        (x, y, z) = agent.position
        agent.neighbor_ids = Int[]
        
        # Find neighbors within radius
        for dx in -radius:radius, dy in -radius:radius, dz in -radius:radius
            if dx == 0 && dy == 0 && dz == 0
                continue
            end
            
            nx_pos = x + dx
            ny_pos = y + dy
            nz_pos = z + dz
            
            # Check bounds
            if nx_pos < 1 || nx_pos > nx || 
               ny_pos < 1 || ny_pos > ny ||
               nz_pos < 1 || nz_pos > nz
                continue
            end
            
            neighbor = system.agents[nx_pos, ny_pos, nz_pos]
            if !isnothing(neighbor)
                push!(agent.neighbor_ids, neighbor.cell_id)
            end
        end
        
        # Initialize attention weights uniformly
        agent.attention_weights = ones(length(agent.neighbor_ids)) / 
                                 max(1, length(agent.neighbor_ids))
    end
end

########################################################################
# Spatial Computing Step
########################################################################

"""
    spatial_compute_step!(system)

Execute one step of spatial computation across all agent cells.
"""
function spatial_compute_step!(system::AgenticCASystem)
    # Phase 1: SENSE - All agents read morphogens and neighbors
    for agent in system.agent_list
        sense_environment!(agent, system)
    end
    
    # Phase 2: ATTEND - Compute attention over neighbors
    for agent in system.agent_list
        compute_attention!(agent, system)
    end
    
    # Phase 3: AGGREGATE - Gather information from neighbors
    for agent in system.agent_list
        aggregate_neighbors!(agent, system)
    end
    
    # Phase 4: COMPUTE - Update agent embeddings
    for agent in system.agent_list
        compute_update!(agent, system)
    end
    
    # Phase 5: ACT - Write to morphogenetic field
    for agent in system.agent_list
        actuate_field!(agent, system)
    end
    
    # Phase 6: REMEMBER - Update memory
    for agent in system.agent_list
        update_memory!(agent)
    end
    
    # Update system statistics
    update_spatial_statistics!(system)
    
    system.step_count += 1
end

"""
    sense_environment!(agent, system)

Agent senses morphogen field and neighbor states (SENSE phase).
"""
function sense_environment!(agent::AgentCell, system::AgenticCASystem)
    (x, y, z) = agent.position
    
    # Read morphogen concentrations
    agent.morphogen_reading = system.morphogen_field[x, y, z, :]
    
    # Cache neighbor embeddings
    if length(agent.neighbor_ids) > 0
        agent.neighbor_embeddings = zeros(agent.embedding_dim, length(agent.neighbor_ids))
        
        for (i, neighbor_id) in enumerate(agent.neighbor_ids)
            neighbor = system.agent_list[neighbor_id]
            agent.neighbor_embeddings[:, i] = neighbor.embedding
        end
    end
end

"""
    compute_attention!(agent, system)

Compute attention weights over neighbors (ATTEND phase).
"""
function compute_attention!(agent::AgentCell, system::AgenticCASystem)
    if length(agent.neighbor_ids) == 0
        return
    end
    
    # Attention scores: embedding · neighbor_embeddings^T
    scores = agent.embedding' * agent.neighbor_embeddings
    
    # Softmax
    exp_scores = exp.(scores .- maximum(scores))
    agent.attention_weights = exp_scores ./ sum(exp_scores)
end

"""
    aggregate_neighbors!(agent, system)

Aggregate information from neighbors weighted by attention (AGGREGATE phase).
"""
function aggregate_neighbors!(agent::AgentCell, system::AgenticCASystem)
    if length(agent.neighbor_ids) == 0
        return
    end
    
    # Weighted sum: Σ α_i · embedding_i
    aggregated = agent.neighbor_embeddings * agent.attention_weights
    
    # Store in computation buffer at agent position
    (x, y, z) = agent.position
    system.computation_buffer[x, y, z, :] = aggregated
end

"""
    compute_update!(agent, system)

Update agent embedding based on environment and neighbors (COMPUTE phase).
"""
function compute_update!(agent::AgentCell, system::AgenticCASystem)
    (x, y, z) = agent.position
    
    # Get aggregated neighbor info
    neighbor_info = system.computation_buffer[x, y, z, :]
    
    # Sense morphogen field
    morphogen_input = agent.sensing_weights * agent.morphogen_reading
    
    # Agent type specific computation
    if agent.agent_type == PROCESSOR
        # Complex non-linear computation
        combined = tanh.(agent.embedding + 0.3 * neighbor_info + 0.2 * morphogen_input)
        agent.embedding = 0.9 * agent.embedding + 0.1 * combined
        
    elseif agent.agent_type == SENSOR
        # Primarily driven by morphogens
        agent.embedding = 0.8 * agent.embedding + 0.2 * morphogen_input
        
    elseif agent.agent_type == ACTUATOR
        # Influenced by neighbors for coordination
        agent.embedding = 0.7 * agent.embedding + 0.3 * neighbor_info
        
    elseif agent.agent_type == COORDINATOR
        # Balance all inputs
        combined = 0.4 * neighbor_info + 0.3 * morphogen_input + 0.3 * agent.embedding
        agent.embedding = tanh.(combined)
        
    elseif agent.agent_type == MEMORY
        # Slow integration
        agent.embedding = 0.95 * agent.embedding + 
                         0.03 * neighbor_info + 
                         0.02 * morphogen_input
    end
    
    # Update activation level
    agent.activation_level = norm(agent.embedding) / sqrt(agent.embedding_dim)
    agent.computation_count += 1
    
    # Update entropy
    if agent.embedding_dim > 0
        probs = softmax(abs.(agent.embedding))
        agent.information_entropy = -sum(probs .* log.(probs .+ 1e-10))
    end
end

"""
    actuate_field!(agent, system)

Agent writes to morphogenetic field (ACT phase).
"""
function actuate_field!(agent::AgentCell, system::AgenticCASystem)
    (x, y, z) = agent.position
    
    # Compute morphogen output from embedding
    agent.morphogen_writing = tanh.(agent.actuation_weights * agent.embedding)
    
    # Weight by field coupling and agent type
    coupling = system.field_coupling
    if agent.agent_type == ACTUATOR
        coupling *= 2.0  # Actuators have stronger effect
    elseif agent.agent_type == SENSOR
        coupling *= 0.5  # Sensors have weaker effect
    end
    
    # Write to field
    system.morphogen_field[x, y, z, :] += coupling * agent.morphogen_writing
end

"""
    update_memory!(agent)

Update agent's temporal memory (REMEMBER phase).
"""
function update_memory!(agent::AgentCell)
    # Write current embedding to memory buffer (circular)
    agent.memory[agent.write_pointer, :] = agent.embedding
    
    # Advance write pointer
    agent.write_pointer = (agent.write_pointer % agent.memory_capacity) + 1
end

########################################################################
# Morphogenetic Field Evolution
########################################################################

"""
    evolve_morphogenetic_field!(system; dt=0.01)

Evolve morphogenetic field through reaction-diffusion dynamics.
"""
function evolve_morphogenetic_field!(system::AgenticCASystem; dt::Float64=0.01)
    (nx, ny, nz) = system.grid_size
    new_field = copy(system.morphogen_field)
    
    for m in 1:system.num_morphogens
        D = system.diffusion_rates[m]
        λ = system.decay_rates[m]
        
        # Reaction-diffusion update
        for x in 2:(nx-1), y in 2:(ny-1), z in 2:(nz-1)
            # Laplacian (6-point stencil)
            laplacian = (system.morphogen_field[x+1, y, z, m] +
                        system.morphogen_field[x-1, y, z, m] +
                        system.morphogen_field[x, y+1, z, m] +
                        system.morphogen_field[x, y-1, z, m] +
                        system.morphogen_field[x, y, z+1, m] +
                        system.morphogen_field[x, y, z-1, m] -
                        6 * system.morphogen_field[x, y, z, m])
            
            # Update with diffusion and decay
            new_field[x, y, z, m] += dt * (D * laplacian - 
                                           λ * system.morphogen_field[x, y, z, m])
        end
    end
    
    # Clamp values
    new_field = clamp.(new_field, -10.0, 10.0)
    
    system.morphogen_field = new_field
end

########################################################################
# Spatial Computing I/O
########################################################################

"""
    write_spatial_pattern!(system, pattern, morphogen_index=1)

Write a spatial pattern to morphogenetic field for computation.
"""
function write_spatial_pattern!(
    system::AgenticCASystem,
    pattern::Array{Float64, 3},
    morphogen_index::Int=1
)
    (nx, ny, nz) = system.grid_size
    (px, py, pz) = size(pattern)
    
    # Write pattern to center of field
    x_start = (nx - px) ÷ 2 + 1
    y_start = (ny - py) ÷ 2 + 1
    z_start = (nz - pz) ÷ 2 + 1
    
    for x in 1:px, y in 1:py, z in 1:pz
        system.morphogen_field[x_start+x-1, y_start+y-1, z_start+z-1, morphogen_index] = 
            pattern[x, y, z]
    end
end

"""
    read_spatial_computation(system, morphogen_index=1)

Read the result of spatial computation from morphogenetic field.
"""
function read_spatial_computation(
    system::AgenticCASystem,
    morphogen_index::Int=1
)
    return system.morphogen_field[:, :, :, morphogen_index]
end

########################################################################
# Analysis
########################################################################

"""
    update_spatial_statistics!(system)

Update system-wide spatial computing statistics.
"""
function update_spatial_statistics!(system::AgenticCASystem)
    # Spatial coherence: correlation between nearby morphogen values
    coherence_sum = 0.0
    count = 0
    (nx, ny, nz) = system.grid_size
    
    for x in 1:(nx-1), y in 1:(ny-1), z in 1:(nz-1), m in 1:system.num_morphogens
        # Correlation with adjacent cell
        coherence_sum += system.morphogen_field[x, y, z, m] * 
                        system.morphogen_field[x+1, y, z, m]
        count += 1
    end
    
    system.spatial_coherence = coherence_sum / count
    
    # Computation efficiency: fraction of active agents
    active_count = sum(agent.activation_level > 0.1 for agent in system.agent_list)
    system.computation_efficiency = active_count / system.num_agents
    
    # Collective intelligence: average information entropy
    if system.num_agents > 0
        system.collective_intelligence = mean(agent.information_entropy 
                                             for agent in system.agent_list)
    end
end

"""Softmax function"""
function softmax(x::Vector{Float64})
    ex = exp.(x .- maximum(x))
    return ex ./ sum(ex)
end

"""
    get_agent_neighborhood(system, agent)

Get all agents in neighborhood of given agent.
"""
function get_agent_neighborhood(system::AgenticCASystem, agent::AgentCell)
    return [system.agent_list[id] for id in agent.neighbor_ids]
end

"""
    compute_agent_attention(agent, neighbor_embedding)

Compute attention weight for a specific neighbor.
"""
function compute_agent_attention(agent::AgentCell, neighbor_embedding::Vector{Float64})
    score = dot(agent.embedding, neighbor_embedding)
    return exp(score) / (exp(score) + 1.0)
end

end # module AgenticCellularAutomata
