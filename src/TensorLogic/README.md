# TensorLogic Integration for echo-jnn

This directory contains the TensorLogic.jl implementation integrated into the echo-jnn cognitive architecture.

## Overview

TensorLogic.jl implements two complementary pieces:

1. **Sparse tuple-based rule evaluation** (least-fixpoint forward chaining) for Datalog-like / bracket-rule programs.
2. **Tutorial-style expression compilation** (AST + DAG + validation + JSON/DOT export) and **dense evaluation** for connectives/quantifiers under selectable semantics.

The design avoids generalized Einstein summation in the core paths.

## Directory Structure

```
src/TensorLogic/
├── TensorLogic.jl              # Main module file
├── core/
│   └── dictionaries.jl         # Dictionary utilities
├── logic/
│   ├── ir.jl                   # Intermediate representation
│   ├── rule_parser.jl          # Rule parsing (bracket & Datalog)
│   └── sparse/
│       ├── relations.jl        # Relation storage
│       └── engine.jl           # Sparse fixpoint engine
├── tensor/
│   ├── labeledtensor.jl        # Labeled tensor type
│   ├── ops.jl                  # Tensor operations
│   ├── backend.jl              # Backend abstraction
│   ├── planner.jl              # Contraction planning
│   └── contract.jl             # Tensor contraction
└── expr/
    ├── ast.jl                  # Expression AST
    ├── context.jl              # Compiler context
    ├── strategies.jl           # Evaluation strategies
    ├── parser.jl               # Expression parser
    ├── eval_dense.jl           # Dense evaluation
    ├── graph.jl                # DAG compilation
    ├── validate.jl             # Validation
    └── json.jl                 # JSON/DOT export
```

## Key Features

### 1. Sparse Rule Evaluation

Define logic programs using bracket-rule or Datalog syntax:

```julia
using TensorLogic

src = """
Parent[Alice, Bob].
Parent[Bob, Charlie].

Ancestor[x,y] = Parent[x,y].
Ancestor[x,z] = Ancestor[x,y] * Parent[y,z].
"""

prog = parse_tensorlogic(src)
ctx = TLContext()
run!(ctx, prog; maxiters=50)

# Query results
for t in relation_tuples(ctx, :Ancestor)
    println(t)
end
```

### 2. Dense Expression Evaluation

Compile and evaluate logical expressions with various semantics:

```julia
using TensorLogic

# Create compiler context
ctx = CompilerContext()
add_domain!(ctx, :Person, 5)
declare_predicate!(ctx, :knows, [:Person, :Person])

# Parse and evaluate expression
expr = parse_tlexpr("exists y:Person. knows(x,y)")
result = eval_dense(expr, ctx; 
                    inputs=..., 
                    config=soft_differentiable())
```

### 3. Evaluation Strategies

Multiple semantic strategies are supported:

- `soft_differentiable()` - Smooth, differentiable semantics
- `hard_boolean()` - Classical boolean logic
- `fuzzy_godel()` - Gödel fuzzy logic
- `fuzzy_product()` - Product fuzzy logic
- `fuzzy_lukasiewicz()` - Łukasiewicz fuzzy logic
- `probabilistic()` - Probabilistic semantics

### 4. Graph Compilation and Export

Convert expressions to DAG for analysis:

```julia
expr = parse_tlexpr("exists y:Person. knows(x,y)")
graph = compile_graph(expr)

# Export to DOT format for visualization
export_dot(graph)

# Export to JSON
export_json(graph)
```

## Examples

See `examples/TensorLogic/` for complete examples:

- `bracket_ancestor.jl` - Ancestor relations with bracket syntax
- `datalog_ancestor.jl` - Ancestor relations with Datalog syntax
- `dense_eval_strategies.jl` - Different evaluation strategies
- `expr_validate_export.jl` - Expression validation and export
- `sparse_triangle.jl` - Triangle pattern detection
- `sparse_path_with_filter.jl` - Path queries with filters

Run an example:
```bash
julia --project=. examples/TensorLogic/bracket_ancestor.jl
```

## Tests

Tests are located in `test/TensorLogic/`:

```bash
julia --project=. test/TensorLogic/runtests.jl
```

## Integration with echo-jnn

TensorLogic integrates with the Deep Tree Echo cognitive architecture to provide:

- **Symbolic reasoning** capabilities for the neuro-symbolic layer
- **Rule-based inference** for cognitive decision making
- **Logic programming** primitives for behavior trees
- **Tensor-based logic** operations for reservoir computing

## API Reference

### Rule Programming

- `parse_tensorlogic(src)` - Parse bracket-rule syntax
- `parse_datalog(src)` - Parse Datalog syntax
- `TLContext()` - Create execution context
- `run!(ctx, prog)` - Execute fixpoint computation
- `relation_tuples(ctx, rel)` - Query relation tuples

### Expression Compilation

- `CompilerContext()` - Create compiler context
- `add_domain!(ctx, name, size)` - Declare domain
- `declare_predicate!(ctx, name, domains)` - Declare predicate
- `parse_tlexpr(str)` - Parse logical expression
- `eval_dense(expr, ctx)` - Evaluate expression
- `compile_graph(expr)` - Compile to DAG

### AST Construction

- `pred(name, args)` - Predicate
- `and_(a, b)` - Conjunction
- `or_(a, b)` - Disjunction
- `not_(x)` - Negation
- `imply(a, b)` - Implication
- `exists(var, domain, body)` - Existential quantification
- `forall(var, domain, body)` - Universal quantification

## Dependencies

- `Dictionaries.jl` - Efficient dictionary operations
- `JSON3.jl` - JSON serialization
- `LinearAlgebra` - Linear algebra operations (stdlib)

## Original Source

This implementation is based on:
https://github.com/JeffreySarnoff/TensorLogic.jl

## License

MIT License - See LICENSE for details.
