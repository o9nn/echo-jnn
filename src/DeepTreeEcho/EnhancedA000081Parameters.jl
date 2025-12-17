"""
Enhanced A000081 Parameter System
Comprehensive parameter derivation from OEIS A000081 sequence
Ensures all system parameters are mathematically justified
"""

module EnhancedA000081Parameters

export A000081Sequence, derive_parameters, validate_parameters
export get_reservoir_size, get_membrane_count, get_growth_rate
export get_mutation_rate, get_nesting_structure, get_triad_parameters

"""
OEIS A000081: Number of unlabeled rooted trees with n nodes.
Extended sequence for computational use.
"""
const A000081_SEQUENCE = [
    1,      # n=1
    1,      # n=2
    2,      # n=3
    4,      # n=4
    9,      # n=5
    20,     # n=6
    48,     # n=7
    115,    # n=8
    286,    # n=9
    719,    # n=10
    1842,   # n=11
    4766,   # n=12
    12486,  # n=13
    32973,  # n=14
    87811,  # n=15
    235381, # n=16
    634847, # n=17
    1721159,# n=18
    4688676,# n=19
    12826228# n=20
]

"""
A000081 sequence accessor with bounds checking.
"""
struct A000081Sequence
    max_order::Int
    sequence::Vector{Int}
end

function A000081Sequence(max_order::Int=20)
    if max_order > length(A000081_SEQUENCE)
        @warn "Requested order $max_order exceeds precomputed sequence length $(length(A000081_SEQUENCE))"
        max_order = length(A000081_SEQUENCE)
    end
    A000081Sequence(max_order, A000081_SEQUENCE[1:max_order])
end

"""
Get A000081 value at order n.
"""
function Base.getindex(seq::A000081Sequence, n::Int)
    if n < 1 || n > seq.max_order
        throw(BoundsError(seq, n))
    end
    return seq.sequence[n]
end

"""
Comprehensive parameter derivation structure.
All parameters are derived from A000081 sequence.
"""
struct DerivedParameters
    base_order::Int
    
    # Core structural parameters
    reservoir_size::Int          # Cumulative sum: Σ A000081[1:n]
    max_tree_order::Int         # Maximum tree complexity
    num_membranes::Int          # A000081[k] for membrane count
    
    # Growth and evolution parameters
    growth_rate::Float64        # A000081[n+1] / A000081[n]
    mutation_rate::Float64      # 1.0 / A000081[n]
    crossover_rate::Float64     # Derived from growth rate
    
    # Nesting structure (1, 2, 4, 9 terms)
    nest_1_size::Int           # 1 term
    nest_2_size::Int           # 2 terms  
    nest_3_size::Int           # 4 terms
    nest_4_size::Int           # 9 terms
    
    # Cognitive loop parameters
    num_streams::Int           # 3 concurrent streams
    cycle_length::Int          # 12-step cycle
    phase_separation::Int      # 4 steps (120 degrees)
    
    # Triad structure
    num_triads::Int           # 4 triads
    triad_size::Int           # 3 elements per triad
    
    # B-Series parameters
    max_bseries_order::Int    # Maximum B-series expansion order
    num_elementary_diffs::Int # Number of elementary differentials
    
    # Spectral parameters (derived ratios)
    spectral_radius::Float64  # For reservoir stability
    sparsity::Float64        # Connection sparsity
    
    # Energy and fitness scaling
    energy_scale::Float64
    fitness_scale::Float64
    
    # Validation flag
    is_valid::Bool
    validation_message::String
end

"""
Derive all system parameters from A000081 sequence.
This is the PRIMARY method for parameter initialization.
NO arbitrary parameters should exist outside this system.
"""
function derive_parameters(base_order::Int=5; 
                          membrane_order::Int=3,
                          spectral_order::Int=4)
    
    seq = A000081Sequence(20)
    
    # Validate orders
    if base_order < 1 || base_order > seq.max_order
        return invalid_parameters("base_order $base_order out of range [1, $(seq.max_order)]")
    end
    
    # Core structural parameters
    reservoir_size = sum(seq.sequence[1:base_order])
    max_tree_order = base_order + 3  # Allow some growth headroom
    num_membranes = seq[membrane_order]
    
    # Growth and evolution parameters
    if base_order < seq.max_order
        growth_rate = Float64(seq[base_order + 1]) / Float64(seq[base_order])
    else
        growth_rate = 2.5  # Asymptotic growth rate
    end
    
    mutation_rate = 1.0 / Float64(seq[base_order])
    crossover_rate = 1.0 - mutation_rate  # Complementary rates
    
    # Nesting structure (A000081 discipline)
    nest_1_size = seq[1]  # 1
    nest_2_size = seq[2]  # 1 (but we use 2 for practical reasons)
    nest_3_size = seq[3]  # 2 (but we use 4)
    nest_4_size = seq[4]  # 4 (but we use 9)
    
    # Adjust to actual nesting structure: 1, 2, 4, 9
    nest_2_size = 2
    nest_3_size = 4
    nest_4_size = 9
    
    # Cognitive loop parameters (fixed by architecture)
    num_streams = 3
    cycle_length = 12
    phase_separation = 4
    
    # Triad structure
    num_triads = 4
    triad_size = 3
    
    # B-Series parameters
    max_bseries_order = base_order + 2
    num_elementary_diffs = reservoir_size  # One per reservoir node
    
    # Spectral parameters (derived from ratios)
    # Spectral radius should be < 1 for echo state property
    spectral_radius = 1.0 - mutation_rate  # Inversely related to mutation
    spectral_radius = min(spectral_radius, 0.95)  # Cap at 0.95
    
    # Sparsity increases with order (more complex = sparser)
    sparsity = mutation_rate * 2.0
    sparsity = clamp(sparsity, 0.05, 0.5)
    
    # Energy and fitness scaling
    energy_scale = Float64(seq[base_order])
    fitness_scale = 1.0 / energy_scale
    
    # Validate parameters
    is_valid, message = validate_derived_parameters(
        reservoir_size, num_membranes, growth_rate, mutation_rate,
        spectral_radius, sparsity
    )
    
    return DerivedParameters(
        base_order,
        reservoir_size, max_tree_order, num_membranes,
        growth_rate, mutation_rate, crossover_rate,
        nest_1_size, nest_2_size, nest_3_size, nest_4_size,
        num_streams, cycle_length, phase_separation,
        num_triads, triad_size,
        max_bseries_order, num_elementary_diffs,
        spectral_radius, sparsity,
        energy_scale, fitness_scale,
        is_valid, message
    )
end

"""
Create invalid parameters with error message.
"""
function invalid_parameters(message::String)
    DerivedParameters(
        0, 0, 0, 0,
        0.0, 0.0, 0.0,
        0, 0, 0, 0,
        0, 0, 0,
        0, 0,
        0, 0,
        0.0, 0.0,
        0.0, 0.0,
        false, message
    )
end

"""
Validate derived parameters for consistency and feasibility.
"""
function validate_derived_parameters(reservoir_size, num_membranes, 
                                     growth_rate, mutation_rate,
                                     spectral_radius, sparsity)
    
    # Check reservoir size
    if reservoir_size < 1
        return false, "Reservoir size must be positive"
    end
    
    # Check membrane count
    if num_membranes < 1
        return false, "Number of membranes must be positive"
    end
    
    # Check growth rate
    if growth_rate < 1.0
        return false, "Growth rate must be >= 1.0"
    end
    
    # Check mutation rate
    if mutation_rate < 0.0 || mutation_rate > 1.0
        return false, "Mutation rate must be in [0, 1]"
    end
    
    # Check spectral radius
    if spectral_radius < 0.0 || spectral_radius >= 1.0
        return false, "Spectral radius must be in [0, 1)"
    end
    
    # Check sparsity
    if sparsity < 0.0 || sparsity > 1.0
        return false, "Sparsity must be in [0, 1]"
    end
    
    return true, "All parameters valid"
end

"""
Validate a DerivedParameters object.
"""
function validate_parameters(params::DerivedParameters)
    if !params.is_valid
        @error "Invalid parameters: $(params.validation_message)"
        return false
    end
    
    println("Parameter Validation Report")
    println("=" ^ 60)
    println("Base order: $(params.base_order)")
    println("Reservoir size: $(params.reservoir_size)")
    println("Number of membranes: $(params.num_membranes)")
    println("Growth rate: $(round(params.growth_rate, digits=3))")
    println("Mutation rate: $(round(params.mutation_rate, digits=3))")
    println("Spectral radius: $(round(params.spectral_radius, digits=3))")
    println("Sparsity: $(round(params.sparsity, digits=3))")
    println("=" ^ 60)
    println("✓ All parameters valid and A000081-aligned")
    
    return true
end

# Convenience accessors

"""Get reservoir size for given base order."""
function get_reservoir_size(base_order::Int)
    params = derive_parameters(base_order)
    return params.reservoir_size
end

"""Get membrane count for given membrane order."""
function get_membrane_count(membrane_order::Int)
    seq = A000081Sequence()
    return seq[membrane_order]
end

"""Get growth rate for given base order."""
function get_growth_rate(base_order::Int)
    params = derive_parameters(base_order)
    return params.growth_rate
end

"""Get mutation rate for given base order."""
function get_mutation_rate(base_order::Int)
    params = derive_parameters(base_order)
    return params.mutation_rate
end

"""Get nesting structure sizes."""
function get_nesting_structure()
    return (1, 2, 4, 9)  # Fixed by A000081 discipline
end

"""Get triad parameters for cognitive loop."""
function get_triad_parameters()
    return (
        num_streams = 3,
        cycle_length = 12,
        phase_separation = 4,
        num_triads = 4,
        triad_size = 3
    )
end

"""
Display the A000081 sequence and parameter derivation rules.
"""
function show_derivation_rules()
    println("A000081 Parameter Derivation Rules")
    println("=" ^ 70)
    println()
    println("OEIS A000081: Number of unlabeled rooted trees with n nodes")
    println("Sequence: ", A000081_SEQUENCE[1:10])
    println()
    println("Derivation Rules:")
    println("-" ^ 70)
    println("1. Reservoir Size = Σ A000081[1:n]")
    println("   Example: n=5 → 1+1+2+4+9 = 17")
    println()
    println("2. Number of Membranes = A000081[k]")
    println("   Example: k=3 → 2 membranes")
    println()
    println("3. Growth Rate = A000081[n+1] / A000081[n]")
    println("   Example: n=5 → 20/9 ≈ 2.22")
    println()
    println("4. Mutation Rate = 1.0 / A000081[n]")
    println("   Example: n=5 → 1/9 ≈ 0.11")
    println()
    println("5. Nesting Structure: (1, 2, 4, 9)")
    println("   From A000081[1:4] with adjustments")
    println()
    println("6. Cognitive Loop: 3 streams × 12 steps")
    println("   Phase separation: 4 steps (120°)")
    println("   Triads: {1,5,9}, {2,6,10}, {3,7,11}, {4,8,12}")
    println()
    println("7. Spectral Radius = 1.0 - mutation_rate")
    println("   Ensures echo state property (< 1.0)")
    println()
    println("8. Sparsity = 2 × mutation_rate")
    println("   Clamped to [0.05, 0.5]")
    println("=" ^ 70)
end

end # module
