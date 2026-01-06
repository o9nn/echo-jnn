"""
Standalone Neuro-Symbolic Demo
Does not require full package installation
"""

# Add parent directory to path
push!(LOAD_PATH, joinpath(@__DIR__, "..", "src"))

using LinearAlgebra
using Random
using Statistics
using Printf

# Load the module directly
include(joinpath(@__DIR__, "..", "src", "DeepTreeEcho", "NeuroSymbolicBridge.jl"))
using .NeuroSymbolicBridge

Random.seed!(42)

println("="^70)
println("🧠 Neuro-Symbolic Deep Tree Echo Architecture Demo")
println("="^70)

# =============================================================================
# Part 1: Create System
# =============================================================================

println("\n📐 Creating neuro-symbolic system...")
println("   - Perception depth: 4 (P-system membrane hierarchy)")
println("   - Reasoning order: 6 (B-series rooted tree order)")
println("   - World model dim: 64 (latent state space)")
println("   - Morphogenetic grid: 8³ (3D spatial field)")

system = NeuroSymbolicBridge.create_neuro_symbolic_system(
    perception_depth = 4,
    reasoning_order = 6,
    world_model_dim = 64,
    obs_dim = 32,
    action_dim = 8,
    morphogenetic_grid = (8, 8, 8)
)

println("✓ System created successfully")

# =============================================================================
# Part 2: Initialize Morphogenetic Field
# =============================================================================

println("\n🌀 Initializing morphogenetic field...")
NeuroSymbolicBridge.initialize_morphogenetic!(system, seed_pattern=:spiral)

println(@sprintf("✓ Organization metric: %.4f", system.morphogenetic_field.organization_metric))

# =============================================================================
# Part 3: Perception-Reasoning Loop
# =============================================================================

println("\n🔄 Running perception → reasoning → prediction loop...")

num_steps = 20
for step in 1:num_steps
    obs = randn(32)
    action, world_state, salience = NeuroSymbolicBridge.unified_step!(system, obs)
    
    if step % 5 == 0
        println(@sprintf("   Step %2d: FE=%.3f, Coupling=%.3f, Balance=%.3f",
                        step,
                        system.active_inference.free_energy,
                        system.perception_reasoning_coupling,
                        system.nomological_balance))
    end
end

println("✓ Completed $(num_steps) cycles")

# =============================================================================
# Part 4: Analyze Components
# =============================================================================

println("\n🔬 Component Analysis:")

println("\n  📊 Neural Perception (P-system membranes):")
println(@sprintf("     Depth: %d layers", system.perception.depth))
println(@sprintf("     Feature entropy: %.4f", system.perception.feature_entropy))

println("\n  🌳 Symbolic Reasoning (B-series trajectories):")
println(@sprintf("     Tree order: %d", system.reasoning.order))
println(@sprintf("     Number of trees: %d", length(system.reasoning.trees)))
println(@sprintf("     Decision entropy: %.4f", system.reasoning.decision_entropy))

println("\n  🌍 World Model (predictive engine):")
println(@sprintf("     Latent dimension: %d", system.world_model.dimension))
println(@sprintf("     Prediction error: %.4f", system.world_model.prediction_error))
println(@sprintf("     Temporal coherence: %.4f", system.world_model.temporal_coherence))

println("\n  ⚡ Active Inference:")
println(@sprintf("     Free energy: %.4f", system.active_inference.free_energy))
println(@sprintf("     Complexity: %.4f", system.active_inference.complexity))
println(@sprintf("     Accuracy: %.4f", system.active_inference.accuracy))

# =============================================================================
# Part 5: Evolve Morphogenetic Field
# =============================================================================

println("\n🧬 Evolving morphogenetic field...")
initial_org = system.morphogenetic_field.organization_metric

NeuroSymbolicBridge.evolve_morphogenetic!(system, generations=5, dt=0.1)

final_org = system.morphogenetic_field.organization_metric
println(@sprintf("   Organization: %.4f → %.4f (Δ=%+.4f)",
                initial_org, final_org, final_org - initial_org))

# =============================================================================
# Part 6: Integration Metrics
# =============================================================================

println("\n📊 System-Wide Integration:")
println(@sprintf("   Perception-Reasoning coupling: %.4f", system.perception_reasoning_coupling))
println(@sprintf("   Nomological balance: %.4f", system.nomological_balance))
println(@sprintf("   Cognitive synergy: %.4f", system.cognitive_synergy))

health_score = (abs(system.perception_reasoning_coupling) + 
                system.nomological_balance + 
                system.cognitive_synergy) / 3.0
println(@sprintf("\n   🏥 System Health: %.1f%%", health_score * 100))

# =============================================================================
# Summary
# =============================================================================

println("\n" * "="^70)
println("📝 Summary")
println("="^70)

println("\n✨ Successfully demonstrated neuro-symbolic architecture:")
println("   • Neural perception through P-system membrane embeddings")
println("   • Symbolic reasoning via B-series differential trajectories")
println("   • Predictive world model with nomological balance")
println("   • Morphogenetic self-assembly through active inference")
println("   • Relevance realization via opponent processing")

println("\n" * "="^70)
println("🎉 Demo completed successfully!")
println("="^70)
