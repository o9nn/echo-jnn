#!/usr/bin/env julia
"""
Simple TensorLogic.jl demonstration

This example shows basic tensor logic functionality including:
1. Bracket-rule syntax for defining relations
2. Sparse fixpoint evaluation
3. Querying results
"""

push!(LOAD_PATH, "@stdlib")
using Pkg
Pkg.activate(".")

# Load TensorLogic module directly
include("../src/TensorLogic/TensorLogic.jl")
using .TensorLogic

println("="^60)
println("TensorLogic.jl - Simple Ancestor Example")
println("="^60)

# Define a simple ancestor program using bracket-rule syntax
src = """
Parent[Alice, Bob].
Parent[Bob, Charlie].
Parent[Charlie, Dana].

Ancestor[x,y] = Parent[x,y].
Ancestor[x,z] = Ancestor[x,y] * Parent[y,z].
"""

println("\nProgram:")
println(src)

# Parse the program
prog = parse_tensorlogic(src)

# Create execution context
ctx = TLContext()

# Run the fixpoint computation
println("\nRunning fixpoint computation...")
run!(ctx, prog; maxiters=50)

# Display results
println("\nAncestor tuples:")
for t in sort(relation_tuples(ctx, :Ancestor))
    println("  ", t)
end

println("\n" * "="^60)
println("TensorLogic.jl test completed successfully!")
println("="^60)
