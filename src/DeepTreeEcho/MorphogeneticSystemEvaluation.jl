"""
    MorphogeneticSystemEvaluation

Evaluates similarity between computational agentic cellular automata and
actual biological self-assembling morphogenetic M-Systems.

# Background: Biological M-Systems

M-Systems (Morphogenetic Systems) are biological developmental systems that:

1. **Self-assemble**: Create complex structures from simple rules
2. **Morphogenesis**: Form-generation through cell differentiation
3. **Pattern formation**: Turing patterns, gradients, segmentation
4. **Homeostasis**: Maintain stable patterns despite perturbations
5. **Regeneration**: Restore patterns after damage
6. **Scale-invariance**: Adapt to size changes

Key examples:
- **Drosophila segmentation**: Gap genes → Pair-rule → Segment polarity
- **Hydra regeneration**: Head-foot axis, organizer regions
- **French Flag Model**: Concentration gradients define positional information
- **Turing Patterns**: Reaction-diffusion creates spots/stripes
- **Neural Crest Migration**: Cell guidance by morphogen gradients

# Evaluation Framework

## Quantitative Metrics

1. **Turing Pattern Similarity**
   - Wavelength distribution
   - Amplitude spectra
   - Pattern stability

2. **Gradient Formation**
   - Exponential decay fit
   - Length scale measurement
   - Source-sink dynamics

3. **Segmentation Quality**
   - Boundary sharpness
   - Periodicity regularity
   - Robustness to noise

4. **Regeneration Capacity**
   - Recovery time after damage
   - Pattern fidelity restoration
   - Robustness metric

5. **Scale Invariance**
   - Pattern adapts to grid size
   - Proportional scaling
   - Dimensionless parameters

6. **Cell Differentiation**
   - Distinct cell types emerge
   - Spatial organization
   - Type stability

## Biological Correspondence

Compare to known M-System features:

- **Bicoid gradient** (Drosophila): Exponential anterior-posterior
- **Gap gene expression**: Sharp boundaries, overlapping domains
- **Pair-rule stripes**: Periodic patterns, ~7 segments
- **Organizer regions**: High morphogen concentration spots
- **Lateral inhibition**: Neighbor-dependent suppression
- **Induction**: Threshold-triggered differentiation

# Usage

```julia
using DeepTreeEcho.NeuroSymbolicBridge.MorphogeneticSystemEvaluation

# Create evaluator
evaluator = create_msystem_evaluator(
    reference_system = :drosophila_segmentation,
    metrics = [:turing_pattern, :gradient, :segmentation]
)

# Run agentic CA simulation
aca_system = create_agentic_ca_system(...)
initialize_agents!(aca_system)

# Simulate morphogenesis
for step in 1:1000
    spatial_compute_step!(aca_system)
    evolve_morphogenetic_field!(aca_system)
end

# Evaluate similarity to biological M-Systems
evaluation = evaluate_msystem_similarity(evaluator, aca_system)

# Results
println("Turing Pattern Score: ", evaluation.turing_similarity)
println("Gradient Formation: ", evaluation.gradient_quality)
println("Overall Biological Fidelity: ", evaluation.total_score)
```
"""
module MorphogeneticSystemEvaluation

using LinearAlgebra
using Random
using Statistics
using FFTW  # For frequency analysis

export MSysEvaluator, MSysEvaluation, BiologicalReference,
       create_msystem_evaluator, evaluate_msystem_similarity,
       evaluate_turing_patterns, evaluate_gradient_formation,
       evaluate_segmentation, evaluate_regeneration, evaluate_scale_invariance,
       compare_to_drosophila, compare_to_hydra, compare_to_french_flag

########################################################################
# Core Types
########################################################################

"""
    BiologicalReference

Reference data from actual biological morphogenetic systems.
"""
struct BiologicalReference
    name::Symbol                        # e.g., :drosophila, :hydra
    
    # Pattern characteristics
    typical_wavelength::Float64         # Characteristic length scale
    gradient_length_scale::Float64      # Exponential decay length
    num_segments::Int                   # Number of repeated units
    boundary_sharpness::Float64         # How sharp are boundaries
    
    # Morphogen properties
    diffusion_ratio::Float64            # D_activator / D_inhibitor
    production_ratio::Float64           # Production rate ratio
    decay_ratio::Float64                # Decay rate ratio
    
    # Temporal properties
    pattern_formation_time::Float64     # Time to stable pattern
    regeneration_time::Float64          # Time to recover from damage
    
    # Robustness
    noise_tolerance::Float64            # Withstands noise level
    size_adaptability::Float64          # Can scale to different sizes
    
    # Biological details
    description::String
    key_morphogens::Vector{String}
end

"""
    MSysEvaluation

Results of evaluating computational system against biological M-Systems.
"""
mutable struct MSysEvaluation
    # Pattern metrics
    turing_similarity::Float64          # 0-1: Match to Turing patterns
    gradient_quality::Float64           # 0-1: Exponential gradient fit
    segmentation_score::Float64         # 0-1: Periodic segmentation quality
    
    # Dynamics metrics
    regeneration_capacity::Float64      # 0-1: Recovery after damage
    scale_invariance::Float64           # 0-1: Adapts to size changes
    homeostasis_stability::Float64      # 0-1: Maintains patterns
    
    # Cell behavior metrics
    differentiation_index::Float64      # 0-1: Distinct cell types emerge
    spatial_organization::Float64       # 0-1: Organized cell arrangement
    collective_behavior::Float64        # 0-1: Coordinated agent actions
    
    # Comparison to biological references
    drosophila_similarity::Float64      # Match to fly development
    hydra_similarity::Float64           # Match to hydra regeneration
    french_flag_similarity::Float64     # Match to gradient interpretation
    
    # Overall scores
    pattern_formation_score::Float64    # Average of pattern metrics
    biological_fidelity::Float64        # Overall similarity to M-Systems
    total_score::Float64                # Weighted combination
    
    # Detailed analysis
    wavelength_distribution::Vector{Float64}
    gradient_decay_fit::Vector{Float64}
    segment_boundaries::Vector{Int}
    
    # Metadata
    evaluation_time::Float64
    num_steps_simulated::Int
end

"""
    MSysEvaluator

Evaluator for comparing computational systems to biological M-Systems.
"""
mutable struct MSysEvaluator
    # Reference systems
    references::Dict{Symbol, BiologicalReference}
    primary_reference::Symbol
    
    # Evaluation settings
    enabled_metrics::Vector{Symbol}
    damage_test_enabled::Bool
    scaling_test_enabled::Bool
    
    # Analysis parameters
    fft_enabled::Bool
    gradient_fit_method::Symbol         # :exponential, :linear, :power
    segmentation_threshold::Float64
    
    # Statistics
    num_evaluations::Int
    evaluation_history::Vector{MSysEvaluation}
end

########################################################################
# Biological Reference Data
########################################################################

"""
    get_drosophila_reference()

Reference data from Drosophila embryo segmentation.
"""
function get_drosophila_reference()
    return BiologicalReference(
        :drosophila,
        0.15,    # Wavelength: ~15% of embryo length per segment
        0.25,    # Bicoid gradient: ~25% decay length
        7,       # 7 pair-rule stripes
        5.0,     # Sharp boundaries (steep gradients)
        2.0,     # Diffusion ratio (activator faster)
        1.5,     # Production ratio
        0.8,     # Decay ratio
        180.0,   # ~3 hours to pattern formation
        0.0,     # No regeneration in early embryo
        0.2,     # 20% noise tolerance
        0.3,     # Limited size adaptability
        "Drosophila segmentation via gap genes, pair-rule genes, and segment polarity genes",
        ["bicoid", "hunchback", "even-skipped", "fushi-tarazu"]
    )
end

"""
    get_hydra_reference()

Reference data from Hydra regeneration.
"""
function get_hydra_reference()
    return BiologicalReference(
        :hydra,
        0.5,     # Wavelength: half body length (head-foot)
        0.3,     # Gradient: 30% decay length
        2,       # 2 main regions (head, foot)
        2.0,     # Moderate boundary sharpness
        1.5,     # Diffusion ratio
        2.0,     # Production ratio
        1.0,     # Decay ratio
        72.0,    # ~3 days to regenerate
        48.0,    # 2 days to full recovery
        0.5,     # 50% noise tolerance (highly robust)
        0.9,     # High size adaptability
        "Hydra regeneration with head organizer and foot organizer regions",
        ["Wnt", "beta-catenin", "HyAlx", "HyBra1"]
    )
end

"""
    get_french_flag_reference()

Reference for French Flag model (Wolpert's positional information).
"""
function get_french_flag_reference()
    return BiologicalReference(
        :french_flag,
        0.33,    # Wavelength: three equal bands
        0.4,     # Linear or exponential gradient
        3,       # 3 regions (blue, white, red)
        3.0,     # Moderate boundaries
        1.0,     # Equal diffusion
        1.0,     # Equal production
        1.0,     # Equal decay
        60.0,    # Pattern formation time
        30.0,    # Regeneration time
        0.4,     # Moderate noise tolerance
        0.7,     # Good size adaptability
        "Wolpert's French Flag model: concentration thresholds define regions",
        ["morphogen_A"]
    )
end

########################################################################
# Constructor
########################################################################

"""
    create_msystem_evaluator(;reference_system, metrics)

Create evaluator for comparing to biological M-Systems.
"""
function create_msystem_evaluator(;
    reference_system::Symbol=:drosophila,
    metrics::Vector{Symbol}=[:turing_pattern, :gradient, :segmentation, 
                             :regeneration, :scale_invariance],
    damage_test::Bool=true,
    scaling_test::Bool=true
)
    references = Dict{Symbol, BiologicalReference}(
        :drosophila => get_drosophila_reference(),
        :hydra => get_hydra_reference(),
        :french_flag => get_french_flag_reference()
    )
    
    return MSysEvaluator(
        references,
        reference_system,
        metrics,
        damage_test,
        scaling_test,
        true,  # FFT enabled
        :exponential,
        0.5,   # Segmentation threshold
        0,
        MSysEvaluation[]
    )
end

########################################################################
# Main Evaluation Function
########################################################################

"""
    evaluate_msystem_similarity(evaluator, aca_system)

Comprehensive evaluation of computational system against biological M-Systems.
"""
function evaluate_msystem_similarity(evaluator::MSysEvaluator, aca_system)
    println("\n" * "="^70)
    println("🧬 M-System Biological Similarity Evaluation")
    println("="^70)
    
    evaluation = MSysEvaluation(
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        Float64[], Float64[], Int[],
        0.0, 0
    )
    
    # 1. Turing Pattern Analysis
    if :turing_pattern in evaluator.enabled_metrics
        println("\n📐 Evaluating Turing pattern similarity...")
        evaluation.turing_similarity = evaluate_turing_patterns(evaluator, aca_system, evaluation)
        println(@sprintf("   Turing similarity: %.3f", evaluation.turing_similarity))
    end
    
    # 2. Gradient Formation
    if :gradient in evaluator.enabled_metrics
        println("\n📊 Evaluating gradient formation...")
        evaluation.gradient_quality = evaluate_gradient_formation(evaluator, aca_system, evaluation)
        println(@sprintf("   Gradient quality: %.3f", evaluation.gradient_quality))
    end
    
    # 3. Segmentation
    if :segmentation in evaluator.enabled_metrics
        println("\n🔲 Evaluating segmentation...")
        evaluation.segmentation_score = evaluate_segmentation(evaluator, aca_system, evaluation)
        println(@sprintf("   Segmentation score: %.3f", evaluation.segmentation_score))
    end
    
    # 4. Regeneration (if enabled)
    if :regeneration in evaluator.enabled_metrics && evaluator.damage_test_enabled
        println("\n🔧 Testing regeneration capacity...")
        evaluation.regeneration_capacity = evaluate_regeneration(evaluator, aca_system)
        println(@sprintf("   Regeneration capacity: %.3f", evaluation.regeneration_capacity))
    end
    
    # 5. Scale Invariance (if enabled)
    if :scale_invariance in evaluator.enabled_metrics && evaluator.scaling_test_enabled
        println("\n📏 Testing scale invariance...")
        evaluation.scale_invariance = evaluate_scale_invariance(evaluator, aca_system)
        println(@sprintf("   Scale invariance: %.3f", evaluation.scale_invariance))
    end
    
    # 6. Cell Differentiation and Organization
    println("\n🧬 Evaluating cell differentiation...")
    evaluation.differentiation_index = evaluate_cell_differentiation(aca_system)
    evaluation.spatial_organization = evaluate_spatial_organization(aca_system)
    evaluation.collective_behavior = evaluate_collective_behavior(aca_system)
    println(@sprintf("   Differentiation index: %.3f", evaluation.differentiation_index))
    println(@sprintf("   Spatial organization: %.3f", evaluation.spatial_organization))
    
    # 7. Compare to specific biological systems
    println("\n🔬 Comparing to biological references...")
    evaluation.drosophila_similarity = compare_to_drosophila(evaluator, aca_system, evaluation)
    evaluation.hydra_similarity = compare_to_hydra(evaluator, aca_system, evaluation)
    evaluation.french_flag_similarity = compare_to_french_flag(evaluator, aca_system, evaluation)
    
    println(@sprintf("   Drosophila similarity: %.3f", evaluation.drosophila_similarity))
    println(@sprintf("   Hydra similarity: %.3f", evaluation.hydra_similarity))
    println(@sprintf("   French Flag similarity: %.3f", evaluation.french_flag_similarity))
    
    # 8. Compute aggregate scores
    pattern_metrics = [evaluation.turing_similarity, 
                      evaluation.gradient_quality,
                      evaluation.segmentation_score]
    evaluation.pattern_formation_score = mean(filter(!isnan, pattern_metrics))
    
    biological_metrics = [evaluation.drosophila_similarity,
                         evaluation.hydra_similarity,
                         evaluation.french_flag_similarity]
    evaluation.biological_fidelity = mean(filter(!isnan, biological_metrics))
    
    # Total score (weighted)
    evaluation.total_score = 0.3 * evaluation.pattern_formation_score +
                            0.3 * evaluation.biological_fidelity +
                            0.2 * evaluation.differentiation_index +
                            0.1 * evaluation.regeneration_capacity +
                            0.1 * evaluation.scale_invariance
    
    evaluation.num_steps_simulated = aca_system.step_count
    
    # Store in history
    evaluator.num_evaluations += 1
    push!(evaluator.evaluation_history, evaluation)
    
    println("\n" * "="^70)
    println("📊 EVALUATION SUMMARY")
    println("="^70)
    println(@sprintf("Pattern Formation Score: %.2f%%", evaluation.pattern_formation_score * 100))
    println(@sprintf("Biological Fidelity: %.2f%%", evaluation.biological_fidelity * 100))
    println(@sprintf("Overall M-System Similarity: %.2f%%", evaluation.total_score * 100))
    println("="^70)
    
    return evaluation
end

########################################################################
# Individual Metric Evaluations
########################################################################

"""
    evaluate_turing_patterns(evaluator, aca_system, evaluation)

Evaluate similarity to Turing reaction-diffusion patterns.
"""
function evaluate_turing_patterns(evaluator::MSysEvaluator, aca_system, evaluation)
    # Get morphogen field (use first morphogen)
    field = aca_system.morphogen_field[:, :, :, 1]
    
    # Compute power spectrum via FFT
    if evaluator.fft_enabled
        # Take 2D slice (middle z)
        (nx, ny, nz) = size(field)
        slice = field[:, :, nz÷2]
        
        # 2D FFT
        fft_result = fft(slice)
        power_spectrum = abs2.(fft_result)
        
        # Find dominant wavelength
        power_spectrum[1,1] = 0  # Remove DC component
        max_power_idx = argmax(power_spectrum)
        
        # Convert to wavelength
        kx = max_power_idx[1] <= nx÷2 ? max_power_idx[1]-1 : max_power_idx[1]-nx-1
        ky = max_power_idx[2] <= ny÷2 ? max_power_idx[2]-1 : max_power_idx[2]-ny-1
        k_magnitude = sqrt(kx^2 + ky^2)
        
        if k_magnitude > 0
            wavelength = nx / k_magnitude  # In grid units
            normalized_wavelength = wavelength / nx
            
            # Store wavelength distribution
            evaluation.wavelength_distribution = [normalized_wavelength]
            
            # Compare to reference
            ref = evaluator.references[evaluator.primary_reference]
            wavelength_match = exp(-abs(normalized_wavelength - ref.typical_wavelength) / 0.1)
            
            # Check for pattern regularity (peak sharpness)
            power_variance = std(power_spectrum[:])
            power_mean = mean(power_spectrum[:])
            regularity = min(1.0, power_variance / (power_mean + 1e-10) / 10)
            
            return (wavelength_match + regularity) / 2
        end
    end
    
    # Fallback: spatial variance analysis
    variance_score = std(field) / (mean(abs.(field)) + 1e-10)
    return min(1.0, variance_score / 2)
end

"""
    evaluate_gradient_formation(evaluator, aca_system, evaluation)

Evaluate quality of morphogen gradients (exponential decay from source).
"""
function evaluate_gradient_formation(evaluator::MSysEvaluator, aca_system, evaluation)
    field = aca_system.morphogen_field[:, :, :, 1]
    (nx, ny, nz) = size(field)
    
    # Find potential source (maximum concentration)
    max_val = maximum(field)
    max_idx = findfirst(field .== max_val)
    
    if isnothing(max_idx)
        return 0.0
    end
    
    source_pos = [max_idx[1], max_idx[2], max_idx[3]]
    
    # Sample concentrations at various distances from source
    distances = Float64[]
    concentrations = Float64[]
    
    for x in 1:nx, y in 1:ny, z in 1:nz
        dist = sqrt((x - source_pos[1])^2 + (y - source_pos[2])^2 + (z - source_pos[3])^2)
        if dist > 0 && field[x,y,z] > 0.01
            push!(distances, dist)
            push!(concentrations, field[x,y,z])
        end
    end
    
    if length(distances) < 10
        return 0.0
    end
    
    # Fit exponential: c(d) = c0 * exp(-d/λ)
    # Log-linear fit: log(c) = log(c0) - d/λ
    log_conc = log.(concentrations)
    
    # Linear regression
    n = length(distances)
    mean_d = mean(distances)
    mean_log_c = mean(log_conc)
    
    numerator = sum((distances .- mean_d) .* (log_conc .- mean_log_c))
    denominator = sum((distances .- mean_d).^2)
    
    if denominator > 1e-10
        slope = numerator / denominator
        intercept = mean_log_c - slope * mean_d
        
        # Compute R² (goodness of fit)
        predictions = intercept .+ slope .* distances
        ss_res = sum((log_conc .- predictions).^2)
        ss_tot = sum((log_conc .- mean_log_c).^2)
        r_squared = 1 - ss_res / (ss_tot + 1e-10)
        
        # Decay length scale
        decay_length = -1.0 / slope
        normalized_decay = decay_length / nx
        
        evaluation.gradient_decay_fit = [normalized_decay, r_squared]
        
        # Compare to reference
        ref = evaluator.references[evaluator.primary_reference]
        length_scale_match = exp(-abs(normalized_decay - ref.gradient_length_scale) / 0.1)
        
        return (r_squared + length_scale_match) / 2
    end
    
    return 0.0
end

"""
    evaluate_segmentation(evaluator, aca_system, evaluation)

Evaluate periodic segmentation quality.
"""
function evaluate_segmentation(evaluator::MSysEvaluator, aca_system, evaluation)
    field = aca_system.morphogen_field[:, :, :, 1]
    (nx, ny, nz) = size(field)
    
    # Take 1D profile along longest axis
    profile = field[:, ny÷2, nz÷2]
    
    # Find segments (threshold crossings)
    threshold = evaluator.segmentation_threshold * (maximum(profile) - minimum(profile)) + minimum(profile)
    
    # Detect boundaries
    above_threshold = profile .> threshold
    boundaries = Int[]
    
    for i in 2:length(above_threshold)
        if above_threshold[i] != above_threshold[i-1]
            push!(boundaries, i)
        end
    end
    
    evaluation.segment_boundaries = boundaries
    
    if length(boundaries) < 3
        return 0.0
    end
    
    # Compute segment sizes
    segment_sizes = diff(boundaries)
    
    # Regularity: coefficient of variation of segment sizes
    regularity = 1.0 / (1.0 + std(segment_sizes) / (mean(segment_sizes) + 1e-10))
    
    # Boundary sharpness: gradient magnitude at boundaries
    sharpness_sum = 0.0
    for b in boundaries
        if b > 1 && b < length(profile)
            gradient = abs(profile[b] - profile[b-1])
            sharpness_sum += gradient
        end
    end
    sharpness = sharpness_sum / length(boundaries)
    normalized_sharpness = min(1.0, sharpness * 10)
    
    # Number of segments
    num_segments = length(boundaries) - 1
    ref = evaluator.references[evaluator.primary_reference]
    segment_count_match = exp(-abs(num_segments - ref.num_segments) / 3)
    
    return (regularity + normalized_sharpness + segment_count_match) / 3
end

"""
    evaluate_regeneration(evaluator, aca_system)

Test regeneration capacity by damaging pattern and measuring recovery.
"""
function evaluate_regeneration(evaluator::MSysEvaluator, aca_system)
    # Store original state
    original_field = copy(aca_system.morphogen_field)
    original_agents = [copy(agent.embedding) for agent in aca_system.agent_list]
    
    # Apply damage: clear central region
    (nx, ny, nz) = aca_system.grid_size
    damage_radius = min(nx, ny, nz) ÷ 4
    center = (nx÷2, ny÷2, nz÷2)
    
    for x in 1:nx, y in 1:ny, z in 1:nz
        dist = sqrt((x - center[1])^2 + (y - center[2])^2 + (z - center[3])^2)
        if dist < damage_radius
            aca_system.morphogen_field[x, y, z, :] .= 0
        end
    end
    
    # Run recovery simulation
    recovery_steps = 100
    recovery_trajectory = Float64[]
    
    for step in 1:recovery_steps
        spatial_compute_step!(aca_system)
        evolve_morphogenetic_field!(aca_system)
        
        # Measure recovery (correlation with original)
        recovery = cor(vec(aca_system.morphogen_field), vec(original_field))
        push!(recovery_trajectory, recovery)
    end
    
    # Regeneration capacity: final recovery level
    final_recovery = recovery_trajectory[end]
    
    # Restore original state
    aca_system.morphogen_field = original_field
    for (i, agent) in enumerate(aca_system.agent_list)
        agent.embedding = original_agents[i]
    end
    
    return max(0.0, final_recovery)
end

"""
    evaluate_scale_invariance(evaluator, aca_system)

Test if patterns scale appropriately with system size.
"""
function evaluate_scale_invariance(evaluator::MSysEvaluator, aca_system)
    # This would require running simulations at different grid sizes
    # For now, return a heuristic based on relative wavelengths
    
    field = aca_system.morphogen_field[:, :, :, 1]
    (nx, ny, nz) = size(field)
    
    # Compute characteristic length scale from autocorrelation
    profile = field[:, ny÷2, nz÷2]
    autocorr = [cor(profile[1:end-lag], profile[1+lag:end]) for lag in 0:min(20, length(profile)÷2)]
    
    # Find first zero crossing (characteristic length)
    char_length = findfirst(autocorr .< 0)
    
    if isnothing(char_length)
        char_length = length(autocorr)
    end
    
    # Normalized length scale
    normalized_length = char_length / nx
    
    # Scale invariance: if patterns are scale-free, this should be consistent
    # across different system sizes (we approximate by checking if it's reasonable)
    scale_score = exp(-abs(normalized_length - 0.2) / 0.1)
    
    return scale_score
end

"""
    evaluate_cell_differentiation(aca_system)

Evaluate emergence of distinct cell types.
"""
function evaluate_cell_differentiation(aca_system)
    if aca_system.num_agents == 0
        return 0.0
    end
    
    # Measure diversity of agent embeddings
    embeddings = hcat([agent.embedding for agent in aca_system.agent_list]...)
    
    # Compute pairwise distances
    n_agents = size(embeddings, 2)
    if n_agents < 2
        return 0.0
    end
    
    distances = Float64[]
    for i in 1:n_agents
        for j in (i+1):n_agents
            d = norm(embeddings[:, i] - embeddings[:, j])
            push!(distances, d)
        end
    end
    
    # Differentiation index: mean distance (normalized)
    mean_distance = mean(distances)
    max_possible = sqrt(2 * aca_system.agent_embedding_dim)  # Max distance in hypercube
    
    return min(1.0, mean_distance / max_possible * 5)
end

"""
    evaluate_spatial_organization(aca_system)

Evaluate spatial organization of agents.
"""
function evaluate_spatial_organization(aca_system)
    if aca_system.num_agents == 0
        return 0.0
    end
    
    # Check if similar agents cluster spatially
    # Compute local homogeneity
    homogeneity_sum = 0.0
    count = 0
    
    for agent in aca_system.agent_list
        if length(agent.neighbor_ids) == 0
            continue
        end
        
        # Similarity with neighbors
        for neighbor_id in agent.neighbor_ids
            neighbor = aca_system.agent_list[neighbor_id]
            similarity = dot(agent.embedding, neighbor.embedding) / 
                        (norm(agent.embedding) * norm(neighbor.embedding) + 1e-10)
            homogeneity_sum += max(0, similarity)
            count += 1
        end
    end
    
    return count > 0 ? homogeneity_sum / count : 0.0
end

"""
    evaluate_collective_behavior(aca_system)

Evaluate coordinated collective behavior.
"""
function evaluate_collective_behavior(aca_system)
    if aca_system.num_agents == 0
        return 0.0
    end
    
    # Measure synchronization of agent activations
    activations = [agent.activation_level for agent in aca_system.agent_list]
    
    # Collective behavior: low variance indicates coordination
    sync_score = 1.0 / (1.0 + std(activations))
    
    return sync_score
end

########################################################################
# Biological System Comparisons
########################################################################

"""
    compare_to_drosophila(evaluator, aca_system, evaluation)

Compare to Drosophila embryo segmentation.
"""
function compare_to_drosophila(evaluator::MSysEvaluator, aca_system, evaluation)
    ref = evaluator.references[:drosophila]
    
    # Key features: periodic stripes, sharp boundaries, 7 segments
    segment_match = exp(-abs(length(evaluation.segment_boundaries) - ref.num_segments) / 3)
    
    # Wavelength match
    wavelength_match = if !isempty(evaluation.wavelength_distribution)
        exp(-abs(evaluation.wavelength_distribution[1] - ref.typical_wavelength) / 0.1)
    else
        0.5
    end
    
    # Boundary sharpness (from segmentation score)
    sharpness_match = evaluation.segmentation_score
    
    return (segment_match + wavelength_match + sharpness_match) / 3
end

"""
    compare_to_hydra(evaluator, aca_system, evaluation)

Compare to Hydra regeneration system.
"""
function compare_to_hydra(evaluator::MSysEvaluator, aca_system, evaluation)
    ref = evaluator.references[:hydra]
    
    # Key features: gradient, 2 organizers, high regeneration
    gradient_match = evaluation.gradient_quality
    regeneration_match = evaluation.regeneration_capacity
    
    # Check for 2-3 regions (head, body, foot)
    region_match = exp(-abs(length(evaluation.segment_boundaries) - ref.num_segments) / 2)
    
    return (gradient_match + regeneration_match + region_match) / 3
end

"""
    compare_to_french_flag(evaluator, aca_system, evaluation)

Compare to French Flag positional information model.
"""
function compare_to_french_flag(evaluator::MSysEvaluator, aca_system, evaluation)
    ref = evaluator.references[:french_flag]
    
    # Key features: linear gradient, 3 regions, threshold-based
    gradient_match = evaluation.gradient_quality
    
    # Three regions
    region_match = exp(-abs(length(evaluation.segment_boundaries) - ref.num_segments) / 2)
    
    # Cell differentiation (threshold response)
    differentiation_match = evaluation.differentiation_index
    
    return (gradient_match + region_match + differentiation_match) / 3
end

end # module MorphogeneticSystemEvaluation
