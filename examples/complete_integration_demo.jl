"""
Complete Neuro-Symbolic Integration Demo

Demonstrates the full integration of:
1. Merged Attention Kalman Filter (observation vs simulation fusion)
2. Membrane-Tree Mapping (latent states → tree parameters)
3. Rooted Membrane Physics (trees planted in membranes)

This creates a complete system where:
- Observations are merged with simulations via attention
- Membrane states directly generate tree physical parameters
- Trees are literally rooted in membrane perceptual substrate
- Physics engine is grounded in neural perception
"""

push!(LOAD_PATH, joinpath(@__DIR__, "..", "src"))

using LinearAlgebra
using Random
using Statistics
using Printf

# Load modules
include(joinpath(@__DIR__, "..", "src", "DeepTreeEcho", "NeuroSymbolicBridge.jl"))
include(joinpath(@__DIR__, "..", "src", "DeepTreeEcho", "MergedAttentionFilter.jl"))
include(joinpath(@__DIR__, "..", "src", "DeepTreeEcho", "MembraneTreeMapping.jl"))
include(joinpath(@__DIR__, "..", "src", "DeepTreeEcho", "RootedMembranePhysics.jl"))

using .NeuroSymbolicBridge
using .MergedAttentionFilter
using .MembraneTreeMapping
using .RootedMembranePhysics

Random.seed!(42)

println("="^70)
println("🧠🌳 Complete Neuro-Symbolic Integration Demo")
println("="^70)

# =============================================================================
# Part 1: Create Rooted Membrane-Tree System
# =============================================================================

println("\n📐 Part 1: Creating Rooted Membrane-Tree System...")
println("   Trees will be planted directly in membrane compartments")

rooted_system = create_rooted_membrane_system(
    membrane_depths = 3,
    trees_per_membrane = [2, 3, 4],
    max_tree_order = 5,
    state_dim = 16
)

println("✓ Rooted system created")
println(@sprintf("   Membranes: %d across %d depths", 
                length(rooted_system.membranes), rooted_system.num_depths))
println(@sprintf("   Trees: %d ready to plant", rooted_system.total_trees))

# Plant trees in membranes
println("\n🌱 Planting trees in membranes...")
plant_trees_in_membranes!(rooted_system, planting_strategy=:depth_matched)

println(@sprintf("   Rooting quality: %.3f", rooted_system.rooting_quality))
println(@sprintf("   Physics grounding: %.3f", rooted_system.physics_grounding))

# =============================================================================
# Part 2: Create Membrane-Tree Mapping
# =============================================================================

println("\n📐 Part 2: Creating Membrane-Tree Mapping...")
println("   Maps membrane latent states → tree physical parameters")

mapper = create_membrane_tree_mapping(
    membrane_dim = 16,
    max_tree_order = 5,
    num_trees = 10
)

println("✓ Mapping created")
println(@sprintf("   Membrane dim: %d", mapper.membrane_dim))
println(@sprintf("   Tree library size: %d", length(mapper.tree_library)))

# =============================================================================
# Part 3: Create Merged Attention Filter
# =============================================================================

println("\n📐 Part 3: Creating Merged Attention Kalman Filter...")
println("   Fuses observations with simulations via learned attention")

attention_filter = create_merged_attention_filter(
    state_dim = 16,
    obs_dim = 16,
    filter_type = :ekf
)

println("✓ Filter created")
println(@sprintf("   Filter type: %s", attention_filter.kalman.filter_type))
println(@sprintf("   State dimension: %d", attention_filter.kalman.state_dim))

# =============================================================================
# Part 4: Unified Processing Loop
# =============================================================================

println("\n🔄 Part 4: Running Unified Processing Loop...")
println("   Observation → Attention → Membrane → Tree → Physics → Output")

num_steps = 15

for step in 1:num_steps
    # Generate observation
    observation = randn(16)
    
    # 1. KALMAN PREDICTION: Predict what we should observe
    kalman_predict!(attention_filter, zeros(16))
    simulated_obs = attention_filter.kalman.observation_model(attention_filter.kalman.state)
    
    # 2. MERGED ATTENTION: Merge observation with simulation
    merged_obs, alpha = merge_with_attention!(attention_filter, observation, simulated_obs)
    
    # 3. KALMAN UPDATE: Update state with merged observation
    kalman_update!(attention_filter, merged_obs)
    filtered_state = attention_filter.kalman.state
    
    # 4. MEMBRANE PROCESSING: Process through rooted membrane-tree system
    rooted_output = process_rooted!(rooted_system, filtered_state)
    
    # 5. MEMBRANE STATE → TREE PARAMETERS: Map deepest membrane to tree params
    deepest_membrane = rooted_system.membranes[end]
    tree_params = map_membrane_to_tree!(mapper, deepest_membrane.state)
    
    # 6. UPDATE MAPPING: Learn to maintain consistency
    update_mapping!(mapper, deepest_membrane.state, tree_params, 1.0)
    
    if step % 5 == 0
        println(@sprintf("   Step %2d:", step))
        println(@sprintf("     Attention α: %.3f (%.1f%% obs, %.1f%% sim)",
                        alpha, alpha*100, (1-alpha)*100))
        println(@sprintf("     Filter innovation: %.4f", 
                        norm(attention_filter.kalman.innovation)))
        println(@sprintf("     Tree spectral ρ: %.3f", tree_params.spectral_radius))
        println(@sprintf("     Physics grounding: %.3f", rooted_system.physics_grounding))
    end
end

println("✓ Completed $(num_steps) unified processing steps")

# =============================================================================
# Part 5: Visualize Rooted Structure
# =============================================================================

println("\n📊 Part 5: Visualizing Rooted Membrane-Tree Structure...")
visualize_planted_trees(rooted_system)

# =============================================================================
# Part 6: Analyze Integration
# =============================================================================

println("\n🔬 Part 6: Integration Analysis...")

println("\n  🎯 Merged Attention Filter:")
filter_state = get_filter_state(attention_filter)
println(@sprintf("     State norm: %.4f", norm(filter_state[:state])))
println(@sprintf("     Attention weight: %.3f", filter_state[:attention_weight]))
println(@sprintf("     Filter consistency: %.3f", filter_state[:filter_consistency]))
println(@sprintf("     Attention stability: %.3f", filter_state[:attention_stability]))
println(@sprintf("     Obs-Sim divergence: %.4f", filter_state[:obs_sim_divergence]))

println("\n  🗺️  Membrane-Tree Mapping:")
println(@sprintf("     Mapping stability: %.3f", mapper.mapping_stability))
println(@sprintf("     Membrane→Tree coherence: %.3f", mapper.membrane_to_tree_coherence))
println(@sprintf("     Tree→Membrane coherence: %.3f", mapper.tree_to_membrane_coherence))

println("\n  🌳 Rooted Physics:")
println(@sprintf("     Rooting quality: %.3f", rooted_system.rooting_quality))
println(@sprintf("     System coherence: %.3f", rooted_system.system_coherence))
println(@sprintf("     Physics grounding: %.3f", rooted_system.physics_grounding))

# Compute average tree rooting per depth
println("\n  📏 Rooting Strength by Depth:")
for depth in 1:rooted_system.num_depths
    total_rooting = 0.0
    count = 0
    
    for mem_id in rooted_system.membrane_hierarchy[depth]
        rooting = get_rooting_strength(rooted_system, mem_id)
        total_rooting += rooting
        count += 1
    end
    
    avg_rooting = count > 0 ? total_rooting / count : 0.0
    println(@sprintf("     Depth %d: %.3f", depth, avg_rooting))
end

# =============================================================================
# Part 7: Demonstrate Complete Flow
# =============================================================================

println("\n🌊 Part 7: Complete Information Flow Demonstration...")

println("\n  Raw Observation (sensor data)")
raw_obs = randn(16)
println(@sprintf("     Norm: %.4f", norm(raw_obs)))

println("\n  ↓ Merged Attention (α·obs + (1-α)·sim)")
sim_obs = attention_filter.kalman.observation_model(attention_filter.kalman.state)
merged, alpha = merge_with_attention!(attention_filter, raw_obs, sim_obs)
println(@sprintf("     Merged norm: %.4f", norm(merged)))
println(@sprintf("     Attention: %.3f", alpha))

println("\n  ↓ Kalman Filter (state estimation)")
kalman_update!(attention_filter, merged)
state = attention_filter.kalman.state
println(@sprintf("     State norm: %.4f", norm(state)))
println(@sprintf("     Innovation: %.4f", norm(attention_filter.kalman.innovation)))

println("\n  ↓ Rooted Membrane Processing")
output = process_rooted!(rooted_system, state)
println(@sprintf("     Output norm: %.4f", norm(output)))
println(@sprintf("     Trees grown: %d", rooted_system.total_trees))

println("\n  ↓ Membrane → Tree Mapping")
deepest_membrane = rooted_system.membranes[end]
tree_params = map_membrane_to_tree!(mapper, deepest_membrane.state)
println(@sprintf("     Active trees: %d", length(tree_params.active_trees)))
println(@sprintf("     Spectral radius: %.3f", tree_params.spectral_radius))
println(@sprintf("     Time step: %.4f", tree_params.time_step))

println("\n  ↓ Tree → Membrane (Inverse)")
reconstructed = map_tree_to_membrane!(mapper, tree_params)
reconstruction_error = norm(deepest_membrane.state - reconstructed)
println(@sprintf("     Reconstruction error: %.4f", reconstruction_error))

# =============================================================================
# Summary
# =============================================================================

println("\n" * "="^70)
println("📝 Summary: Complete Neuro-Symbolic Integration")
println("="^70)

println("\n🎯 MERGED ATTENTION FILTER")
println("   Optimally fuses observations with model simulations")
println("   • Learned attention balances reliability")
println("   • Non-linear Kalman for state estimation")
println(@sprintf("   → Achieved %.1f%% filter consistency", 
                filter_state[:filter_consistency] * 100))

println("\n🗺️  MEMBRANE-TREE MAPPING")
println("   Bidirectional mapping between perception and reasoning")
println("   • Membrane states generate tree parameters")
println("   • Tree structures reconstruct membrane states")
println(@sprintf("   → Achieved %.1f%% mapping stability", 
                mapper.mapping_stability * 100))

println("\n🌳 ROOTED MEMBRANE PHYSICS")
println("   Physics engine literally rooted in perceptual substrate")
println("   • Trees planted in membrane compartments")
println("   • Tree roots = membrane states")
println("   • Unified perception-physics dynamics")
println(@sprintf("   → Achieved %.1f%% physics grounding", 
                rooted_system.physics_grounding * 100))

overall_integration = (filter_state[:filter_consistency] +
                      mapper.mapping_stability +
                      rooted_system.physics_grounding) / 3

println("\n" * "="^70)
println(@sprintf("✨ Overall Integration Quality: %.1f%%", overall_integration * 100))
println("="^70)

println("\n🎉 Complete neuro-symbolic integration demonstrated successfully!")
println("\nKey Achievements:")
println("  ✓ Observations merged with simulations via attention")
println("  ✓ Membrane latent states map to tree physical parameters")
println("  ✓ Trees rooted directly in membrane perceptual substrate")
println("  ✓ Physics engine grounded in neural perception")
println("  ✓ Unified system with coupled dynamics")
println("="^70)
