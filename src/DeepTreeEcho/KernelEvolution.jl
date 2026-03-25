"""
    KernelEvolution Module

Population-based evolutionary algorithm for ontogenetic kernels.
Implements Phase 3 of the agent roadmap: Kernel Evolution System.

# Evolutionary Algorithm

1. **Evaluate Fitness**: Score all kernels
2. **Selection**: Tournament selection for parents
3. **Crossover**: Create offspring via genetic recombination
4. **Mutation**: Introduce random variations
5. **Elitism**: Preserve best individuals
6. **Replacement**: Form next generation

# Features

- Tournament selection with configurable size
- Elitism to preserve top performers
- Diversity preservation via novelty metric
- Adaptive mutation rates
- Generation statistics tracking
"""
module KernelEvolution

using LinearAlgebra
using Random
using Statistics

# Import OntogeneticKernel module
include("OntogeneticKernel.jl")
using .OntogeneticKernel

export EvolutionConfig, GenerationStats
export evolve_kernel_population!, tournament_selection
export population_diversity, clone_kernel
export print_generation_stats, print_population_status
export AdaptiveMutationState, SolutionArchive, ParetoFront
export adaptive_mutation_rate, archive_solution!, get_best_solutions
export compute_pareto_front, is_dominated, pareto_rank

"""
    EvolutionConfig

Configuration for evolutionary algorithm.
"""
struct EvolutionConfig
    population_size::Int      # Population size
    mutation_rate::Float64    # Base mutation rate
    crossover_rate::Float64   # Crossover probability
    elitism_rate::Float64     # Fraction to preserve via elitism
    tournament_size::Int      # Tournament selection size
    max_generations::Int      # Maximum generations
    fitness_threshold::Float64 # Convergence threshold
    
    function EvolutionConfig(;
        population_size::Int=20,
        mutation_rate::Float64=0.15,
        crossover_rate::Float64=0.8,
        elitism_rate::Float64=0.1,
        tournament_size::Int=3,
        max_generations::Int=50,
        fitness_threshold::Float64=0.9)
        
        new(population_size, mutation_rate, crossover_rate, elitism_rate,
            tournament_size, max_generations, fitness_threshold)
    end
end

"""
    GenerationStats

Statistics for a single generation.
"""
struct GenerationStats
    generation::Int
    best_fitness::Float64
    avg_fitness::Float64
    worst_fitness::Float64
    diversity::Float64
    avg_grip::Float64
    avg_stability::Float64
    avg_efficiency::Float64
    avg_novelty::Float64
    stage_distribution::Dict{Symbol, Int}
end
# ─────────────────────────────────────────────────────────────────────────────
# Adaptive Mutation Rates
# ─────────────────────────────────────────────────────────────────────────────

"""
    AdaptiveMutationState

Tracks diversity history and computes an adaptive mutation rate.

The mutation rate increases when population diversity drops below
`low_diversity_threshold` and decreases when diversity is high,
steering the search away from premature convergence.
"""
mutable struct AdaptiveMutationState
    current_rate::Float64          # Current effective mutation rate
    base_rate::Float64             # Baseline mutation rate
    min_rate::Float64              # Minimum allowed rate
    max_rate::Float64              # Maximum allowed rate
    low_diversity_threshold::Float64   # Diversity level below which rate increases
    high_diversity_threshold::Float64  # Diversity level above which rate decreases
    adaptation_factor::Float64     # Multiplier applied each step
    diversity_history::Vector{Float64} # Rolling window of diversity values

    function AdaptiveMutationState(;
        base_rate::Float64 = 0.15,
        min_rate::Float64 = 0.02,
        max_rate::Float64 = 0.50,
        low_diversity_threshold::Float64 = 0.10,
        high_diversity_threshold::Float64 = 0.40,
        adaptation_factor::Float64 = 1.20)

        new(base_rate, base_rate, min_rate, max_rate,
            low_diversity_threshold, high_diversity_threshold,
            adaptation_factor, Float64[])
    end
end

"""
    adaptive_mutation_rate(state::AdaptiveMutationState,
                           diversity::Float64) -> Float64

Update and return the adaptive mutation rate given current population diversity.

# Algorithm
- If `diversity < low_diversity_threshold`: increase rate (boost exploration)
- If `diversity > high_diversity_threshold`: decrease rate (exploit solutions)
- Otherwise: nudge towards `base_rate`

# Returns
- `Float64`: New effective mutation rate in `[min_rate, max_rate]`
"""
function adaptive_mutation_rate(state::AdaptiveMutationState,
                                diversity::Float64)::Float64
    push!(state.diversity_history, diversity)

    if diversity < state.low_diversity_threshold
        # Low diversity → increase mutation to escape local optima
        state.current_rate = min(state.current_rate * state.adaptation_factor,
                                 state.max_rate)
    elseif diversity > state.high_diversity_threshold
        # High diversity → reduce mutation to exploit good solutions
        state.current_rate = max(state.current_rate / state.adaptation_factor,
                                 state.min_rate)
    else
        # Moderate diversity → drift back to base rate
        state.current_rate += 0.1 * (state.base_rate - state.current_rate)
    end

    return state.current_rate
end

# ─────────────────────────────────────────────────────────────────────────────
# Solution Archive
# ─────────────────────────────────────────────────────────────────────────────

"""
    SolutionArchive

Maintains a bounded archive of high-quality solutions discovered
across all generations, preventing loss of elite individuals.

Solutions are stored as `(fitness, kernel)` pairs sorted in
descending fitness order.  When the archive is full the weakest
entry is replaced only if the candidate is better.
"""
mutable struct SolutionArchive
    capacity::Int
    solutions::Vector{Tuple{Float64, Kernel}}  # (fitness, kernel) sorted desc
    min_improvement::Float64   # Minimum fitness delta to accept a new entry

    function SolutionArchive(; capacity::Int = 50,
                               min_improvement::Float64 = 0.001)
        new(capacity, Tuple{Float64, Kernel}[], min_improvement)
    end
end

"""
    archive_solution!(archive::SolutionArchive, kernel::Kernel)

Attempt to add `kernel` to the archive.

The kernel is inserted if:
- Its fitness exceeds the worst archived solution by at least
  `archive.min_improvement`, OR
- The archive is not yet full.

# Returns
- `Bool`: `true` if the kernel was inserted.
"""
function archive_solution!(archive::SolutionArchive, kernel::Kernel)::Bool
    f = kernel.fitness

    if length(archive.solutions) < archive.capacity
        push!(archive.solutions, (f, clone_kernel(kernel)))
        sort!(archive.solutions, by = x -> x[1], rev = true)
        return true
    end

    worst_fitness = archive.solutions[end][1]
    if f > worst_fitness + archive.min_improvement
        archive.solutions[end] = (f, clone_kernel(kernel))
        sort!(archive.solutions, by = x -> x[1], rev = true)
        return true
    end

    return false
end

"""
    get_best_solutions(archive::SolutionArchive, n::Int = 5)
                       -> Vector{Kernel}

Return the top-`n` kernels from the archive (highest fitness first).
"""
function get_best_solutions(archive::SolutionArchive, n::Int = 5)::Vector{Kernel}
    top = min(n, length(archive.solutions))
    return [clone_kernel(archive.solutions[i][2]) for i in 1:top]
end

# ─────────────────────────────────────────────────────────────────────────────
# Pareto Multi-Objective Optimization
# ─────────────────────────────────────────────────────────────────────────────

"""
    ParetoFront

Stores the current non-dominated front of the population.

Objectives are maximised simultaneously:
- `:grip`       – domain fitness
- `:stability`  – numerical stability
- `:efficiency` – computational efficiency
- `:novelty`    – genetic diversity
"""
mutable struct ParetoFront
    members::Vector{Kernel}
    objectives::Vector{Symbol}

    function ParetoFront(objectives::Vector{Symbol} =
                             [:grip, :stability, :efficiency, :novelty])
        new(Kernel[], objectives)
    end
end

"""
    _get_objectives(kernel::Kernel, objectives::Vector{Symbol})
                    -> Vector{Float64}

Extract objective values from a kernel in the order given.
"""
function _get_objectives(kernel::Kernel, objectives::Vector{Symbol})::Vector{Float64}
    obj_map = Dict{Symbol, Float64}(
        :grip       => kernel.grip,
        :stability  => kernel.stability,
        :efficiency => kernel.efficiency,
        :novelty    => kernel.novelty,
        :fitness    => kernel.fitness,
    )
    return [get(obj_map, o, 0.0) for o in objectives]
end

"""
    is_dominated(a::Vector{Float64}, b::Vector{Float64}) -> Bool

Return `true` if solution `a` is dominated by `b`
(i.e. `b` is at least as good in every objective and strictly
better in at least one).  All objectives are maximised.
"""
function is_dominated(a::Vector{Float64}, b::Vector{Float64})::Bool
    @assert length(a) == length(b) "Objective vectors must have equal length"
    at_least_as_good = all(b[i] >= a[i] for i in eachindex(a))
    strictly_better  = any(b[i] >  a[i] for i in eachindex(a))
    return at_least_as_good && strictly_better
end

"""
    pareto_rank(population::Vector{Kernel};
                objectives::Vector{Symbol} = [:grip, :stability,
                                              :efficiency, :novelty])
               -> Vector{Int}

Assign a Pareto rank to every individual in `population`.

Rank 1 = non-dominated front, Rank 2 = non-dominated after removing
Rank 1, etc.  Lower rank is better.

# Returns
- `Vector{Int}`: Rank for each individual (same order as `population`).
"""
function pareto_rank(population::Vector{Kernel};
                     objectives::Vector{Symbol} = [:grip, :stability,
                                                   :efficiency, :novelty])::Vector{Int}
    n = length(population)
    ranks = zeros(Int, n)
    obj_vals = [_get_objectives(k, objectives) for k in population]

    # Domination counts
    domination_count = zeros(Int, n)   # how many solutions dominate i
    dominated_set    = [Int[] for _ in 1:n]  # whom does i dominate

    for i in 1:n
        for j in 1:n
            i == j && continue
            if is_dominated(obj_vals[i], obj_vals[j])
                domination_count[i] += 1
            elseif is_dominated(obj_vals[j], obj_vals[i])
                push!(dominated_set[i], j)
            end
        end
    end

    current_rank  = 1
    current_front = [i for i in 1:n if domination_count[i] == 0]

    while !isempty(current_front)
        next_front = Int[]
        for i in current_front
            ranks[i] = current_rank
            for j in dominated_set[i]
                domination_count[j] -= 1
                if domination_count[j] == 0
                    push!(next_front, j)
                end
            end
        end
        current_rank += 1
        current_front = next_front
    end

    return ranks
end

"""
    compute_pareto_front(population::Vector{Kernel};
                         objectives::Vector{Symbol} = [:grip, :stability,
                                                       :efficiency, :novelty])
                        -> ParetoFront

Compute the Pareto front (rank-1 individuals) of `population`.
"""
function compute_pareto_front(population::Vector{Kernel};
                              objectives::Vector{Symbol} = [:grip, :stability,
                                                            :efficiency, :novelty])::ParetoFront
    pf = ParetoFront(objectives)
    ranks = pareto_rank(population; objectives = objectives)
    for (i, kernel) in enumerate(population)
        if ranks[i] == 1
            push!(pf.members, clone_kernel(kernel))
        end
    end
    return pf
end


"""
    evolve_kernel_population!(population::Vector{Kernel},
                             config::EvolutionConfig;
                             domain_data=nothing,
                             verbose::Bool=true,
                             archive::Union{SolutionArchive, Nothing}=nothing,
                             adaptive_mutation::Bool=true)

Evolve a population of kernels over multiple generations.

# Algorithm
1. Evaluate fitness for all kernels
2. Sort by fitness (best first)
3. Record generation statistics
4. Check convergence
5. Create next generation:
   - Elite kernels (preserved)
   - Offspring via crossover
   - Random mutations
6. Update development stages
7. Repeat

# Arguments
- `population::Vector{Kernel}`: Initial population (modified in place)
- `config::EvolutionConfig`: Evolution parameters
- `domain_data`: Optional domain-specific test data
- `verbose::Bool=true`: Print progress
- `archive::SolutionArchive`: Optional solution archive to populate
- `adaptive_mutation::Bool=true`: Adjust mutation rate based on diversity

# Returns
- `Vector{GenerationStats}`: Statistics for each generation

# Side Effects
Modifies population in place.
"""
function evolve_kernel_population!(population::Vector{Kernel},
                                  config::EvolutionConfig;
                                  domain_data=nothing,
                                  verbose::Bool=true,
                                  archive::Union{SolutionArchive, Nothing}=nothing,
                                  adaptive_mutation::Bool=true)
    
    generations_stats = GenerationStats[]
    
    # Adaptive mutation state
    adaptive_state = AdaptiveMutationState(base_rate = config.mutation_rate)
    
    if verbose
        println("\n" * "="^60)
        println("KERNEL EVOLUTION")
        println("="^60)
        println("Population Size: $(config.population_size)")
        println("Max Generations: $(config.max_generations)")
        println("Mutation Rate: $(config.mutation_rate)" *
                (adaptive_mutation ? " (adaptive)" : ""))
        println("Crossover Rate: $(config.crossover_rate)")
        println("Elitism Rate: $(config.elitism_rate)")
        println("="^60 * "\n")
    end
    
    for gen in 1:config.max_generations
        # 1. Evaluate fitness for all kernels
        for kernel in population
            evaluate_kernel_fitness!(kernel, domain_data, population)
        end
        
        # 2. Sort by fitness (descending)
        sort!(population, by = k -> k.fitness, rev = true)
        
        # 3. Record generation statistics
        gen_stats = compute_generation_stats(population, gen)
        push!(generations_stats, gen_stats)
        
        # 4. Update archive with elite individuals
        if archive !== nothing
            for kernel in population[1:min(3, length(population))]
                archive_solution!(archive, kernel)
            end
        end
        
        # 5. Compute adaptive mutation rate
        mut_rate = adaptive_mutation ?
            adaptive_mutation_rate(adaptive_state, gen_stats.diversity) :
            config.mutation_rate
        
        # 6. Print progress
        if verbose && (gen % 5 == 0 || gen == 1)
            print_generation_stats(gen_stats)
            if adaptive_mutation
                println("  Adaptive mutation rate: $(round(mut_rate, digits=4))")
            end
        end
        
        # 7. Check convergence
        if gen_stats.best_fitness >= config.fitness_threshold
            if verbose
                println("\n✓ Converged at generation $gen!")
                println("  Best fitness: $(round(gen_stats.best_fitness, digits=4))")
            end
            break
        end
        
        # 8. Create next generation
        next_generation = Kernel[]
        
        # Elitism: preserve best individuals
        n_elite = max(1, Int(floor(config.elitism_rate * length(population))))
        append!(next_generation, population[1:n_elite])
        
        # Reproduction: crossover and mutation
        while length(next_generation) < config.population_size
            # Select parents
            parent1 = tournament_selection(population, config.tournament_size)
            parent2 = tournament_selection(population, config.tournament_size)
            
            # Crossover
            if rand() < config.crossover_rate
                offspring1, offspring2 = crossover(parent1, parent2)
                
                # Mutate offspring using current (possibly adaptive) rate
                mutate!(offspring1, mutation_rate=mut_rate)
                if length(next_generation) + 1 < config.population_size
                    mutate!(offspring2, mutation_rate=mut_rate)
                    push!(next_generation, offspring2)
                end
                push!(next_generation, offspring1)
            else
                # Clone parent
                offspring = clone_kernel(parent1)
                mutate!(offspring, mutation_rate=mut_rate)
                push!(next_generation, offspring)
            end
        end
        
        # Trim to exact population size
        if length(next_generation) > config.population_size
            next_generation = next_generation[1:config.population_size]
        end
        
        # 9. Update development stages and age
        for kernel in next_generation
            kernel.lifecycle.age += 1
            update_stage!(kernel)
        end
        
        # Replace population
        empty!(population)
        append!(population, next_generation)
    end
    
    if verbose
        println("\n" * "="^60)
        println("EVOLUTION COMPLETE")
        println("="^60)
        print_final_statistics(generations_stats)
        if archive !== nothing
            println("\nSolution Archive: $(length(archive.solutions)) entries")
            top = get_best_solutions(archive, 3)
            for (i, k) in enumerate(top)
                println("  #$i: fitness=$(round(k.fitness, digits=4))")
            end
        end
        println()
    end
    
    return generations_stats
end

"""
    tournament_selection(population::Vector{Kernel}, 
                        tournament_size::Int)

Select a kernel via tournament selection.

# Arguments
- `population::Vector{Kernel}`: Population to select from
- `tournament_size::Int`: Number of individuals in tournament

# Returns
- `Kernel`: Selected kernel (winner of tournament)
"""
function tournament_selection(population::Vector{Kernel}, 
                             tournament_size::Int)
    
    # Sample tournament_size individuals
    tournament = sample(population, min(tournament_size, length(population)), replace=false)
    
    # Return best (highest fitness)
    return tournament[argmax([k.fitness for k in tournament])]
end

"""
    population_diversity(population::Vector{Kernel})

Compute genetic diversity of population.

# Returns
- `Float64`: Diversity measure (0.0 to 1.0)
"""
function population_diversity(population::Vector{Kernel})
    if length(population) <= 1
        return 0.0
    end
    
    # Average pairwise genetic distance
    distances = Float64[]
    
    for i in 1:length(population)
        for j in (i+1):length(population)
            dist = genetic_distance(population[i], population[j])
            push!(distances, dist)
        end
    end
    
    if isempty(distances)
        return 0.0
    end
    
    return mean(distances)
end

"""
    clone_kernel(kernel::Kernel)

Create a clone of a kernel.

# Arguments
- `kernel::Kernel`: Kernel to clone

# Returns
- `Kernel`: Cloned kernel with new ID
"""
function clone_kernel(kernel::Kernel)
    # Deep copy genome
    new_coeffs = copy(kernel.genome.coefficients)
    new_genome = KernelGenome(new_coeffs, kernel.genome.max_order)
    
    # Create clone with same lineage
    clone = Kernel(new_genome, copy(kernel.lineage))
    
    # Copy lifecycle (but reset age)
    clone.lifecycle.generation = kernel.lifecycle.generation
    clone.lifecycle.stage = kernel.lifecycle.stage
    clone.lifecycle.maturity = kernel.lifecycle.maturity
    clone.lifecycle.age = 0
    
    # Copy fitness components
    clone.fitness = kernel.fitness
    clone.grip = kernel.grip
    clone.stability = kernel.stability
    clone.efficiency = kernel.efficiency
    clone.novelty = kernel.novelty
    
    return clone
end

"""
    compute_generation_stats(population::Vector{Kernel}, 
                            generation::Int)

Compute statistics for current generation.
"""
function compute_generation_stats(population::Vector{Kernel}, 
                                 generation::Int)
    
    fitnesses = [k.fitness for k in population]
    grips = [k.grip for k in population]
    stabilities = [k.stability for k in population]
    efficiencies = [k.efficiency for k in population]
    novelties = [k.novelty for k in population]
    
    # Stage distribution
    stage_dist = Dict{Symbol, Int}()
    for kernel in population
        stage = kernel.lifecycle.stage
        stage_dist[stage] = get(stage_dist, stage, 0) + 1
    end
    
    return GenerationStats(
        generation,
        maximum(fitnesses),
        mean(fitnesses),
        minimum(fitnesses),
        population_diversity(population),
        mean(grips),
        mean(stabilities),
        mean(efficiencies),
        mean(novelties),
        stage_dist
    )
end

"""
    print_generation_stats(stats::GenerationStats)

Print generation statistics.
"""
function print_generation_stats(stats::GenerationStats)
    println("Generation $(stats.generation):")
    println("  Fitness: best=$(round(stats.best_fitness, digits=3)) " *
            "avg=$(round(stats.avg_fitness, digits=3)) " *
            "worst=$(round(stats.worst_fitness, digits=3))")
    println("  Diversity: $(round(stats.diversity, digits=3))")
    println("  Components: grip=$(round(stats.avg_grip, digits=3)) " *
            "stability=$(round(stats.avg_stability, digits=3)) " *
            "efficiency=$(round(stats.avg_efficiency, digits=3)) " *
            "novelty=$(round(stats.avg_novelty, digits=3))")
    
    # Print stage distribution
    stage_str = join(["$(k)=$(v)" for (k, v) in stats.stage_distribution], ", ")
    println("  Stages: $stage_str")
end

"""
    print_final_statistics(stats::Vector{GenerationStats})

Print final evolution statistics.
"""
function print_final_statistics(stats::Vector{GenerationStats})
    if isempty(stats)
        return
    end
    
    final = stats[end]
    initial = stats[1]
    
    println("Final Generation: $(final.generation)")
    println("  Best Fitness: $(round(final.best_fitness, digits=4))")
    println("  Improvement: $(round((final.best_fitness - initial.best_fitness), digits=4))")
    println("  Final Diversity: $(round(final.diversity, digits=3))")
    println()
    
    println("Evolution Trajectory:")
    println("  Gen | Best Fit | Avg Fit | Diversity")
    println("  " * "-"^42)
    for s in stats
        if s.generation % 10 == 0 || s.generation == 1 || s == final
            println("  $(lpad(s.generation, 3)) | " *
                   "$(rpad(round(s.best_fitness, digits=3), 8)) | " *
                   "$(rpad(round(s.avg_fitness, digits=3), 7)) | " *
                   "$(round(s.diversity, digits=3))")
        end
    end
end

"""
    print_population_status(population::Vector{Kernel})

Print detailed population status.
"""
function print_population_status(population::Vector{Kernel})
    println("\n" * "="^60)
    println("POPULATION STATUS")
    println("="^60)
    println("Size: $(length(population))")
    println()
    
    # Sort by fitness
    sorted_pop = sort(population, by=k->k.fitness, rev=true)
    
    println("Top 5 Kernels:")
    println("-"^60)
    for (i, kernel) in enumerate(sorted_pop[1:min(5, length(sorted_pop))])
        println("\n#$i. $(kernel.id)")
        println("    Stage: $(kernel.lifecycle.stage), Age: $(kernel.lifecycle.age), Gen: $(kernel.lifecycle.generation)")
        println("    Fitness: $(round(kernel.fitness, digits=3)) " *
               "(G:$(round(kernel.grip, digits=2)) " *
               "S:$(round(kernel.stability, digits=2)) " *
               "E:$(round(kernel.efficiency, digits=2)) " *
               "N:$(round(kernel.novelty, digits=2)))")
        println("    Genome: $(length(kernel.genome.coefficients)) terms, order $(kernel.genome.max_order)")
    end
    
    println("\n" * "="^60)
end


end # module KernelEvolution
