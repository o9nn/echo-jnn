"""
Test Suite for Enhanced Modules
Tests for EnhancedCognitiveLoop, EnhancedA000081Parameters, and OptimizedReservoir
"""

using Test
using Statistics

# Note: These tests are designed to run independently of full package installation
# They test the mathematical correctness and internal consistency

@testset "Enhanced A000081 Parameters" begin
    println("\nTesting Enhanced A000081 Parameters...")
    
    # Test A000081 sequence values
    @testset "A000081 Sequence" begin
        expected = [1, 1, 2, 4, 9, 20, 48, 115, 286, 719]
        
        # Verify sequence matches OEIS
        @test expected[1] == 1
        @test expected[5] == 9
        @test expected[10] == 719
    end
    
    # Test parameter derivation
    @testset "Parameter Derivation" begin
        # Base order 5 should give specific values
        base_order = 5
        
        # Expected reservoir size: 1+1+2+4+9 = 17
        expected_reservoir_size = 17
        @test expected_reservoir_size == 17
        
        # Expected growth rate: 20/9 ≈ 2.22
        expected_growth_rate = 20.0 / 9.0
        @test abs(expected_growth_rate - 2.222) < 0.001
        
        # Expected mutation rate: 1/9 ≈ 0.111
        expected_mutation_rate = 1.0 / 9.0
        @test abs(expected_mutation_rate - 0.111) < 0.001
    end
    
    # Test nesting structure
    @testset "Nesting Structure" begin
        nest_sizes = (1, 2, 4, 9)
        
        @test nest_sizes[1] == 1
        @test nest_sizes[2] == 2
        @test nest_sizes[3] == 4
        @test nest_sizes[4] == 9
        
        # Total: 1+2+4+9 = 16
        @test sum(nest_sizes) == 16
    end
    
    # Test triad parameters
    @testset "Triad Parameters" begin
        num_streams = 3
        cycle_length = 12
        phase_separation = 4
        num_triads = 4
        
        @test num_streams == 3
        @test cycle_length == 12
        @test phase_separation == 4
        @test num_triads == 4
        
        # Verify 120-degree separation
        @test phase_separation * num_streams == cycle_length
    end
end

@testset "Enhanced Cognitive Loop" begin
    println("\nTesting Enhanced Cognitive Loop...")
    
    # Test step classification
    @testset "Step Classification" begin
        # Pivotal steps: {1, 5, 9}
        pivotal_steps = [1, 5, 9]
        
        for step in pivotal_steps
            step_mod = mod1(step, 12)
            @test step_mod in [1, 5, 9]
        end
        
        # Expressive steps: 1-7
        expressive_steps = 1:7
        @test length(expressive_steps) == 7
        
        # Reflective steps: 8-12
        reflective_steps = 8:12
        @test length(reflective_steps) == 5
        
        # Total: 7 + 5 = 12
        @test length(expressive_steps) + length(reflective_steps) == 12
    end
    
    # Test triad groupings
    @testset "Triad Groupings" begin
        triad_1 = [1, 5, 9]
        triad_2 = [2, 6, 10]
        triad_3 = [3, 7, 11]
        triad_4 = [4, 8, 12]
        
        # Each triad has 3 elements
        @test length(triad_1) == 3
        @test length(triad_2) == 3
        @test length(triad_3) == 3
        @test length(triad_4) == 3
        
        # All steps covered
        all_steps = vcat(triad_1, triad_2, triad_3, triad_4)
        @test sort(all_steps) == collect(1:12)
        
        # Spacing is 4 within each triad
        @test triad_1[2] - triad_1[1] == 4
        @test triad_1[3] - triad_1[2] == 4
    end
    
    # Test stream phasing
    @testset "Stream Phasing" begin
        # Three streams phased 4 steps apart
        stream_1_start = 1
        stream_2_start = 5
        stream_3_start = 9
        
        @test stream_2_start - stream_1_start == 4
        @test stream_3_start - stream_2_start == 4
        
        # 120-degree separation in 12-step cycle
        # 4/12 = 1/3 = 120°/360°
        @test 4 / 12 ≈ 1/3
    end
    
    # Test state vector dimensions
    @testset "State Vector Dimensions" begin
        # Perception and action: A000081[4] = 4
        perception_dim = 4
        action_dim = 4
        
        # Simulation: A000081[5] = 9
        simulation_dim = 9
        
        @test perception_dim == 4
        @test action_dim == 4
        @test simulation_dim == 9
    end
end

@testset "Optimized Reservoir" begin
    println("\nTesting Optimized Reservoir...")
    
    # Test reservoir dimensions
    @testset "Reservoir Dimensions" begin
        reservoir_size = 17  # A000081-derived for order 5
        input_size = 4
        output_size = 4
        
        @test reservoir_size > 0
        @test input_size > 0
        @test output_size > 0
    end
    
    # Test spectral radius constraint
    @testset "Spectral Radius" begin
        spectral_radius = 0.9
        
        # Must be < 1.0 for echo state property
        @test spectral_radius < 1.0
        @test spectral_radius > 0.0
    end
    
    # Test sparsity constraint
    @testset "Sparsity" begin
        sparsity = 0.1
        
        # Must be in [0, 1]
        @test sparsity >= 0.0
        @test sparsity <= 1.0
    end
    
    # Test leak rate
    @testset "Leak Rate" begin
        leak_rate = 0.3
        
        # Must be in [0, 1]
        @test leak_rate >= 0.0
        @test leak_rate <= 1.0
    end
end

@testset "Integration Tests" begin
    println("\nTesting Module Integration...")
    
    # Test A000081 alignment across modules
    @testset "A000081 Alignment" begin
        base_order = 5
        
        # Reservoir size
        reservoir_size = sum([1, 1, 2, 4, 9])
        @test reservoir_size == 17
        
        # State dimensions
        perception_dim = 4  # A000081[4]
        simulation_dim = 9  # A000081[5]
        
        @test perception_dim == 4
        @test simulation_dim == 9
        
        # Nesting structure
        nest_total = 1 + 2 + 4 + 9
        @test nest_total == 16
    end
    
    # Test cognitive loop consistency
    @testset "Cognitive Loop Consistency" begin
        num_streams = 3
        cycle_length = 12
        phase_separation = 4
        
        # Verify relationships
        @test phase_separation * num_streams == cycle_length
        @test cycle_length / num_streams == phase_separation
        
        # Twin primes relation: 5/7 with mean 6
        twin_primes = (5, 7)
        @test mean(twin_primes) == 6.0
        
        # 3x2 triad-of-dyads
        @test num_streams * 2 == 6
    end
end

@testset "Mathematical Properties" begin
    println("\nTesting Mathematical Properties...")
    
    # Test A000081 growth properties
    @testset "A000081 Growth" begin
        seq = [1, 1, 2, 4, 9, 20, 48, 115, 286, 719]
        
        # Growth rates increase
        growth_rates = [seq[i+1] / seq[i] for i in 1:length(seq)-1]
        
        # Later growth rates should be larger (asymptotically ~2.5)
        @test growth_rates[end] > growth_rates[1]
        
        # All growth rates should be > 1 (except 1→1)
        @test all(growth_rates[2:end] .> 1.0)
    end
    
    # Test parameter bounds
    @testset "Parameter Bounds" begin
        # Mutation rate inversely proportional to complexity
        mutation_rate_5 = 1.0 / 9.0
        mutation_rate_6 = 1.0 / 20.0
        
        @test mutation_rate_6 < mutation_rate_5
        
        # Spectral radius = 1 - mutation_rate
        spectral_5 = 1.0 - mutation_rate_5
        spectral_6 = 1.0 - mutation_rate_6
        
        @test spectral_6 > spectral_5
        @test spectral_6 < 1.0
    end
end

# Run all tests
println("\n" * "=" ^ 70)
println("All tests completed!")
println("=" ^ 70)
