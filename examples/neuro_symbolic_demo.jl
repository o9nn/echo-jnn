"""
# Neuro-Symbolic Deep Tree Echo Demo

Demonstrates the integrated neuro-symbolic architecture where:
- Neural Perception: P-system nested membranes as learnable feature embeddings
- Symbolic Reasoning: B-series rooted forests as differentiable behavior trees
- World Model: Predictive engine unifying both through active inference
- Morphogenetic Field: Self-assembly through gradient-driven organization
- Relevance Realization: Opponent processing for cognitive synergy

This implements the vision of catalyzing self-assembly through morphogenetic
active inference, where the neural "perception" outputs symbolic state
representations, the symbolic "reasoning" solves differential equations as
specialized behavior trajectories, and the "world model" brings both into
nomological balance through generative diffusion grounded in reality.
"""

using DeepTreeEcho
using DeepTreeEcho.NeuroSymbolicBridge
using Random
using LinearAlgebra
using Printf

Random.seed!(42)

println("="^70)
println("🧠 Neuro-Symbolic Deep Tree Echo Architecture Demo")
println("="^70)

# =============================================================================
# Part 1: Create Neuro-Symbolic System
# =============================================================================

println("\n📐 Creating neuro-symbolic system...")
println("   - Perception depth: 4 (P-system membrane hierarchy)")
println("   - Reasoning order: 6 (B-series rooted tree order)")
println("   - World model dim: 128 (latent state space)")
println("   - Morphogenetic grid: 16³ (3D spatial field)")

system = create_neuro_symbolic_system(
    perception_depth = 4,
    reasoning_order = 6,
    world_model_dim = 128,
    obs_dim = 64,
    action_dim = 8,
    morphogenetic_grid = (16, 16, 16)
)

println("✓ System created successfully")

# =============================================================================
# Part 2: Initialize Morphogenetic Field
# =============================================================================

println("\n🌀 Initializing morphogenetic field for self-assembly...")
println("   Pattern type: Spiral (Fibonacci-like organization)")

initialize_morphogenetic!(system, seed_pattern=:spiral)

println(@sprintf("✓ Morphogenetic field initialized"))
println(@sprintf("   Organization metric: %.4f", system.morphogenetic_field.organization_metric))

# =============================================================================
# Part 3: Perception-Reasoning-Prediction Loop
# =============================================================================

println("\n🔄 Running perception → reasoning → prediction loop...")

num_steps = 20
observations = [randn(64) for _ in 1:num_steps]

actions = []
states = []
saliences = []

for (step, obs) in enumerate(observations)
    action, world_state, salience = unified_step!(system, obs)
    
    push!(actions, action)
    push!(states, world_state)
    push!(saliences, salience)
    
    if step % 5 == 0
        println(@sprintf("   Step %2d: Free Energy=%.3f, Coupling=%.3f, Balance=%.3f",
                        step,
                        system.active_inference.free_energy,
                        system.perception_reasoning_coupling,
                        system.nomological_balance))
    end
end

println("✓ Completed $(num_steps) perception-reasoning cycles")

# =============================================================================
# Part 4: Analyze Neural Perception (Deep Aspect)
# =============================================================================

println("\n🔬 Analyzing Neural Perception (P-system membranes as embeddings)...")

perception = system.perception
println(@sprintf("   Membrane depth: %d layers", perception.depth))
println("   Membrane sizes: ", perception.membrane_sizes)
println(@sprintf("   Feature entropy: %.4f", perception.feature_entropy))
println(@sprintf("   Total activations recorded: %d", length(perception.activation_history)))

# Compute embedding quality
if length(perception.activation_history) > 10
    recent_activations = perception.activation_history[end-9:end]
    activation_matrix = hcat(recent_activations...)
    
    # Measure diversity via rank
    embedding_rank = rank(activation_matrix)
    max_rank = size(activation_matrix, 1)
    embedding_quality = embedding_rank / max_rank
    
    println(@sprintf("   Embedding quality (rank/dim): %.2f%%", embedding_quality * 100))
end

# =============================================================================
# Part 5: Analyze Symbolic Reasoning (Tree Aspect)
# =============================================================================

println("\n🌳 Analyzing Symbolic Reasoning (B-series as behavior trees)...")

reasoning = system.reasoning
println(@sprintf("   Tree order: %d", reasoning.order))
println(@sprintf("   Number of rooted trees: %d", length(reasoning.trees)))
println(@sprintf("   Decision entropy: %.4f", reasoning.decision_entropy))
println(@sprintf("   Trajectory history length: %d", length(reasoning.trajectory_history)))

# Analyze trajectory structure (differentiable behavior)
if length(reasoning.trajectory_history) > 5
    traj_start = reasoning.trajectory_history[1]
    traj_end = reasoning.trajectory_history[end]
    
    trajectory_displacement = norm(traj_end - traj_start)
    println(@sprintf("   Trajectory displacement: %.4f", trajectory_displacement))
    
    # Measure smoothness (second derivative)
    smoothness = 0.0
    for i in 3:length(reasoning.trajectory_history)
        d2 = reasoning.trajectory_history[i] - 2*reasoning.trajectory_history[i-1] + 
             reasoning.trajectory_history[i-2]
        smoothness += norm(d2)
    end
    smoothness /= length(reasoning.trajectory_history) - 2
    println(@sprintf("   Trajectory smoothness: %.4f (lower is smoother)", smoothness))
end

# =============================================================================
# Part 6: Analyze World Model (Predictive Engine)
# =============================================================================

println("\n🌍 Analyzing World Model (nomological balance)...")

wm = system.world_model
println(@sprintf("   Latent dimension: %d", wm.dimension))
println(@sprintf("   Prediction error: %.4f", wm.prediction_error))
println(@sprintf("   Temporal coherence: %.4f", wm.temporal_coherence))
println(@sprintf("   State norm: %.4f", norm(wm.state)))

# Measure state space coverage
state_covariance_det = det(wm.state_covariance + I)
state_entropy = 0.5 * log(state_covariance_det)
println(@sprintf("   State entropy: %.4f", state_entropy))

# =============================================================================
# Part 7: Active Inference Analysis
# =============================================================================

println("\n⚡ Analyzing Active Inference (free energy minimization)...")

ai = system.active_inference
println(@sprintf("   Free energy: %.4f", ai.free_energy))
println(@sprintf("   Complexity: %.4f", ai.complexity))
println(@sprintf("   Accuracy: %.4f", ai.accuracy))
println(@sprintf("   Action dimension: %d", ai.action_dim))

if length(ai.inference_history) > 1
    # Measure convergence
    recent_fe = ai.inference_history[max(1, end-9):end]
    fe_variance = var(recent_fe)
    fe_trend = recent_fe[end] - recent_fe[1]
    
    println(@sprintf("   Free energy variance: %.6f", fe_variance))
    println(@sprintf("   Free energy trend: %.4f", fe_trend))
    
    if fe_variance < 0.01
        println("   ✓ System converged (low variance)")
    else
        println("   → System still adapting (high variance)")
    end
end

# =============================================================================
# Part 8: Evolve Morphogenetic Field
# =============================================================================

println("\n🧬 Evolving morphogenetic field (self-assembly)...")
println("   Running reaction-diffusion dynamics...")

initial_org = system.morphogenetic_field.organization_metric

evolve_morphogenetic!(system, generations=10, dt=0.1)

final_org = system.morphogenetic_field.organization_metric
org_change = final_org - initial_org

println(@sprintf("   Initial organization: %.4f", initial_org))
println(@sprintf("   Final organization: %.4f", final_org))
println(@sprintf("   Change: %+.4f", org_change))

if org_change > 0
    println("   ✓ Self-assembly increased structure")
else
    println("   → Self-assembly still equilibrating")
end

# =============================================================================
# Part 9: Relevance Realization Analysis
# =============================================================================

println("\n🎯 Analyzing Relevance Realization (cognitive synergy)...")

rr = system.relevance_realization
println(@sprintf("   Synergy coefficient: %.4f", rr.synergy_coefficient))
println(@sprintf("   Relevance threshold: %.2f", rr.relevance_threshold))

# Analyze salience distribution
if length(rr.salience_map) > 0
    salience_max = maximum(abs.(rr.salience_map))
    salience_mean = mean(abs.(rr.salience_map))
    
    println(@sprintf("   Salience maximum: %.4f", salience_max))
    println(@sprintf("   Salience mean: %.4f", salience_mean))
    
    # Find most salient dimensions
    top_k = 5
    sorted_indices = sortperm(abs.(rr.salience_map), rev=true)
    println("   Most salient dimensions: ", sorted_indices[1:min(top_k, end)])
end

# Analyze opponent processing
if length(rr.channel_positive) > 0 && length(rr.channel_negative) > 0
    pos_energy = sum(rr.channel_positive.^2)
    neg_energy = sum(rr.channel_negative.^2)
    opponent_balance = pos_energy / (pos_energy + neg_energy + 1e-10)
    
    println(@sprintf("   Opponent balance (pos/(pos+neg)): %.2f%%", opponent_balance * 100))
end

# =============================================================================
# Part 10: System-Wide Integration Metrics
# =============================================================================

println("\n📊 System-Wide Integration Metrics...")

println(@sprintf("   Perception-Reasoning coupling: %.4f", system.perception_reasoning_coupling))
println(@sprintf("   Nomological balance: %.4f", system.nomological_balance))
println(@sprintf("   Cognitive synergy: %.4f", system.cognitive_synergy))
println(@sprintf("   System time: %.2f", system.time))
println(@sprintf("   Generation: %d", system.generation))

# Overall system health
health_score = (abs(system.perception_reasoning_coupling) + 
                system.nomological_balance + 
                system.cognitive_synergy) / 3.0

println(@sprintf("\n   🏥 Overall System Health: %.2f%%", health_score * 100))

if health_score > 0.7
    println("   ✓ System showing strong integration")
elseif health_score > 0.4
    println("   → System moderately integrated")
else
    println("   ⚠ System needs more training")
end

# =============================================================================
# Summary
# =============================================================================

println("\n" * "="^70)
println("📝 Summary: Neuro-Symbolic Architecture")
println("="^70)

println("\n🧠 NEURAL PERCEPTION (Deep Aspect - P-Systems)")
println("   P-system nested membranes function as learnable feature embeddings,")
println("   evolving hierarchically like vision encoder layers.")
println(@sprintf("   → Achieved %.2f%% embedding quality with %d-layer hierarchy", 
                embedding_quality * 100, perception.depth))

println("\n🌳 SYMBOLIC REASONING (Tree Aspect - B-Series)")  
println("   B-series rooted forest ridges resolve Runge-Kutta gradient descent")
println("   as differentiable behavior tree trajectories.")
println(@sprintf("   → Generated %d rooted trees up to order %d for physics engine",
                length(reasoning.trees), reasoning.order))

println("\n🌍 WORLD MODEL (Unifying Predictive Engine)")
println("   Brings perception and reasoning into nomological balance through")
println("   generative diffusion grounded in proven reality.")
println(@sprintf("   → Temporal coherence: %.2f%%, Prediction error: %.4f",
                wm.temporal_coherence * 100, wm.prediction_error))

println("\n⚡ ACTIVE INFERENCE (Morphogenetic Self-Assembly)")
println("   Minimizes free energy to catalyze self-assembly through")
println("   morphogenetic field gradients and active inference.")
println(@sprintf("   → Free energy: %.4f, Organization: %.4f",
                ai.free_energy, final_org))

println("\n🎯 RELEVANCE REALIZATION (Cognitive Synergy)")
println("   Opponent processing creates echo-state resonance for")
println("   identifying salient patterns through cognitive synergy.")
println(@sprintf("   → Synergy coefficient: %.4f, Overall health: %.2f%%",
                rr.synergy_coefficient, health_score * 100))

println("\n" * "="^70)
println("✨ The neuro-symbolic architecture successfully unifies:")
println("   • Deep learning perception (P-system membrane embeddings)")
println("   • Symbolic physics reasoning (B-series differential trajectories)")
println("   • Predictive world modeling (generative diffusion)")
println("   • Morphogenetic self-assembly (active inference)")
println("   • Relevance realization (opponent processing)")
println("="^70)
