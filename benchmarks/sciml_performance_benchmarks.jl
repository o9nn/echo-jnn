"""
Performance Benchmarks for SciML Package Integration

Compares performance of fallback implementations vs actual SciML packages:
- RootedTrees.jl: Tree generation and enumeration
- BSeries.jl: B-series evaluation
- ReservoirComputing.jl: ESN training and prediction
"""

# Add src to load path
push!(LOAD_PATH, joinpath(@__DIR__, "..", "src"))

using Printf
using Statistics
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
║  SCIML PACKAGE PERFORMANCE BENCHMARKS                          ║
╚════════════════════════════════════════════════════════════════╝
""")

Random.seed!(42)

# Helper function to measure execution time
function benchmark(name::String, f::Function, n_runs::Int=10)
    # Warm-up run
    f()
    
    # Timed runs
    times = Float64[]
    for _ in 1:n_runs
        t = @elapsed f()
        push!(times, t * 1000)  # Convert to milliseconds
    end
    
    return (
        mean = mean(times),
        std = std(times),
        min = minimum(times),
        max = maximum(times)
    )
end

function print_benchmark_result(name::String, stats::NamedTuple)
    @printf("  %-40s: %7.3f ms ± %6.3f ms (min: %7.3f, max: %7.3f)\n", 
            name, stats.mean, stats.std, stats.min, stats.max)
end

println("\n" * "="^68)
println("BENCHMARK 1: Tree Generation (A000081)")
println("="^68)

println("\nTree Counting:")
for order in [5, 7, 9]
    stats = benchmark("Count trees of order $order", () -> count_trees_of_order(order), 100)
    print_benchmark_result("Order $order", stats)
end

println("\nTree Generation:")
for max_order in [3, 5, 7]
    stats = benchmark("Generate trees up to order $max_order", 
                     () -> generate_trees_up_to_order(max_order), 20)
    print_benchmark_result("Up to order $max_order", stats)
end

if ROOTED_TREES_AVAILABLE
    println("\n✓ Using RootedTrees.jl for optimal performance")
else
    println("\n⚠ Using fallback implementation (expected to be slower)")
end

println("\n" * "="^68)
println("BENCHMARK 2: B-Series Operations")
println("="^68)

println("\nB-Series Evaluation:")

# Define simple ODE
f(y) = -y
y0 = [1.0]
h = 0.1

for order in [2, 3, 4]
    tree = collect(1:order)  # Simple linear tree
    
    stats = benchmark("B-series order $order evaluation", 
                     () -> begin
                         if BSERIES_AVAILABLE
                             bseries = create_bseries_from_tree(tree, 1.0)
                             evaluate_bseries(bseries, f, y0, h)
                         end
                     end, 50)
    
    print_benchmark_result("Order $order", stats)
end

if BSERIES_AVAILABLE
    println("\n✓ Using BSeries.jl for optimal performance")
else
    println("\n⚠ Using fallback implementation")
end

println("\n" * "="^68)
println("BENCHMARK 3: Reservoir Computing (ESN)")
println("="^68)

println("\nESN Creation:")
for size in [50, 100, 200]
    stats = benchmark("ESN creation (size=$size)", 
                     () -> create_esn_reservoir(10, size, 10), 10)
    print_benchmark_result("Reservoir size $size", stats)
end

println("\nESN Training:")
input_data = randn(10, 100)
target_data = randn(10, 100)

for size in [50, 100, 200]
    esn = create_esn_reservoir(10, size, 10)
    stats = benchmark("ESN training (size=$size)", 
                     () -> train_esn!(esn, input_data, target_data), 10)
    print_benchmark_result("Reservoir size $size", stats)
end

println("\nESN Prediction:")
for size in [50, 100, 200]
    esn = create_esn_reservoir(10, size, 10)
    train_esn!(esn, input_data, target_data)
    
    stats = benchmark("ESN prediction (size=$size)", 
                     () -> predict_esn(esn, input_data), 20)
    print_benchmark_result("Reservoir size $size", stats)
end

if RESERVOIR_COMPUTING_AVAILABLE
    println("\n✓ Using ReservoirComputing.jl for optimal performance")
else
    println("\n⚠ Using fallback implementation")
end

println("\n" * "="^68)
println("PERFORMANCE SUMMARY")
println("="^68)

status = integration_status()
available_count = count(v for v in values(status) if v)
total_count = length(status)

println("\nPackage Status:")
println("  Packages Available: $available_count / $total_count")

println("\nIntegration Status:")
for (pkg, available) in sort(collect(status))
    status_mark = available ? "✓" : "✗"
    impl_type = available ? "Native" : "Fallback"
    println("  $status_mark $pkg: $impl_type")
end

println("\nPerformance Notes:")
if available_count == total_count
    println("  • All native packages active - optimal performance achieved")
    println("  • Tree generation: Uses complete A000081 enumeration")
    println("  • B-series: Full symbolic and numeric capabilities")
    println("  • ESN: Advanced training algorithms and optimizations")
elseif available_count > 0
    println("  • Partial native integration - mixed performance")
    println("  • Consider installing missing packages for better performance")
else
    println("  • Running with fallback implementations")
    println("  • Performance is adequate for testing and development")
    println("  • For production use, install RootedTrees.jl, BSeries.jl, ReservoirComputing.jl")
    println("\n  Installation:")
    println("    julia> using Pkg")
    println("    julia> Pkg.add(\"RootedTrees\")")
    println("    julia> Pkg.add(\"BSeries\")")
    println("    julia> Pkg.add(\"ReservoirComputing\")")
end

println("\n" * "="^68)
println("Benchmark Complete!")
println("="^68)
