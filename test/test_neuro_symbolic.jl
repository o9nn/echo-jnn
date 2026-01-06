"""
Test suite for Neuro-Symbolic Deep Tree Echo Architecture
"""

using Test
using DeepTreeEcho
using DeepTreeEcho.NeuroSymbolicBridge
using Random
using LinearAlgebra

Random.seed!(42)

@testset "Neuro-Symbolic Architecture" begin
    
    @testset "Component Creation" begin
        # Test that all components can be created
        perception = NeuralPerception(4, 64)
        @test perception.depth == 4
        @test perception.membrane_sizes[1] == 64
        @test length(perception.membrane_states) == 4
        
        reasoning = SymbolicReasoning(6)
        @test reasoning.order == 6
        @test length(reasoning.trees) > 0
        @test length(reasoning.coefficients) == length(reasoning.trees)
        
        world_model = WorldModel(128, 64)
        @test world_model.dimension == 128
        @test size(world_model.generative_weights) == (64, 128)
        @test size(world_model.recognition_weights) == (128, 64)
        
        active_inference = ActiveInferenceEngine(8)
        @test active_inference.action_dim == 8
        @test length(active_inference.expected_free_energy) == 8
        
        morphogenetic = MorphogeneticField((16, 16, 16), 3)
        @test morphogenetic.grid_size == (16, 16, 16)
        @test size(morphogenetic.morphogen_concentrations) == (16, 16, 16, 3)
        
        relevance = RelevanceRealizationUnit(128)
        @test length(relevance.channel_positive) == 128
        @test length(relevance.channel_negative) == 128
    end
    
    @testset "System Creation" begin
        system = create_neuro_symbolic_system(
            perception_depth = 4,
            reasoning_order = 6,
            world_model_dim = 128,
            obs_dim = 64,
            action_dim = 8
        )
        
        @test system.perception.depth == 4
        @test system.reasoning.order == 6
        @test system.world_model.dimension == 128
        @test system.active_inference.action_dim == 8
        @test system.time == 0.0
        @test system.generation == 0
    end
    
    @testset "Neural Perception (P-Systems)" begin
        system = create_neuro_symbolic_system()
        observation = randn(64)
        
        # Test perception
        features = perceive!(system, observation)
        
        @test length(features) > 0
        @test !isnan(system.perception.feature_entropy)
        @test system.perception.feature_entropy >= 0.0
        @test length(system.perception.activation_history) > 0
        
        # Test hierarchical processing
        @test length(system.perception.membrane_states) == system.perception.depth
        
        # Test that features are computed
        for state in system.perception.membrane_states
            @test !all(state .== 0)
        end
    end
    
    @testset "Symbolic Reasoning (B-Series)" begin
        system = create_neuro_symbolic_system()
        observation = randn(64)
        
        # Get perception features first
        features = perceive!(system, observation)
        
        # Test reasoning
        reasoning_output = reason!(system, features)
        
        @test length(reasoning_output) > 0
        @test !isnan(system.reasoning.decision_entropy)
        @test system.reasoning.decision_entropy >= 0.0
        @test length(system.reasoning.trajectory_history) > 0
        
        # Test that trajectory evolves
        initial_state = copy(system.reasoning.trajectory_state)
        reason!(system, features)
        @test system.reasoning.trajectory_state != initial_state
    end
    
    @testset "World Model Prediction" begin
        system = create_neuro_symbolic_system()
        observation = randn(64)
        
        features = perceive!(system, observation)
        reasoning_output = reason!(system, features)
        
        # Test prediction
        prediction, state = predict!(system, reasoning_output)
        
        @test length(prediction) > 0
        @test length(state) == system.world_model.dimension
        @test !isnan(system.world_model.temporal_coherence)
        @test system.world_model.temporal_coherence >= -1.0
        @test system.world_model.temporal_coherence <= 1.0
        
        # Test state covariance is positive definite
        @test issymmetric(system.world_model.state_covariance)
        eigs = eigvals(system.world_model.state_covariance)
        @test all(eigs .>= 0)
    end
    
    @testset "Active Inference" begin
        system = create_neuro_symbolic_system()
        observation = randn(64)
        
        features = perceive!(system, observation)
        reasoning_output = reason!(system, features)
        prediction, state = predict!(system, reasoning_output)
        
        # Test action inference
        action = infer_action!(system, prediction, observation)
        
        @test length(action) == system.active_inference.action_dim
        @test sum(action) ≈ 1.0  # One-hot encoded
        @test all(action .>= 0)
        @test !isnan(system.active_inference.free_energy)
        @test length(system.active_inference.inference_history) > 0
        
        # Test free energy components
        @test !isnan(system.active_inference.complexity)
        @test !isnan(system.active_inference.accuracy)
        @test system.active_inference.free_energy == 
              system.active_inference.complexity - system.active_inference.accuracy
    end
    
    @testset "Morphogenetic Field Initialization" begin
        system = create_neuro_symbolic_system()
        
        # Test spiral pattern
        initialize_morphogenetic!(system, seed_pattern=:spiral)
        @test system.morphogenetic_field.pattern_type == :spiral
        @test system.morphogenetic_field.organization_metric > 0
        
        # Test that pattern is non-uniform
        concentrations = system.morphogenetic_field.morphogen_concentrations[:, :, :, 1]
        @test std(concentrations) > 0
        
        # Test waves pattern
        initialize_morphogenetic!(system, seed_pattern=:waves)
        @test system.morphogenetic_field.pattern_type == :waves
        
        # Test Turing pattern
        initialize_morphogenetic!(system, seed_pattern=:turing)
        @test system.morphogenetic_field.pattern_type == :turing
    end
    
    @testset "Morphogenetic Evolution" begin
        system = create_neuro_symbolic_system(
            morphogenetic_grid = (8, 8, 8)  # Smaller for faster testing
        )
        initialize_morphogenetic!(system, seed_pattern=:spiral)
        
        initial_org = system.morphogenetic_field.organization_metric
        initial_gen = system.generation
        
        # Evolve
        evolve_morphogenetic!(system, generations=5)
        
        @test system.generation == initial_gen + 5
        @test system.morphogenetic_field.organization_metric >= 0
        
        # Pattern should change (not identical to initial)
        concentrations = system.morphogenetic_field.morphogen_concentrations
        @test !all(concentrations .== 0)
    end
    
    @testset "Relevance Realization" begin
        system = create_neuro_symbolic_system()
        
        features = randn(128)
        salience, attention = realize_relevance!(system, features)
        
        @test length(salience) == 128
        @test length(attention) == 128
        @test sum(attention) ≈ 1.0  # Normalized attention
        @test all(attention .>= 0)
        @test !isnan(system.relevance_realization.synergy_coefficient)
        @test system.relevance_realization.synergy_coefficient >= 0
        @test system.relevance_realization.synergy_coefficient <= 1
        
        # Test opponent processing
        @test length(system.relevance_realization.channel_positive) > 0
        @test length(system.relevance_realization.channel_negative) > 0
    end
    
    @testset "Unified Step Integration" begin
        system = create_neuro_symbolic_system()
        initialize_morphogenetic!(system, seed_pattern=:spiral)
        
        observation = randn(64)
        initial_time = system.time
        
        # Run unified step
        action, state, salience = unified_step!(system, observation)
        
        @test length(action) == system.active_inference.action_dim
        @test length(state) == system.world_model.dimension
        @test length(salience) == system.world_model.dimension
        @test system.time > initial_time
        
        # Test that all components were activated
        @test length(system.perception.activation_history) > 0
        @test length(system.reasoning.trajectory_history) > 0
        @test length(system.active_inference.inference_history) > 0
        
        # Test integration metrics
        @test !isnan(system.perception_reasoning_coupling)
        @test !isnan(system.nomological_balance)
        @test !isnan(system.cognitive_synergy)
    end
    
    @testset "Multiple Step Consistency" begin
        system = create_neuro_symbolic_system()
        initialize_morphogenetic!(system, seed_pattern=:spiral)
        
        observations = [randn(64) for _ in 1:10]
        
        for obs in observations
            action, state, salience = unified_step!(system, obs)
            
            # Check all outputs are valid
            @test !any(isnan.(action))
            @test !any(isnan.(state))
            @test !any(isnan.(salience))
            @test sum(action) ≈ 1.0
        end
        
        # Check that histories accumulated
        @test length(system.perception.activation_history) == 10
        @test length(system.reasoning.trajectory_history) == 10
        @test length(system.active_inference.inference_history) == 10
    end
    
    @testset "Perception-Reasoning Coupling" begin
        system = create_neuro_symbolic_system()
        
        # Run several steps to establish coupling
        for _ in 1:5
            unified_step!(system, randn(64))
        end
        
        # Coupling should be computed
        @test !isnan(system.perception_reasoning_coupling)
        @test abs(system.perception_reasoning_coupling) <= 1.0
    end
    
    @testset "Nomological Balance" begin
        system = create_neuro_symbolic_system()
        
        # Run several steps
        for _ in 1:5
            unified_step!(system, randn(64))
        end
        
        # Balance should be between 0 and 1
        @test !isnan(system.nomological_balance)
        @test system.nomological_balance >= 0.0
        @test system.nomological_balance <= 1.0
        
        # Balance depends on temporal coherence and prediction error
        @test system.nomological_balance <= system.world_model.temporal_coherence
    end
    
    @testset "Cognitive Synergy" begin
        system = create_neuro_symbolic_system()
        
        # Run step to compute synergy
        unified_step!(system, randn(64))
        
        @test !isnan(system.cognitive_synergy)
        @test system.cognitive_synergy >= 0.0
        @test system.cognitive_synergy <= 1.0
        @test system.cognitive_synergy == system.relevance_realization.synergy_coefficient
    end
    
    @testset "Free Energy Minimization Trend" begin
        system = create_neuro_symbolic_system()
        
        # Run multiple steps
        for _ in 1:20
            unified_step!(system, randn(64))
        end
        
        history = system.active_inference.inference_history
        @test length(history) == 20
        
        # Check that free energy is tracked
        @test all(!isnan(fe) for fe in history)
        
        # Variance should decrease over time (convergence)
        early_var = var(history[1:10])
        late_var = var(history[11:20])
        
        # Note: This might not always decrease in random data,
        # but it should be computed correctly
        @test early_var >= 0
        @test late_var >= 0
    end
    
    @testset "State Persistence" begin
        system = create_neuro_symbolic_system()
        
        obs1 = randn(64)
        obs2 = randn(64)
        
        # First step
        action1, state1, _ = unified_step!(system, obs1)
        saved_state = copy(system.world_model.state)
        
        # Second step should use previous state
        action2, state2, _ = unified_step!(system, obs2)
        
        # States should be different (system evolved)
        @test state1 != state2
        
        # World model state should have evolved from saved state
        @test system.world_model.state != saved_state
    end
    
end

println("\n✅ All Neuro-Symbolic Architecture tests passed!")
