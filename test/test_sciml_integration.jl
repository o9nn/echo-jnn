"""
Test Suite for SciML Package Integration

Tests integration with:
- RootedTrees.jl: Advanced rooted tree operations
- BSeries.jl: Complete B-series functionality
- ReservoirComputing.jl: Professional Echo State Networks
"""

# Add src to load path
push!(LOAD_PATH, joinpath(@__DIR__, "..", "src"))

using Test
using LinearAlgebra
using Random

# Load Deep Tree Echo modules
include("../src/DeepTreeEcho/DeepTreeEcho.jl")
using .DeepTreeEcho
using .DeepTreeEcho.PackageIntegration

# Import availability constants
import .DeepTreeEcho.PackageIntegration: BSERIES_AVAILABLE, RESERVOIR_COMPUTING_AVAILABLE, ROOTED_TREES_AVAILABLE

println("""
╔════════════════════════════════════════════════════════════════╗
║  SCIML PACKAGE INTEGRATION TEST SUITE                          ║
╚════════════════════════════════════════════════════════════════╝
""")

Random.seed!(42)

@testset "SciML Integration Tests" begin
    
    @testset "1. Package Availability" begin
        println("\n[1/4] Testing Package Availability...")
        
        # Check integration status
        status = integration_status()
        
        @test haskey(status, "RootedTrees.jl")
        @test haskey(status, "BSeries.jl")
        @test haskey(status, "ReservoirComputing.jl")
        
        println("  Package Status:")
        println("    RootedTrees.jl: $(status["RootedTrees.jl"])")
        println("    BSeries.jl: $(status["BSeries.jl"])")
        println("    ReservoirComputing.jl: $(status["ReservoirComputing.jl"])")
    end
    
    @testset "2. Tree Generation" begin
        println("\n[2/4] Testing Tree Generation...")
        
        # Test A000081 counting
        for order in 1:10
            count = count_trees_of_order(order)
            @test count > 0
            
            # Verify against known A000081 sequence
            expected = [1, 1, 2, 4, 9, 20, 48, 115, 286, 719][order]
            @test count == expected
        end
        
        # Test tree generation up to various orders
        for max_order in [3, 5, 7]
            trees = generate_trees_up_to_order(max_order)
            @test length(trees) > 0
            
            # With RootedTrees.jl: should get full A000081 counts
            # With fallback: should get at least one tree per order
            @test length(trees) >= max_order
        end
        
        println("  ✓ A000081 counting correct")
        println("  ✓ Tree generation functional")
    end
    
    @testset "3. B-Series Operations" begin
        println("\n[3/4] Testing B-Series Operations...")
        
        if BSERIES_AVAILABLE
            println("  Testing with BSeries.jl...")
            
            # Test B-series creation
            tree = [1, 2, 2]  # Simple branched tree
            bseries = create_bseries_from_tree(tree, 1.0)
            @test bseries !== nothing
            
            # Test B-series evaluation
            f(y) = -y
            y0 = [1.0]
            result = evaluate_bseries(bseries, f, y0, 0.1)
            @test length(result) == length(y0)
            @test !any(isnan, result)
            
            println("  ✓ B-series creation working")
            println("  ✓ B-series evaluation functional")
        else
            println("  ⚠  BSeries.jl not available - using fallback")
            @test true  # Skip but don't fail
        end
    end
    
    @testset "4. Reservoir Computing" begin
        println("\n[4/4] Testing Reservoir Computing...")
        
        if RESERVOIR_COMPUTING_AVAILABLE
            println("  Testing with ReservoirComputing.jl...")
            
            # Test ESN creation
            esn = create_esn_reservoir(10, 50, 10)
            @test haskey(esn, "W")
            @test haskey(esn, "W_in")
            @test haskey(esn, "W_out")
            
            # Test reservoir dimensions
            @test size(esn["W"]) == (50, 50)
            @test size(esn["W_in"]) == (50, 10)
            
            # Test training (simple)
            input_data = randn(10, 20)
            target_data = randn(10, 20)
            
            train_esn!(esn, input_data, target_data)
            @test size(esn["W_out"]) == (10, 50)
            
            # Test prediction
            output = predict_esn(esn, input_data)
            @test size(output) == size(target_data)
            @test !any(isnan, output)
            
            println("  ✓ ESN creation working")
            println("  ✓ ESN training functional")
            println("  ✓ ESN prediction working")
        else
            println("  ⚠  ReservoirComputing.jl not available - using fallback")
            
            # Test fallback implementation
            esn = create_esn_reservoir(10, 50, 10)
            @test haskey(esn, "W")
            
            input_data = randn(10, 20)
            target_data = randn(10, 20)
            
            train_esn!(esn, input_data, target_data)
            output = predict_esn(esn, input_data)
            
            @test size(output) == size(target_data)
            @test !any(isnan, output)
            
            println("  ✓ Fallback implementation working")
        end
    end
end

println("\n" * "="^64)
println("SCIML INTEGRATION TEST SUMMARY")
println("="^64)

status = integration_status()
available_count = count(v for v in values(status) if v)
total_count = length(status)

println("\nPackages Available: $available_count / $total_count")
println("\nIntegration Status:")
for (pkg, available) in sort(collect(status))
    status_mark = available ? "✓" : "✗"
    println("  $status_mark $pkg")
end

if available_count == total_count
    println("\n🎉 Full SciML integration active!")
elseif available_count > 0
    println("\n⚡ Partial integration active (fallback for unavailable packages)")
else
    println("\n📦 Running with fallback implementations")
end

println("="^64)
