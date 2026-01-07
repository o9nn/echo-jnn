# TensorLogic.jl Integration

## Overview

The echo-jnn repository now includes a complete implementation of [TensorLogic.jl](https://github.com/JeffreySarnoff/TensorLogic.jl), providing tensor-based logic programming capabilities for the Deep Tree Echo cognitive architecture.

## What is TensorLogic?

TensorLogic.jl is a Julia package that bridges symbolic logic and tensor operations, enabling:

1. **Sparse Rule Evaluation**: Datalog-like logic programs with efficient fixpoint computation
2. **Dense Tensor Logic**: Differentiable logical operations over tensor representations
3. **Multiple Semantics**: Boolean, fuzzy (Gödel, product, Łukasiewicz), probabilistic, and differentiable
4. **Graph Compilation**: Expression DAGs with validation, analysis, and export

## Integration with echo-jnn

### Architecture

```
┌─────────────────────────────────────────────────────────────┐
│              Deep Tree Echo Architecture                    │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  ┌────────────┐  ┌──────────────┐  ┌──────────────┐       │
│  │  B-Series  │  │ Echo State   │  │ TensorLogic  │       │
│  │   Ridges   │◄─┤  Reservoirs  │◄─┤   Engine     │       │
│  └────────────┘  └──────────────┘  └──────────────┘       │
│                          ▲                   ▲             │
│                          │                   │             │
│                    ┌─────▼───────────────────▼───┐         │
│                    │  Neuro-Symbolic Layer      │         │
│                    │  (Cognitive Fusion)        │         │
│                    └────────────────────────────┘         │
│                                                            │
└────────────────────────────────────────────────────────────┘
```

### Key Components

#### 1. Sparse Logic Engine

Located in `src/TensorLogic/logic/`, provides:
- Rule parsing (bracket and Datalog syntax)
- Fixpoint computation engine
- Relation storage and querying
- Efficient sparse tuple operations

**Example:**
```julia
using TensorLogic

src = """
Parent[Alice, Bob].
Ancestor[x,y] = Parent[x,y].
Ancestor[x,z] = Ancestor[x,y] * Parent[y,z].
"""

prog = parse_tensorlogic(src)
ctx = TLContext()
run!(ctx, prog; maxiters=50)
```

#### 2. Dense Tensor Operations

Located in `src/TensorLogic/tensor/`, provides:
- Labeled tensor type
- Join and projection operations
- Backend abstraction (broadcast, contraction)
- Contraction planning

**Example:**
```julia
# LabeledTensor with named dimensions
tensor = LabeledTensor(data, [:Person, :Location])

# Operations respect dimension labels
result = join_project_dense(t1, t2, shared_dims)
```

#### 3. Expression Compiler

Located in `src/TensorLogic/expr/`, provides:
- AST for logical expressions
- Multiple evaluation strategies
- Graph compilation to DAG
- Validation and export (JSON/DOT)

**Example:**
```julia
ctx = CompilerContext()
add_domain!(ctx, :Person, 5)
declare_predicate!(ctx, :knows, [:Person, :Person])

expr = parse_tlexpr("exists y:Person. knows(x,y)")
result = eval_dense(expr, ctx; 
                    config=soft_differentiable())
```

## Use Cases in echo-jnn

### 1. Cognitive Frame Selection

Use logic rules to determine which cognitive frame is appropriate:

```julia
frame_rules = """
InFrame[agent, exploration].
Detects[agent, threat].

ShouldTransition[x, exploration, threat_response] = 
    InFrame[x, exploration] * Detects[x, threat].
"""
```

### 2. Attention Mechanisms

Guide neural attention using symbolic rules:

```julia
attention_rules = """
Perceives[agent, object].
Important[object].

Attends[x, y] = Perceives[x, y] * Important[y].
Attends[x, z] = Attends[x, y] * Related[y, z].
"""
```

### 3. Memory Consolidation

Decide which experiences to store based on logical criteria:

```julia
memory_rules = """
Experience[agent, event, context].
Novel[event].
Emotional[event].

ShouldStore[x, e] = Experience[x, e, c] * Novel[e].
ShouldStore[x, e] = Experience[x, e, c] * Emotional[e].
"""
```

### 4. Differentiable Reasoning

Combine with gradient-based learning:

```julia
# Use soft_differentiable() for backprop compatibility
expr = and_(pred(:good, [x]), pred(:safe, [x]))
result = eval_dense(expr, ctx; 
                    config=soft_differentiable())
# result is differentiable with respect to predicate tensors
```

## File Structure

```
src/TensorLogic/
├── TensorLogic.jl              # Main module
├── README.md                   # Documentation
├── core/
│   └── dictionaries.jl         # Utilities
├── logic/
│   ├── ir.jl                   # Intermediate representation
│   ├── rule_parser.jl          # Parser
│   └── sparse/
│       ├── relations.jl        # Storage
│       └── engine.jl           # Fixpoint engine
├── tensor/
│   ├── labeledtensor.jl        # Labeled tensors
│   ├── ops.jl                  # Operations
│   ├── backend.jl              # Backends
│   ├── planner.jl              # Planning
│   └── contract.jl             # Contraction
└── expr/
    ├── ast.jl                  # AST
    ├── context.jl              # Context
    ├── strategies.jl           # Semantics
    ├── parser.jl               # Parser
    ├── eval_dense.jl           # Evaluation
    ├── graph.jl                # DAG
    ├── validate.jl             # Validation
    └── json.jl                 # Export
```

## Examples

Located in `examples/TensorLogic/`:

- `bracket_ancestor.jl` - Basic ancestor relations
- `datalog_ancestor.jl` - Datalog syntax variant
- `dense_eval_strategies.jl` - Different semantics
- `expr_validate_export.jl` - Expression tools
- `sparse_triangle.jl` - Graph pattern detection
- `sparse_path_with_filter.jl` - Complex queries

Integration example:
- `examples/tensorlogic_echo_integration.jl` - Full integration demo

## Tests

Located in `test/TensorLogic/`:

```bash
julia --project=. test/TensorLogic/runtests.jl
```

Test categories:
- `logic/` - Rule parsing and sparse engine
- `expr/` - Expression parsing and validation
- `tensor/` - Dense evaluation semantics
- `lint/` - Source code hygiene

## API Reference

### Main Exports

**Rule Programming:**
- `parse_tensorlogic(src)` - Parse bracket rules
- `parse_datalog(src)` - Parse Datalog
- `TLContext()` - Execution context
- `run!(ctx, prog)` - Run fixpoint
- `relation_tuples(ctx, rel)` - Query results

**Expression Language:**
- `CompilerContext()` - Compiler context
- `add_domain!(ctx, name, size)` - Declare domain
- `declare_predicate!(ctx, name, domains)` - Declare predicate
- `parse_tlexpr(str)` - Parse expression
- `eval_dense(expr, ctx)` - Evaluate
- `compile_graph(expr)` - Compile to DAG

**AST Constructors:**
- `pred(name, args)` - Predicate
- `and_(a, b)` - Conjunction
- `or_(a, b)` - Disjunction
- `not_(x)` - Negation
- `imply(a, b)` - Implication
- `exists(var, domain, body)` - Existential
- `forall(var, domain, body)` - Universal

**Evaluation Strategies:**
- `soft_differentiable()` - Smooth, differentiable
- `hard_boolean()` - Classical boolean
- `fuzzy_godel()` - Gödel fuzzy
- `fuzzy_product()` - Product fuzzy
- `fuzzy_lukasiewicz()` - Łukasiewicz fuzzy
- `probabilistic()` - Probabilistic

## Dependencies

Added to `Project.toml`:
- `Dictionaries` (0.4) - Efficient dictionary operations
- `JSON3` (1.x) - JSON serialization
- `LinearAlgebra` (stdlib) - Linear algebra

## Performance

### Sparse Engine
- **Complexity**: O(iterations × rules × tuples)
- **Typical iterations**: 10-50 for convergence
- **Memory**: O(total tuples)

### Dense Evaluation
- **Complexity**: O(domain_size^arity)
- **Memory**: O(domain_size^max_arity)
- **Differentiable**: Yes (with soft semantics)

## Contributing

The TensorLogic implementation follows the original design from:
https://github.com/JeffreySarnoff/TensorLogic.jl

For issues or enhancements specific to the echo-jnn integration, please file them in this repository.

## License

MIT License (consistent with both TensorLogic.jl and echo-jnn)

## Citation

When using TensorLogic in research, please cite both:

1. The original TensorLogic.jl package
2. The echo-jnn cognitive architecture

## Related Documentation

- [Deep Tree Echo README](DeepTreeEcho_README.md)
- [Neuro-Symbolic Architecture](NEURO_SYMBOLIC_ARCHITECTURE.md)
- [Ontogenetic Kernel](ONTOGENETIC_KERNEL_README.md)
- [Main README](README.md)

---

**TensorLogic.jl ⊗ echo-jnn**: Where symbolic logic meets reservoir computing in cognitive fusion.
