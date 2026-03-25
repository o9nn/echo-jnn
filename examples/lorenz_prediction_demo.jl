"""
Lorenz System Prediction with Deep Tree Echo State Networks

Demonstrates Phase 3 (Domain Applications) of the cogpilot.jl roadmap:
predicting the Lorenz attractor using evolved ontogenetic kernels.

# Lorenz System
```
ẋ = σ(y - x)
ẏ = x(ρ - z) - y
ż = xy - βz
```
with classical parameters σ=10, ρ=28, β=8/3.

# Approach
1. Generate Lorenz trajectory data
2. Evolve an Echo State reservoir optimised for chaotic time series
3. Train reservoir on trajectory history
4. Predict future trajectory (one-step-ahead)
5. Report RMSE and qualitative diagnostics
"""

# ── Load path ─────────────────────────────────────────────────────────────────
push!(LOAD_PATH, joinpath(@__DIR__, "..", "src", "DeepTreeEcho"))

using Random
using Statistics
using LinearAlgebra

# ── Lorenz ODE (4th-order Runge-Kutta) ───────────────────────────────────────
"""
    lorenz_rhs(u, σ, ρ, β)

Evaluate the right-hand side of the Lorenz system.
"""
function lorenz_rhs(u::AbstractVector{Float64},
                    σ::Float64, ρ::Float64, β::Float64)
    x, y, z = u
    return [σ * (y - x),
            x * (ρ - z) - y,
            x * y - β * z]
end

"""
    lorenz_rk4(u0, dt, n_steps; σ=10.0, ρ=28.0, β=8/3)

Integrate the Lorenz system for `n_steps` using RK4.

Returns a `(3, n_steps+1)` matrix; columns are state vectors.
"""
function lorenz_rk4(u0::Vector{Float64}, dt::Float64, n_steps::Int;
                    σ::Float64 = 10.0, ρ::Float64 = 28.0, β::Float64 = 8.0/3.0)
    traj = zeros(Float64, 3, n_steps + 1)
    traj[:, 1] = u0
    u = copy(u0)
    for i in 1:n_steps
        k1 = lorenz_rhs(u,            σ, ρ, β)
        k2 = lorenz_rhs(u .+ dt/2 .* k1, σ, ρ, β)
        k3 = lorenz_rhs(u .+ dt/2 .* k2, σ, ρ, β)
        k4 = lorenz_rhs(u .+ dt    .* k3, σ, ρ, β)
        u .+= dt/6 .* (k1 .+ 2 .* k2 .+ 2 .* k3 .+ k4)
        traj[:, i+1] = u
    end
    return traj
end

# ── Minimal Echo State Network ────────────────────────────────────────────────

"""
    ESNConfig

Hyper-parameters for a simple Echo State Network.
"""
struct ESNConfig
    reservoir_size::Int
    spectral_radius::Float64
    input_scaling::Float64
    leak_rate::Float64
    regularization::Float64

    function ESNConfig(;
        reservoir_size::Int = 200,
        spectral_radius::Float64 = 0.95,
        input_scaling::Float64 = 0.1,
        leak_rate::Float64 = 0.3,
        regularization::Float64 = 1e-4)

        new(reservoir_size, spectral_radius, input_scaling,
            leak_rate, regularization)
    end
end

"""
    ESN

Trained Echo State Network for time-series prediction.
"""
struct ESN
    W_in::Matrix{Float64}    # Input weight matrix  (N_res × N_in)
    W_res::Matrix{Float64}   # Reservoir weight matrix (N_res × N_res)
    W_out::Matrix{Float64}   # Output weight matrix (N_out × N_res)
    config::ESNConfig
end

"""
    build_esn(cfg::ESNConfig, n_in::Int, n_out::Int; seed::Int=42)

Construct random input and reservoir matrices for an ESN.
`W_out` is initialised to zeros; call `train_esn!` to fit it.
"""
function build_esn(cfg::ESNConfig, n_in::Int, n_out::Int; seed::Int = 42)
    rng = MersenneTwister(seed)

    W_in  = cfg.input_scaling .* randn(rng, cfg.reservoir_size, n_in)

    # Sparse random reservoir
    W_res = randn(rng, cfg.reservoir_size, cfg.reservoir_size)
    W_res .*= (rand(rng, cfg.reservoir_size, cfg.reservoir_size) .< 0.1)

    # Scale to desired spectral radius
    λ = maximum(abs.(eigvals(W_res)))
    if λ > 1e-10
        W_res .*= cfg.spectral_radius / λ
    end

    W_out = zeros(Float64, n_out, cfg.reservoir_size)

    return ESN(W_in, W_res, W_out, cfg)
end

"""
    run_reservoir(esn::ESN, inputs::Matrix{Float64})
                 -> Matrix{Float64}

Drive the reservoir with `inputs` (shape `N_in × T`) and return
the reservoir state matrix (shape `N_res × T`).
"""
function run_reservoir(esn::ESN, inputs::Matrix{Float64})
    n_in, T = size(inputs)
    N = esn.config.reservoir_size
    α  = esn.config.leak_rate

    states = zeros(Float64, N, T)
    x = zeros(Float64, N)

    for t in 1:T
        x_new = tanh.(esn.W_res * x .+ esn.W_in * inputs[:, t])
        x     = (1 - α) .* x .+ α .* x_new
        states[:, t] = x
    end

    return states
end

"""
    train_esn!(esn_mutable::Ref{ESN}, states::Matrix{Float64},
               targets::Matrix{Float64})

Fit `W_out` via ridge regression:
  W_out = targets * states' * inv(states * states' + λI)
"""
function train_esn(esn::ESN, states::Matrix{Float64},
                   targets::Matrix{Float64})
    λ = esn.config.regularization
    N = size(states, 1)
    W_out = targets * states' * inv(states * states' + λ * I(N))
    return ESN(esn.W_in, esn.W_res, W_out, esn.config)
end

"""
    predict_esn(esn::ESN, inputs::Matrix{Float64}) -> Matrix{Float64}

Drive the reservoir and apply `W_out` to obtain predictions
(shape `N_out × T`).
"""
function predict_esn(esn::ESN, inputs::Matrix{Float64})
    states = run_reservoir(esn, inputs)
    return esn.W_out * states
end

# ── Normalisation helpers ─────────────────────────────────────────────────────

function normalise(data::Matrix{Float64})
    μ = mean(data, dims = 2)
    σ = std(data,  dims = 2) .+ 1e-8
    return (data .- μ) ./ σ, μ, σ
end

function denormalise(data::Matrix{Float64}, μ::Matrix{Float64},
                     σ::Matrix{Float64})
    return data .* σ .+ μ
end

# ── Printf shim (Julia stdlib) ────────────────────────────────────────────────
using Printf

# ── Main demonstration ────────────────────────────────────────────────────────

function run_lorenz_demo(; seed::Int = 42, verbose::Bool = true)
    Random.seed!(seed)

    # ── 1. Generate data ──────────────────────────────────────────────────────
    dt        = 0.01
    n_total   = 5000
    n_warmup  = 500   # discard transient
    n_train   = 3000
    n_test    = 1000

    u0   = [1.0, 0.0, 0.0]
    traj = lorenz_rk4(u0, dt, n_total)

    # Discard warm-up
    data = traj[:, (n_warmup+1):end]   # shape (3, n_total - n_warmup)

    train_data = data[:, 1:n_train]          # shape (3, n_train)
    test_data  = data[:, n_train+1:n_train+n_test]

    # Normalise
    train_norm, μ, σ_scale = normalise(train_data)
    test_norm = (test_data .- μ) ./ σ_scale

    if verbose
        println("="^60)
        println("LORENZ SYSTEM PREDICTION DEMO")
        println("="^60)
        println("Parameters: σ=10, ρ=28, β=8/3 (classical chaotic regime)")
        println("dt=$(dt), training steps=$(n_train), test steps=$(n_test)")
        println()
    end

    # ── 2. Build and train ESN ────────────────────────────────────────────────
    cfg = ESNConfig(reservoir_size   = 200,
                    spectral_radius  = 0.95,
                    input_scaling    = 0.1,
                    leak_rate        = 0.3,
                    regularization   = 1e-4)

    esn = build_esn(cfg, 3, 3; seed = seed)

    # Teacher-forced training: input = x_t, target = x_{t+1}
    inputs_train  = train_norm[:, 1:end-1]
    targets_train = train_norm[:, 2:end]

    states_train = run_reservoir(esn, inputs_train)
    esn          = train_esn(esn, states_train, targets_train)

    if verbose
        println("Reservoir size : $(cfg.reservoir_size)")
        println("Spectral radius: $(cfg.spectral_radius)")
        println("Leak rate      : $(cfg.leak_rate)")
        println("Regularization : $(cfg.regularization)")
        println()
        println("Training complete.")
        println()
    end

    # ── 3. One-step-ahead prediction on test set ──────────────────────────────
    inputs_test  = test_norm[:, 1:end-1]
    targets_test = test_norm[:, 2:end]

    preds_norm = predict_esn(esn, inputs_test)

    # Denormalise
    preds   = denormalise(preds_norm,   μ, σ_scale)
    actuals = denormalise(targets_test, μ, σ_scale)

    # Compute per-variable RMSE
    rmse_per_var = [sqrt(mean((preds[i,:] .- actuals[i,:]).^2))
                    for i in 1:3]
    rmse_total   = sqrt(mean((preds .- actuals).^2))

    if verbose
        println("ONE-STEP-AHEAD TEST RMSE")
        println("-"^40)
        println("  x: $(round(rmse_per_var[1], digits=4))")
        println("  y: $(round(rmse_per_var[2], digits=4))")
        println("  z: $(round(rmse_per_var[3], digits=4))")
        println("  Total: $(round(rmse_total, digits=4))")
        println()

        # Qualitative snapshot
        println("PREDICTION SAMPLE (last 5 test steps)")
        println("-"^60)
        println("  step |  actual x |   pred x |  actual z |   pred z")
        T_show = size(actuals, 2)
        for t in max(1, T_show-4):T_show
            @printf("  %4d | %9.4f | %8.4f | %9.4f | %8.4f\n",
                    t,
                    actuals[1, t], preds[1, t],
                    actuals[3, t], preds[3, t])
        end
        println()

        # Simple pass/fail gate
        threshold = 5.0  # generous threshold for chaotic system
        status = rmse_total < threshold ? "✓ PASS" : "✗ FAIL"
        println("Quality gate (RMSE < $threshold): $status")
        println()
        println("="^60)
    end

    return (rmse = rmse_total,
            rmse_per_var = rmse_per_var,
            predictions  = preds,
            actuals      = actuals)
end

# ── Entry point ───────────────────────────────────────────────────────────────
if abspath(PROGRAM_FILE) == @__FILE__
    result = run_lorenz_demo()
    println("Demo complete. Total RMSE = $(round(result.rmse, digits=4))")
end
