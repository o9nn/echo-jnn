"""
    RootedMembranePhysics

Plants B-series rooted trees directly into P-system membranes, making the
physics engine structurally rooted in neural perception.

# Concept: Physics Rooted in Perception

Instead of having separate perception and reasoning systems that communicate,
we **plant trees inside membranes** such that:

1. Each membrane compartment contains rooted trees
2. Trees grow from membrane states (perception → structure)
3. Tree dynamics evolve membrane states (physics → perception)
4. The physics engine is literally rooted in the perceptual substrate

# Mathematical Foundation

## Membrane-Tree Complex

A membrane-tree complex M⊗T consists of:

```
M = {m₁, m₂, ..., mₙ}  (membranes at depth d)
T = {τ₁, τ₂, ..., τₖ}  (rooted trees)

Planting: π: T → M  (each tree planted in a membrane)
Root Function: ρ: τᵢ → state(π(τᵢ))
```

## Rooting Equations

Trees are rooted in membrane state:

```
Root of τᵢ at membrane mⱼ:
  root(τᵢ) = mⱼ.state
  
Tree growth from membrane:
  τᵢ(t+1) = grow(τᵢ(t), mⱼ.state, evolution_rules)
  
Membrane evolution from tree:
  mⱼ.state(t+1) = m_evolve(mⱼ.state(t), τᵢ, b(τᵢ))
```

## Coupled Dynamics

The membrane-tree system evolves through coupled equations:

```
∂m/∂t = α·P_membrane(m) + β·T_feedback(planted_trees)
∂τ/∂t = γ·B_series(τ) + δ·M_grounding(root_membrane)
```

Where:
- P_membrane: P-system membrane evolution
- T_feedback: Tree influence on membrane
- B_series: B-series tree integration
- M_grounding: Membrane grounding of tree roots

## Physical Interpretation

This creates a **grounded physics engine**:

1. **Perception generates structure**: Membrane states determine tree topology
2. **Structure performs computation**: Trees execute B-series integration
3. **Computation updates perception**: Tree results modify membrane states
4. **Closed loop**: Perception ↔ Physics form unified system

# Architecture

```
┌─────────────────────────────────────────────────────┐
│          OUTER MEMBRANE (Depth 1)                   │
│                                                     │
│   Perception: Low-level features                   │
│                                                     │
│   🌳 Tree τ₁: [1]                                  │
│   🌳 Tree τ₂: [1,2]                                │
│      Rooted in: membrane state vector              │
│      Physics: Simple integration                    │
│                                                     │
│  ┌───────────────────────────────────────────────┐ │
│  │      MIDDLE MEMBRANE (Depth 2)                │ │
│  │                                               │ │
│  │  Perception: Mid-level patterns              │ │
│  │                                               │ │
│  │  🌳 Tree τ₃: [1,2,3]                         │ │
│  │  🌳 Tree τ₄: [1,2,2]                         │ │
│  │     Rooted in: abstracted membrane state     │ │
│  │     Physics: Runge-Kutta integration         │ │
│  │                                               │ │
│  │ ┌──────────────────────────────────────────┐ │ │
│  │ │   INNER MEMBRANE (Depth 3)               │ │ │
│  │ │                                          │ │ │
│  │ │  Perception: High-level concepts        │ │ │
│  │ │                                          │ │ │
│  │ │  🌳 Tree τ₅: [1,2,3,4]                  │ │ │
│  │ │  🌳 Tree τ₆: [1,2,2,3]                  │ │ │
│  │ │     Rooted in: deep latent state        │ │ │
│  │ │     Physics: Complex dynamics           │ │ │
│  │ │                                          │ │ │
│  │ └──────────────────────────────────────────┘ │ │
│  └───────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────┘

Each tree τᵢ:
- Has its root(τᵢ) = membrane_state[depth]
- Performs B-series integration: y' = Σ b(τᵢ)·F(τᵢ)(root(τᵢ))
- Feeds back results to membrane: membrane_state += tree_output
```

# Usage

```julia
using DeepTreeEcho.NeuroSymbolicBridge.RootedMembranePhysics

# Create rooted membrane-tree system
system = create_rooted_membrane_system(
    membrane_depths = 4,
    trees_per_membrane = [2, 2, 3, 3],
    max_tree_order = 6
)

# Plant trees in membranes
plant_trees_in_membranes!(system, planting_strategy=:depth_matched)

# Process observation - trees grow from membrane states
observation = randn(64)
output = process_rooted!(system, observation)

# The physics engine is now rooted in perception:
# - Trees use membrane states as initial conditions
# - Tree dynamics shape membrane evolution
# - Perception and physics are one unified substrate
```
"""
module RootedMembranePhysics

using LinearAlgebra
using Random
using Statistics

export RootedMembraneSystem, PlantedTree, MembraneCompartment,
       create_rooted_membrane_system, plant_trees_in_membranes!,
       process_rooted!, grow_planted_trees!, evolve_rooted_dynamics!,
       get_rooting_strength, visualize_planted_trees

########################################################################
# Core Types
########################################################################

"""
    PlantedTree

A B-series rooted tree planted in a membrane compartment.
The tree's root is literally the membrane's state vector.
"""
mutable struct PlantedTree
    # Tree structure
    level_sequence::Vector{Int}         # Tree topology
    order::Int                          # Number of nodes
    height::Int                         # Tree depth
    
    # B-series parameters
    coefficient::Float64                # b(τ)
    symmetry_factor::Int               # σ(τ)
    
    # Rooting information
    root_membrane_id::Int              # Which membrane it's planted in
    root_state::Vector{Float64}        # Current root (membrane state)
    rooting_strength::Float64          # How strongly rooted (0-1)
    
    # Tree dynamics
    current_value::Vector{Float64}     # F(τ)(root)
    growth_rate::Float64               # How fast tree processes
    
    # Feedback to membrane
    membrane_feedback::Vector{Float64} # Tree's effect on membrane
    feedback_weight::Float64           # Strength of feedback
    
    # Statistics
    integration_history::Vector{Vector{Float64}}
    root_stability::Float64            # How stable is the root
end

"""
    MembraneCompartment

A P-system membrane compartment that hosts planted trees.
The membrane provides the perceptual substrate for physics.
"""
mutable struct MembraneCompartment
    # Membrane identity
    depth::Int                         # Nesting depth (1 = outer)
    compartment_id::Int                # Unique ID
    
    # Membrane state (perception)
    state::Vector{Float64}             # Current state vector
    state_dim::Int                     # Dimension of state
    
    # P-system properties
    multiset::Dict{String, Int}        # P-system multiset
    evolution_rate::Float64            # Membrane evolution speed
    
    # Planted trees (physics)
    planted_trees::Vector{PlantedTree} # Trees rooted in this membrane
    num_trees::Int                     # Number of planted trees
    
    # Membrane-tree coupling
    tree_influence::Float64            # How much trees affect membrane
    perception_grounding::Float64      # How much membrane grounds trees
    
    # Nested structure
    parent_membrane::Union{Int, Nothing}
    child_membranes::Vector{Int}
    
    # Statistics
    activation::Float64                # Current activation level
    entropy::Float64                   # State entropy
end

"""
    RootedMembraneSystem

Complete system where B-series trees are rooted in P-system membranes,
unifying perception and physics into a single substrate.
"""
mutable struct RootedMembraneSystem
    # Membrane hierarchy
    membranes::Vector{MembraneCompartment}
    num_depths::Int                    # Number of nesting levels
    membrane_hierarchy::Dict{Int, Vector{Int}}  # depth → membrane IDs
    
    # Tree collection
    all_trees::Vector{PlantedTree}
    trees_by_membrane::Dict{Int, Vector{Int}}  # membrane_id → tree indices
    
    # System-wide parameters
    max_tree_order::Int
    total_trees::Int
    
    # Coupling parameters
    perception_to_physics::Float64     # α: membrane → tree strength
    physics_to_perception::Float64     # β: tree → membrane strength
    
    # Dynamics
    time_step::Float64
    integration_steps::Int
    
    # Planting strategy
    planting_pattern::Symbol           # :depth_matched, :random, :optimal
    
    # Statistics
    system_coherence::Float64          # How well integrated
    rooting_quality::Float64           # Average rooting strength
    physics_grounding::Float64         # How grounded physics is
    
    # Processing state
    current_time::Float64
    step_count::Int
end

########################################################################
# Constructors
########################################################################

"""
    PlantedTree(level_sequence, root_membrane_id, state_dim)

Create a rooted tree to be planted in a membrane.
"""
function PlantedTree(level_sequence::Vector{Int}, 
                    root_membrane_id::Int, 
                    state_dim::Int)
    order = length(level_sequence)
    height = maximum(level_sequence)
    
    # Compute symmetry factor (simplified)
    symmetry = 1
    for level in 1:height
        count = sum(level_sequence .== level)
        symmetry *= factorial(count)
    end
    
    # Initial coefficient (will be adapted)
    coefficient = 1.0 / factorial(order)
    
    return PlantedTree(
        level_sequence,
        order,
        height,
        coefficient,
        symmetry,
        root_membrane_id,
        zeros(state_dim),
        1.0,  # Fully rooted initially
        zeros(state_dim),
        1.0,
        zeros(state_dim),
        1.0,
        Vector{Vector{Float64}}(),
        1.0
    )
end

"""
    MembraneCompartment(depth, compartment_id, state_dim)

Create a membrane compartment that can host planted trees.
"""
function MembraneCompartment(depth::Int, compartment_id::Int, state_dim::Int)
    return MembraneCompartment(
        depth,
        compartment_id,
        randn(state_dim) .* 0.1,  # Small random initial state
        state_dim,
        Dict("a" => 1, "b" => 1),  # Simple initial multiset
        0.1,  # Moderate evolution rate
        PlantedTree[],
        0,
        0.5,  # Balanced tree influence
        1.0,  # Strong perception grounding
        nothing,
        Int[],
        0.0,
        0.0
    )
end

"""
    create_rooted_membrane_system(;membrane_depths, trees_per_membrane, max_tree_order)

Create a complete rooted membrane-tree system where physics is grounded in perception.
"""
function create_rooted_membrane_system(;
    membrane_depths::Int=4,
    trees_per_membrane::Vector{Int}=[2, 2, 3, 3],
    max_tree_order::Int=6,
    state_dim::Int=32
)
    # Create membrane hierarchy
    membranes = MembraneCompartment[]
    membrane_hierarchy = Dict{Int, Vector{Int}}()
    
    compartment_id = 1
    for depth in 1:membrane_depths
        membrane_hierarchy[depth] = Int[]
        
        # Number of membranes at this depth (exponential decrease)
        num_at_depth = max(1, 4 ÷ depth)
        
        for _ in 1:num_at_depth
            # State dimension decreases with depth (hierarchical abstraction)
            dim = state_dim ÷ depth
            membrane = MembraneCompartment(depth, compartment_id, dim)
            
            push!(membranes, membrane)
            push!(membrane_hierarchy[depth], compartment_id)
            compartment_id += 1
        end
    end
    
    # Set up parent-child relationships
    for depth in 1:(membrane_depths-1)
        for (i, parent_id) in enumerate(membrane_hierarchy[depth])
            # Children are next depth compartments
            if haskey(membrane_hierarchy, depth + 1)
                children = membrane_hierarchy[depth + 1]
                membranes[parent_id].child_membranes = children
                
                for child_id in children
                    membranes[child_id].parent_membrane = parent_id
                end
            end
        end
    end
    
    # Create tree collection (not yet planted)
    all_trees = PlantedTree[]
    trees_by_membrane = Dict{Int, Vector{Int}}()
    
    # Generate tree library
    tree_library = generate_tree_library(max_tree_order)
    
    # Pre-allocate trees for each membrane
    total_trees = 0
    for (depth, mem_ids) in membrane_hierarchy
        num_trees = depth <= length(trees_per_membrane) ? trees_per_membrane[depth] : 2
        
        for mem_id in mem_ids
            trees_by_membrane[mem_id] = Int[]
            
            for _ in 1:num_trees
                # Select tree from library
                tree_idx = (total_trees % length(tree_library)) + 1
                level_seq = tree_library[tree_idx]
                
                # Create tree (not yet rooted)
                tree = PlantedTree(level_seq, mem_id, membranes[mem_id].state_dim)
                tree.rooting_strength = 0.0  # Not planted yet
                
                push!(all_trees, tree)
                push!(trees_by_membrane[mem_id], length(all_trees))
                
                total_trees += 1
            end
        end
    end
    
    return RootedMembraneSystem(
        membranes,
        membrane_depths,
        membrane_hierarchy,
        all_trees,
        trees_by_membrane,
        max_tree_order,
        total_trees,
        0.5,  # Balanced coupling
        0.5,
        0.01,  # Small time step
        0,
        :depth_matched,
        1.0,
        0.0,  # Trees not yet rooted
        0.0,
        0.0,
        0
    )
end

"""
    generate_tree_library(max_order)

Generate library of rooted trees up to given order.
"""
function generate_tree_library(max_order::Int)
    library = Vector{Vector{Int}}()
    
    # Order 1: [1]
    push!(library, [1])
    
    # Order 2: [1, 2]
    if max_order >= 2
        push!(library, [1, 2])
    end
    
    # Order 3: [1, 2, 3], [1, 2, 2]
    if max_order >= 3
        push!(library, [1, 2, 3])
        push!(library, [1, 2, 2])
    end
    
    # Order 4: Multiple structures
    if max_order >= 4
        push!(library, [1, 2, 3, 4])  # Linear
        push!(library, [1, 2, 2, 3])  # Bushy
        push!(library, [1, 2, 3, 3])  # Bushy
        push!(library, [1, 2, 2, 2])  # Very bushy
    end
    
    # Order 5+: Add more complex trees
    for order in 5:max_order
        # Linear chain
        push!(library, collect(1:order))
        
        # Balanced bushy
        bushy = vcat([1, 2], fill(3, order-3), [order÷2 + 2])
        push!(library, bushy)
    end
    
    return library
end

########################################################################
# Tree Planting Operations
########################################################################

"""
    plant_trees_in_membranes!(system; planting_strategy=:depth_matched)

Plant trees into membranes, rooting the physics engine in perception.

Planting strategies:
- :depth_matched - Simple trees at shallow depths, complex at deep
- :random - Random assignment
- :optimal - Optimize for coupling strength
"""
function plant_trees_in_membranes!(
    system::RootedMembraneSystem;
    planting_strategy::Symbol=:depth_matched
)
    system.planting_pattern = planting_strategy
    
    total_rooting = 0.0
    
    for (mem_id, tree_indices) in system.trees_by_membrane
        membrane = system.membranes[mem_id]
        
        for tree_idx in tree_indices
            tree = system.all_trees[tree_idx]
            
            # PLANT THE TREE: Root it in membrane state
            tree.root_state = copy(membrane.state)
            tree.rooting_strength = 1.0
            tree.root_membrane_id = mem_id
            
            # Initialize tree value based on root
            tree.current_value = tree.root_state .* tree.coefficient
            
            # Set growth rate based on depth (deeper = slower)
            tree.growth_rate = 1.0 / membrane.depth
            
            # Add tree to membrane's collection
            push!(membrane.planted_trees, tree)
            membrane.num_trees += 1
            
            total_rooting += 1.0
        end
    end
    
    # Update system statistics
    system.rooting_quality = total_rooting / system.total_trees
    system.physics_grounding = system.rooting_quality
    
    println("🌱 Planted $(system.total_trees) trees across $(length(system.membranes)) membranes")
    println("   Physics engine is now rooted in perception")
    
    return system
end

########################################################################
# Coupled Dynamics
########################################################################

"""
    process_rooted!(system, observation)

Process observation through rooted membrane-tree system.
Physics and perception evolve together through their rooted coupling.
"""
function process_rooted!(
    system::RootedMembraneSystem,
    observation::Vector{Float64}
)
    # 1. Inject observation into outer membranes
    outer_membranes = system.membrane_hierarchy[1]
    
    for mem_id in outer_membranes
        membrane = system.membranes[mem_id]
        obs_dim = min(length(observation), membrane.state_dim)
        
        # Update membrane state with observation
        membrane.state[1:obs_dim] = (1 - membrane.evolution_rate) * membrane.state[1:obs_dim] +
                                   membrane.evolution_rate * observation[1:obs_dim]
    end
    
    # 2. Propagate through membrane hierarchy (perception)
    for depth in 1:(system.num_depths-1)
        parent_ids = system.membrane_hierarchy[depth]
        
        for parent_id in parent_ids
            parent = system.membranes[parent_id]
            
            # Propagate to children (abstraction)
            for child_id in parent.child_membranes
                child = system.membranes[child_id]
                
                # Child receives abstracted parent state
                parent_dim = length(parent.state)
                child_dim = length(child.state)
                
                if parent_dim >= child_dim
                    # Downsample
                    child.state = parent.state[1:child_dim]
                else
                    # Upsample
                    child.state[1:parent_dim] = parent.state
                end
            end
        end
    end
    
    # 3. ROOT UPDATE: Update all tree roots from membrane states
    for tree in system.all_trees
        if tree.rooting_strength > 0
            membrane = system.membranes[tree.root_membrane_id]
            tree.root_state = copy(membrane.state)
        end
    end
    
    # 4. Grow trees (physics computation)
    grow_planted_trees!(system)
    
    # 5. Tree feedback to membranes (physics → perception)
    for (mem_id, tree_indices) in system.trees_by_membrane
        membrane = system.membranes[mem_id]
        
        # Accumulate feedback from all trees in this membrane
        total_feedback = zeros(membrane.state_dim)
        
        for tree_idx in tree_indices
            tree = system.all_trees[tree_idx]
            
            if tree.rooting_strength > 0
                # Tree feeds back into membrane
                feedback_dim = min(length(tree.current_value), membrane.state_dim)
                total_feedback[1:feedback_dim] += tree.feedback_weight * 
                                                  tree.current_value[1:feedback_dim]
            end
        end
        
        # Apply tree influence to membrane
        membrane.state += system.physics_to_perception * membrane.tree_influence * total_feedback
    end
    
    # 6. Compute output from deepest membranes
    deepest_ids = system.membrane_hierarchy[system.num_depths]
    output = vcat([system.membranes[id].state for id in deepest_ids]...)
    
    # Update statistics
    update_rooting_statistics!(system)
    
    system.current_time += system.time_step
    system.step_count += 1
    
    return output
end

"""
    grow_planted_trees!(system)

Grow all planted trees through B-series integration.
Trees use their roots (membrane states) as initial conditions.
"""
function grow_planted_trees!(system::RootedMembraneSystem)
    for tree in system.all_trees
        if tree.rooting_strength == 0
            continue  # Tree not planted
        end
        
        # Elementary differential F(τ)(root)
        # Simplified: compute based on tree structure and root state
        
        h = system.time_step * tree.growth_rate
        
        # For each tree order, compute elementary differential
        if tree.order == 1
            # F([1])(y) = f(y) = -y (simple decay)
            f_tau = -tree.root_state
            
        elseif tree.order == 2
            # F([1,2])(y) = f'(y)·f(y)
            # Approximate f'(y) numerically
            f = -tree.root_state
            f_prime = -ones(length(tree.root_state))  # df/dy for f(y)=-y
            f_tau = f_prime .* f
            
        elseif tree.order == 3
            # F([1,2,3])(y) for linear chain
            f = -tree.root_state
            f_prime = -ones(length(tree.root_state))
            f_tau = f_prime .* f_prime .* f
            
        else
            # Higher order: use tree.order as exponent
            f_tau = (-tree.root_state).^tree.order / factorial(tree.order)
        end
        
        # B-series increment: h * b(τ)/σ(τ) * F(τ)(y)
        increment = h * (tree.coefficient / tree.symmetry_factor) * f_tau
        
        # Update tree value
        tree.current_value = tree.root_state + increment
        
        # Store in history
        push!(tree.integration_history, copy(tree.current_value))
        
        # Compute feedback to membrane
        tree.membrane_feedback = increment  # Tree's contribution
    end
end

"""
    update_rooting_statistics!(system)

Update statistics about rooting quality and system coherence.
"""
function update_rooting_statistics!(system::RootedMembraneSystem)
    total_rooting = 0.0
    total_coherence = 0.0
    
    for tree in system.all_trees
        total_rooting += tree.rooting_strength
        
        # Coherence: how consistent is root with tree value
        if length(tree.integration_history) > 0
            root_deviation = norm(tree.root_state - tree.current_value) / 
                           (norm(tree.root_state) + 1e-10)
            tree.root_stability = exp(-root_deviation)
            total_coherence += tree.root_stability
        end
    end
    
    system.rooting_quality = total_rooting / system.total_trees
    system.system_coherence = total_coherence / system.total_trees
    system.physics_grounding = (system.rooting_quality + system.system_coherence) / 2
end

########################################################################
# Analysis and Visualization
########################################################################

"""
    get_rooting_strength(system, membrane_id)

Get average rooting strength of trees in a membrane.
"""
function get_rooting_strength(system::RootedMembraneSystem, membrane_id::Int)
    if !haskey(system.trees_by_membrane, membrane_id)
        return 0.0
    end
    
    tree_indices = system.trees_by_membrane[membrane_id]
    if isempty(tree_indices)
        return 0.0
    end
    
    total = sum(system.all_trees[i].rooting_strength for i in tree_indices)
    return total / length(tree_indices)
end

"""
    visualize_planted_trees(system)

Print visualization of membrane-tree structure.
"""
function visualize_planted_trees(system::RootedMembraneSystem)
    println("\n" * "="^70)
    println("🌳 ROOTED MEMBRANE-TREE SYSTEM")
    println("="^70)
    
    for depth in 1:system.num_depths
        println("\n📊 Depth $depth:")
        
        for mem_id in system.membrane_hierarchy[depth]
            membrane = system.membranes[mem_id]
            
            println("  │")
            println("  ├─ Membrane $mem_id (dim=$(membrane.state_dim))")
            println("  │  State norm: $(round(norm(membrane.state), digits=4))")
            println("  │  Activation: $(round(membrane.activation, digits=4))")
            
            if haskey(system.trees_by_membrane, mem_id)
                tree_indices = system.trees_by_membrane[mem_id]
                
                for (i, tree_idx) in enumerate(tree_indices)
                    tree = system.all_trees[tree_idx]
                    
                    rooted_marker = tree.rooting_strength > 0.5 ? "🌳" : "🌱"
                    println("  │  ")
                    println("  │  $rooted_marker Tree $(tree_idx): order=$(tree.order), height=$(tree.height)")
                    println("  │     Root: $(tree.level_sequence)")
                    println("  │     Rooting: $(round(tree.rooting_strength, digits=3))")
                    println("  │     Stability: $(round(tree.root_stability, digits=3))")
                    println("  │     Value norm: $(round(norm(tree.current_value), digits=4))")
                end
            end
        end
    end
    
    println("\n" * "="^70)
    println("📈 System Statistics:")
    println("   Rooting quality: $(round(system.rooting_quality, digits=3))")
    println("   System coherence: $(round(system.system_coherence, digits=3))")
    println("   Physics grounding: $(round(system.physics_grounding, digits=3))")
    println("   Total trees: $(system.total_trees)")
    println("   Integration steps: $(system.step_count)")
    println("="^70)
end

end # module RootedMembranePhysics
