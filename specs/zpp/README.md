# Echo-JNN Z++ Formal Specifications

This directory contains Z++ formal specifications for the Echo-JNN cognitive architecture model package.

## Overview

Echo-JNN is a deep tree echo state reservoir computing system with parameters rigorously derived from the OEIS A000081 sequence (number of unlabeled rooted trees with n nodes). The formal specifications ensure mathematical correctness and consistency across all system components.

## Specification Files

### Types.zpp
**Purpose**: Global constants and type aliases

**Contents**:
- OEIS A000081 sequence constants (up to n=20)
- Cognitive loop constants (3 streams, 12 steps, 4-step phasing)
- Nesting structure constants (1, 2, 4, 9 terms)
- Triad groupings: {1,5,9}, {2,6,10}, {3,7,11}, {4,8,12}
- Twin primes relation (5, 7, mean 6)
- Type aliases for vectors, matrices, probabilities
- Mathematical invariants and axioms

**Key Types**:
- `PerceptionState`: 4D vector (A000081[4] = 4)
- `ActionState`: 4D vector (A000081[4] = 4)
- `SimulationState`: 9D vector (A000081[5] = 9)
- `SpectralRadius`: Real < 1.0 (echo state property)
- `StepNumber`: Natural [1..12]
- `StreamID`: Natural [1..3]

### TokenizerConfig.zpp
**Purpose**: Tokenizer configuration state and invariants

**Contents**:
- Vocabulary parameters (size, max length, special tokens)
- Cognitive state encoding parameters (perception, action, simulation tokens)
- Stream encoding parameters (stream IDs, step numbers, triads)
- Special token mappings (stream markers, mode markers)
- Encoding/decoding function contracts
- Roundtrip properties (tokenize ∘ detokenize = identity)

**Key Functions**:
- `encode_perception(state) -> tokens`: 4D state → token sequence
- `encode_action(state) -> tokens`: 4D state → token sequence
- `encode_simulation(state) -> tokens`: 9D state → token sequence
- `encode_snapshot(...)`: Complete cognitive state → tokens
- `decode_snapshot(tokens)`: Tokens → cognitive state

### ModelConfig.zpp
**Purpose**: Model configuration state and invariants

**Contents**:
- A000081-derived parameters (reservoir size, growth rate, mutation rate)
- Reservoir parameters (spectral radius, sparsity, leak rate)
- Cognitive loop parameters (streams, cycle length, phase separation)
- Nesting structure parameters (1, 2, 4, 9 terms)
- B-series parameters (expansion order, elementary differentials)
- Energy/fitness parameters (derived from A000081)
- Parameter derivation axioms and validation

**Key Invariants**:
- `reservoir_size = sum(A000081[1..base_order])`
- `growth_rate = A000081[n+1] / A000081[n]`
- `mutation_rate = 1.0 / A000081[base_order]`
- `spectral_radius = 1.0 - mutation_rate`
- `num_streams * phase_separation = cycle_length`

### Tokenizer.zpp
**Purpose**: Tokenization and detokenization contracts

**Contents**:
- Tokenizer state (vocab, inverse_vocab, special_tokens)
- Cognitive state tokenization functions
- Nested shell tokenization (1, 2, 4, 9 terms)
- Triad tokenization (3 stream states)
- Padding and truncation operations
- Roundtrip properties and invariants

**Key Contracts**:
- `tokenize_cognitive_state(...)`: State → tokens (length = tokens_per_snapshot)
- `detokenize_cognitive_state(tokens)`: Tokens → state
- `tokenize_cognitive_cycle(states)`: Full cycle → tokens
- Roundtrip: `detokenize(tokenize(state)) = state`

### Model.zpp
**Purpose**: Parameter shapes and forward/sampling contracts

**Contents**:
- Model state (reservoir, cognitive streams, nested shells, triads)
- Reservoir parameters (W_in, W_reservoir, W_out)
- Cognitive stream states (3 streams × 3 state types)
- Nested shell states (1, 2, 4, 9 terms)
- Triad states (4 triads × 3 elements)
- Forward pass contracts
- Sampling and generation contracts
- Training contracts

**Key Functions**:
- `forward_reservoir(input)`: Input → reservoir state
- `compute_output()`: Reservoir state → output
- `update_stream(stream_id, input)`: Update single stream
- `update_all_streams(inputs)`: Update all 3 streams concurrently
- `update_nested_shells()`: Update 1→2→4→9 hierarchy
- `update_triads()`: Update triad states
- `generate_sequence(initial, num_steps)`: Generate cognitive trajectory

**Key Invariants**:
- Stream phasing: `(stream_2_step - stream_1_step) mod 12 = 4`
- State dimensions: perception=4, action=4, simulation=9
- Nested shell dimensions: 1, 2, 4, 9 terms
- Triad dimensions: 3 elements each

### InferencePipe.zpp
**Purpose**: End-to-end generation contract

**Contents**:
- Pipeline components (tokenizer, model)
- Generation parameters (temperature, top-k, top-p, repetition penalty)
- Preprocessing (state → tokens)
- Postprocessing (tokens → state)
- Sampling strategies (temperature, top-k, top-p, repetition penalty)
- Generation pipeline (next state, sequence, full cycle)
- Batch processing contracts

**Key Functions**:
- `initialize(model_config, tokenizer_config)`: Setup pipeline
- `preprocess_cognitive_state(...)`: State → tokens
- `postprocess_to_cognitive_state(tokens)`: Tokens → state
- `generate_next_state(current)`: Current → next state
- `generate_sequence(initial, num_steps)`: Generate trajectory
- `generate_cognitive_cycle(initial_states)`: Generate full cycle
- `process_batch(batch)`: Batch inference

**Key Properties**:
- Generation preserves cognitive loop structure
- Batch processing preserves order
- All outputs satisfy dimensional constraints

## Mathematical Foundations

### OEIS A000081 Sequence
The system is built on the OEIS A000081 sequence: number of unlabeled rooted trees with n nodes.

```
n:  1   2   3    4    5     6     7      8       9       10
a:  1   1   2    4    9    20    48    115     286     719
```

**Derivation Rules**:
1. **Reservoir Size** = Σ A000081[1:n]
2. **Membrane Count** = A000081[k]
3. **Growth Rate** = A000081[n+1] / A000081[n]
4. **Mutation Rate** = 1.0 / A000081[n]
5. **Spectral Radius** = 1.0 - mutation_rate
6. **Sparsity** = clamp(2 × mutation_rate, 0.05, 0.5)
7. **Nesting Structure** = (1, 2, 4, 9) from A000081[1:4]

### Cognitive Loop Structure

**3 Concurrent Streams** (consciousness streams):
- Stream 1: Phase 0° (steps 1, 2, 3, ..., 12)
- Stream 2: Phase 120° (steps 5, 6, 7, ..., 4)
- Stream 3: Phase 240° (steps 9, 10, 11, ..., 8)

**12-Step Cycle**:
- 7 expressive mode steps (1-7)
- 5 reflective mode steps (8-12)
- 2 pivotal relevance realization steps (1, 5, 9)
- 5 affordance interaction steps (2, 3, 4, 6, 7)
- 5 salience simulation steps (8, 10, 11, 12)

**4 Triads** (120° separation):
- Triad 1: {1, 5, 9}
- Triad 2: {2, 6, 10}
- Triad 3: {3, 7, 11}
- Triad 4: {4, 8, 12}

### Nesting Structure (A000081 Discipline)

**Nested Shells**:
- Nest 1: 1 term (global summary)
- Nest 2: 2 terms (coarse features)
- Nest 3: 4 terms (medium features)
- Nest 4: 9 terms (fine features)
- Total: 16 terms (1+2+4+9)

**State Dimensions**:
- Perception: 4D (A000081[4] = 4)
- Action: 4D (A000081[4] = 4)
- Simulation: 9D (A000081[5] = 9)
- Total: 17D (4+4+9)

### Twin Primes Relation

**Twin Primes**: (5, 7)
- Mean: (5+7)/2 = 6
- Interpretation: 3 streams × 2 = 6 (triad-of-dyads)
- Relation to cognitive loop: 5 reflective + 7 expressive = 12 steps

## Configuration Files

The formal specifications are referenced in the following configuration files:

### config.json
- `_formal_spec`: "specs/zpp/ModelConfig.zpp"
- Contains A000081-derived parameters
- Reservoir, cognitive loop, nesting structure parameters
- All values mathematically justified

### tokenizer_config.json
- `_formal_spec`: "specs/zpp/TokenizerConfig.zpp"
- Vocabulary and special tokens
- Cognitive state encoding parameters
- Stream, mode, step, triad, nesting markers

### special_tokens_map.json
- `_formal_spec`: "specs/zpp/TokenizerConfig.zpp"
- Detailed special token mappings
- Token ID ranges: special (0-99), streams (100-199), modes (200-299), etc.
- A000081 alignment documentation

## Verification

All specifications include:
- **Preconditions** (`requires`): Input constraints
- **Postconditions** (`ensures`): Output guarantees
- **Invariants** (`axiom`): System-wide properties
- **Modifies clauses**: State mutation tracking

Key verification properties:
1. **Dimensional consistency**: All state vectors have correct dimensions
2. **A000081 alignment**: All parameters derived from sequence
3. **Cognitive loop structure**: 3 streams, 12 steps, 4-step phasing
4. **Nesting discipline**: 1→2→4→9 term hierarchy
5. **Roundtrip properties**: encode ∘ decode = identity
6. **Echo state property**: spectral_radius < 1.0

## Usage

These formal specifications serve as:
1. **Mathematical documentation**: Precise system behavior
2. **Implementation contracts**: Guarantees for code
3. **Verification targets**: Properties to check
4. **Configuration validation**: Ensure parameter consistency

## References

- **OEIS A000081**: https://oeis.org/A000081
- **Echo State Networks**: Jaeger (2001)
- **B-Series Methods**: Butcher (1963)
- **Rooted Trees**: Cayley (1857)
- **Cognitive Architecture**: Kawaii Hexapod System 4

## Version

- **Specification Version**: 1.0.0
- **Model Version**: echo-jnn-v1
- **Date**: December 17, 2025

## License

Same as Echo-JNN repository license.
