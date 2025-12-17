"""
Ontogenetic-AtomSpace Bridge for Project Chimera

This module provides the critical bridge between the OEIS A000081-based
Ontogenetic Engine (from echo-jnn/CogPilot.jl) and the AtomSpace hypergraph
knowledge representation system.

The bridge enables:
1. Rooted trees (A000081) to be represented as AtomSpace hypergraph structures
2. B-Series coefficients to map to Truth Values on links
3. Tree symmetry factors to influence Attention Values (ECAN)
4. Elementary differentials to generate PLN inference rules
5. Ontogenetic evolution to modify the knowledge graph dynamically

This is the mathematical heart of Project Chimera, where self-organizing
mathematical structures become living knowledge.
"""

from __future__ import annotations
import math
from typing import Dict, List, Optional, Tuple, Callable, Any
from dataclasses import dataclass, field
from enum import Enum, auto

# Import the unified AtomSpace
import sys
sys.path.insert(0, '..')
from atomspace.atomspace import (
    AtomSpace, Atom, Node, Link,
    ConceptNode, PredicateNode, SchemaNode, VariableNode,
    InheritanceLink, EvaluationLink, ExecutionLink, ListLink,
    TruthValue, AttentionValue
)


# ============================================================
# OEIS A000081 Sequence Generator
# ============================================================

class A000081Generator:
    """
    Generator for OEIS A000081: Number of unlabeled rooted trees with n nodes.
    
    Sequence: 1, 1, 2, 4, 9, 20, 48, 115, 286, 719, ...
    
    This sequence is the ontogenetic generator for the entire cognitive system,
    providing the mathematical foundation for all parameter derivation.
    """
    
    def __init__(self, max_order: int = 20):
        self.max_order = max_order
        self._cache: Dict[int, int] = {0: 0, 1: 1}
        self._trees_cache: Dict[int, List['RootedTree']] = {}
        self._precompute(max_order)
    
    def _precompute(self, n: int) -> None:
        """Precompute A000081 values up to n"""
        # A000081 recurrence relation
        # a(n) = (1/n) * sum_{k=1}^{n-1} sum_{d|k} d * a(d) * a(n-k)
        for i in range(2, n + 1):
            if i not in self._cache:
                total = 0
                for k in range(1, i):
                    for d in self._divisors(k):
                        if d in self._cache and (i - k) in self._cache:
                            total += d * self._cache[d] * self._cache[i - k]
                self._cache[i] = total // (i - 1) if i > 1 else 1
    
    def _divisors(self, n: int) -> List[int]:
        """Get all divisors of n"""
        divs = []
        for i in range(1, int(math.sqrt(n)) + 1):
            if n % i == 0:
                divs.append(i)
                if i != n // i:
                    divs.append(n // i)
        return sorted(divs)
    
    def __getitem__(self, n: int) -> int:
        """Get A000081(n)"""
        if n not in self._cache:
            self._precompute(n)
        return self._cache.get(n, 0)
    
    def cumulative(self, n: int) -> int:
        """Get cumulative sum of A000081 up to n"""
        return sum(self[i] for i in range(1, n + 1))
    
    def ratio(self, n: int) -> float:
        """Get ratio A000081(n+1) / A000081(n)"""
        if self[n] == 0:
            return 0.0
        return self[n + 1] / self[n]
    
    def inverse(self, n: int) -> float:
        """Get inverse 1 / A000081(n) for mutation rates"""
        if self[n] == 0:
            return 0.0
        return 1.0 / self[n]


# ============================================================
# Rooted Tree Representation
# ============================================================

@dataclass
class RootedTree:
    """
    A rooted tree structure that can be converted to AtomSpace representation.
    
    Trees are the fundamental structural units of thought in the ontogenetic
    framework, following the A000081 enumeration.
    """
    children: List['RootedTree'] = field(default_factory=list)
    label: Optional[str] = None
    order: int = 1
    symmetry_factor: int = 1
    
    @property
    def is_leaf(self) -> bool:
        return len(self.children) == 0
    
    def compute_order(self) -> int:
        """Compute the order (number of nodes) of this tree"""
        self.order = 1 + sum(child.compute_order() for child in self.children)
        return self.order
    
    def compute_symmetry(self) -> int:
        """Compute the symmetry factor σ(τ) of this tree"""
        if self.is_leaf:
            self.symmetry_factor = 1
            return 1
        
        # Group children by isomorphism class
        child_counts: Dict[str, int] = {}
        for child in self.children:
            key = child.canonical_form()
            child_counts[key] = child_counts.get(key, 0) + 1
        
        # σ(τ) = τ! * Π(σ(τ_i)^{m_i} * m_i!)
        result = self.order
        for child in self.children:
            result *= child.compute_symmetry()
        for count in child_counts.values():
            result *= math.factorial(count)
        
        self.symmetry_factor = result
        return result
    
    def canonical_form(self) -> str:
        """Get canonical string representation for isomorphism comparison"""
        if self.is_leaf:
            return "()"
        child_forms = sorted(child.canonical_form() for child in self.children)
        return "(" + "".join(child_forms) + ")"
    
    def to_atomspace(self, atomspace: AtomSpace, parent_node: Optional[Node] = None) -> Node:
        """
        Convert this rooted tree to AtomSpace representation.
        
        Each tree node becomes a ConceptNode, and parent-child relationships
        become InheritanceLinks. The symmetry factor influences the attention value.
        """
        # Create node for this tree vertex
        node_name = self.label or f"tree_node_{id(self)}"
        
        # Attention value derived from symmetry factor
        av = AttentionValue(
            sti=1.0 / self.symmetry_factor,  # Higher symmetry = lower attention
            lti=float(self.order),  # Order determines long-term importance
            vlti=self.order >= 4  # Trees of order 4+ are permanently important
        )
        
        # Truth value based on tree structure
        tv = TruthValue.simple(
            strength=1.0,
            confidence=1.0 - (1.0 / (self.order + 1))  # Larger trees = higher confidence
        )
        
        node = ConceptNode(node_name, tv=tv, av=av)
        atomspace.add(node)
        
        # Create link to parent if exists
        if parent_node is not None:
            link = InheritanceLink(node, parent_node, tv=tv, av=av)
            atomspace.add(link)
        
        # Recursively add children
        for child in self.children:
            child.to_atomspace(atomspace, node)
        
        return node
    
    @classmethod
    def from_atomspace(cls, atomspace: AtomSpace, root_node: Node) -> 'RootedTree':
        """Reconstruct a rooted tree from AtomSpace representation"""
        children = []
        
        # Find all InheritanceLinks where root_node is the supertype
        for link in root_node.get_incoming():
            if link.atom_type == "InheritanceLink":
                child_node = link.outgoing[0]
                if child_node != root_node:
                    children.append(cls.from_atomspace(atomspace, child_node))
        
        tree = cls(children=children, label=root_node.name)
        tree.compute_order()
        tree.compute_symmetry()
        return tree


# ============================================================
# Tree Generation (A000081 Enumeration)
# ============================================================

class TreeEnumerator:
    """
    Enumerates all unlabeled rooted trees of a given order.
    Follows the A000081 sequence.
    """
    
    def __init__(self, generator: A000081Generator):
        self.generator = generator
        self._cache: Dict[int, List[RootedTree]] = {}
    
    def enumerate(self, order: int) -> List[RootedTree]:
        """Generate all rooted trees of the given order"""
        if order in self._cache:
            return self._cache[order]
        
        if order == 1:
            trees = [RootedTree(label=f"τ_1_1")]
        else:
            trees = []
            # Generate trees by partitioning (order-1) among children
            for partition in self._partitions(order - 1):
                child_combinations = self._generate_children(partition)
                for children in child_combinations:
                    tree = RootedTree(children=children)
                    tree.compute_order()
                    tree.compute_symmetry()
                    tree.label = f"τ_{order}_{len(trees) + 1}"
                    trees.append(tree)
        
        self._cache[order] = trees
        return trees
    
    def _partitions(self, n: int) -> List[List[int]]:
        """Generate all partitions of n into non-increasing positive integers"""
        if n == 0:
            return [[]]
        
        result = []
        self._partition_helper(n, n, [], result)
        return result
    
    def _partition_helper(self, n: int, max_val: int, current: List[int], result: List[List[int]]) -> None:
        if n == 0:
            result.append(current.copy())
            return
        
        for i in range(min(n, max_val), 0, -1):
            current.append(i)
            self._partition_helper(n - i, i, current, result)
            current.pop()
    
    def _generate_children(self, partition: List[int]) -> List[List[RootedTree]]:
        """Generate all combinations of child trees for a partition"""
        if not partition:
            return [[]]
        
        result = []
        self._children_helper(partition, 0, [], result)
        return result
    
    def _children_helper(
        self, 
        partition: List[int], 
        index: int, 
        current: List[RootedTree], 
        result: List[List[RootedTree]]
    ) -> None:
        if index >= len(partition):
            result.append(current.copy())
            return
        
        order = partition[index]
        trees = self.enumerate(order)
        
        for tree in trees:
            current.append(tree)
            self._children_helper(partition, index + 1, current, result)
            current.pop()


# ============================================================
# B-Series Coefficients
# ============================================================

@dataclass
class BSeriesCoefficient:
    """
    B-Series coefficient b(τ) for a rooted tree τ.
    
    These coefficients form the "genetic material" of ontogenetic kernels,
    determining how differential operators are applied.
    """
    tree: RootedTree
    value: float
    
    def to_truth_value(self) -> TruthValue:
        """Convert coefficient to a truth value for AtomSpace"""
        # Normalize coefficient to [0, 1] range
        normalized = 1.0 / (1.0 + math.exp(-self.value))  # Sigmoid
        confidence = 1.0 - (1.0 / (self.tree.order + 1))
        return TruthValue.simple(normalized, confidence)


# ============================================================
# Ontogenetic Kernel
# ============================================================

@dataclass
class OntogeneticKernel:
    """
    A self-evolving computational kernel based on B-series expansion.
    
    The kernel can:
    - Self-generate through recursive composition
    - Self-optimize through grip improvement
    - Self-reproduce with other kernels
    - Evolve across generations
    """
    coefficients: Dict[str, BSeriesCoefficient] = field(default_factory=dict)
    generation: int = 0
    fitness: float = 0.0
    lineage: List[str] = field(default_factory=list)
    kernel_id: str = ""
    
    def __post_init__(self):
        if not self.kernel_id:
            import uuid
            self.kernel_id = str(uuid.uuid4())[:8]
    
    def to_atomspace(self, atomspace: AtomSpace) -> Node:
        """
        Convert kernel to AtomSpace representation.
        
        The kernel becomes a ConceptNode with its coefficients as
        EvaluationLinks to tree nodes.
        """
        # Create kernel node
        kernel_node = ConceptNode(
            f"kernel_{self.kernel_id}",
            tv=TruthValue.simple(self.fitness, 0.9),
            av=AttentionValue(sti=self.fitness * 10, lti=float(self.generation))
        )
        atomspace.add(kernel_node)
        
        # Add coefficient relationships
        for tree_label, coeff in self.coefficients.items():
            tree_node = atomspace.get_node("ConceptNode", tree_label)
            if tree_node is None:
                tree_node = ConceptNode(tree_label)
                atomspace.add(tree_node)
            
            # Create evaluation link with coefficient as truth value
            pred = PredicateNode("has_coefficient")
            atomspace.add(pred)
            
            eval_link = EvaluationLink(
                pred, kernel_node, tree_node,
                tv=coeff.to_truth_value()
            )
            atomspace.add(eval_link)
        
        return kernel_node
    
    def self_generate(self) -> 'OntogeneticKernel':
        """
        Generate offspring through chain rule composition.
        (f∘f)' = f'(f(x)) · f'(x)
        """
        new_coeffs = {}
        for label, coeff in self.coefficients.items():
            # Apply chain rule transformation
            new_value = coeff.value * coeff.value * (1 + 0.1 * (hash(label) % 10 - 5) / 10)
            new_coeffs[label] = BSeriesCoefficient(coeff.tree, new_value)
        
        return OntogeneticKernel(
            coefficients=new_coeffs,
            generation=self.generation + 1,
            lineage=self.lineage + [self.kernel_id]
        )
    
    def crossover(self, other: 'OntogeneticKernel') -> 'OntogeneticKernel':
        """
        Crossover with another kernel to produce offspring.
        """
        new_coeffs = {}
        all_labels = set(self.coefficients.keys()) | set(other.coefficients.keys())
        
        for label in all_labels:
            if label in self.coefficients and label in other.coefficients:
                # Average the coefficients
                new_value = (self.coefficients[label].value + other.coefficients[label].value) / 2
                tree = self.coefficients[label].tree
            elif label in self.coefficients:
                new_value = self.coefficients[label].value
                tree = self.coefficients[label].tree
            else:
                new_value = other.coefficients[label].value
                tree = other.coefficients[label].tree
            
            new_coeffs[label] = BSeriesCoefficient(tree, new_value)
        
        return OntogeneticKernel(
            coefficients=new_coeffs,
            generation=max(self.generation, other.generation) + 1,
            lineage=self.lineage + other.lineage + [self.kernel_id, other.kernel_id]
        )
    
    def mutate(self, rate: float = 0.1) -> None:
        """Apply random mutations to coefficients"""
        import random
        for coeff in self.coefficients.values():
            if random.random() < rate:
                coeff.value += (random.random() - 0.5) * 0.2


# ============================================================
# Ontogenetic-AtomSpace Bridge
# ============================================================

class OntogeneticAtomSpaceBridge:
    """
    The central bridge connecting ontogenetic dynamics to AtomSpace memory.
    
    This bridge enables:
    1. Automatic tree enumeration and AtomSpace population
    2. Kernel evolution with AtomSpace persistence
    3. Attention-driven relevance realization
    4. PLN inference rule generation from elementary differentials
    """
    
    def __init__(self, atomspace: AtomSpace, max_order: int = 8):
        self.atomspace = atomspace
        self.generator = A000081Generator(max_order)
        self.enumerator = TreeEnumerator(self.generator)
        self.max_order = max_order
        self.kernels: Dict[str, OntogeneticKernel] = {}
        
        # Initialize AtomSpace with tree structure
        self._initialize_tree_ontology()
    
    def _initialize_tree_ontology(self) -> None:
        """Initialize AtomSpace with the rooted tree ontology"""
        # Create root concept for all trees
        tree_root = ConceptNode(
            "RootedTree",
            tv=TruthValue.simple(1.0, 1.0),
            av=AttentionValue(sti=100, lti=100, vlti=True)
        )
        self.atomspace.add(tree_root)
        
        # Create order concepts
        for order in range(1, self.max_order + 1):
            order_node = ConceptNode(
                f"TreeOrder_{order}",
                tv=TruthValue.simple(1.0, 1.0),
                av=AttentionValue(sti=float(self.generator[order]), lti=float(order))
            )
            self.atomspace.add(order_node)
            
            # Link to root
            link = InheritanceLink(order_node, tree_root)
            self.atomspace.add(link)
            
            # Generate and add all trees of this order
            trees = self.enumerator.enumerate(order)
            for tree in trees:
                tree.to_atomspace(self.atomspace, order_node)
    
    def create_kernel(self, order: int) -> OntogeneticKernel:
        """Create a new ontogenetic kernel with trees up to given order"""
        coefficients = {}
        
        for o in range(1, order + 1):
            trees = self.enumerator.enumerate(o)
            for tree in trees:
                # Initialize coefficient based on symmetry factor
                value = 1.0 / tree.symmetry_factor
                coefficients[tree.label] = BSeriesCoefficient(tree, value)
        
        kernel = OntogeneticKernel(coefficients=coefficients)
        kernel.to_atomspace(self.atomspace)
        self.kernels[kernel.kernel_id] = kernel
        
        return kernel
    
    def evolve_population(
        self, 
        population_size: int = 20,
        generations: int = 50,
        mutation_rate: float = 0.1,
        elitism_rate: float = 0.1
    ) -> List[OntogeneticKernel]:
        """
        Evolve a population of kernels using genetic algorithms.
        Results are persisted to AtomSpace.
        """
        import random
        
        # Initialize population
        population = [self.create_kernel(4) for _ in range(population_size)]
        
        for gen in range(generations):
            # Evaluate fitness (placeholder - would use actual domain evaluation)
            for kernel in population:
                kernel.fitness = sum(c.value for c in kernel.coefficients.values()) / len(kernel.coefficients)
            
            # Sort by fitness
            population.sort(key=lambda k: k.fitness, reverse=True)
            
            # Elite preservation
            elite_count = int(population_size * elitism_rate)
            next_gen = population[:elite_count]
            
            # Crossover and mutation
            while len(next_gen) < population_size:
                parent1 = random.choice(population[:population_size // 2])
                parent2 = random.choice(population[:population_size // 2])
                child = parent1.crossover(parent2)
                child.mutate(mutation_rate)
                next_gen.append(child)
            
            population = next_gen
            
            # Update AtomSpace with best kernel
            best = population[0]
            best.to_atomspace(self.atomspace)
        
        return population
    
    def derive_parameters(self, base_order: int) -> Dict[str, Any]:
        """
        Derive system parameters from A000081 sequence.
        
        This ensures all parameters are mathematically justified.
        """
        return {
            "reservoir_size": self.generator.cumulative(base_order),
            "num_membranes": self.generator[base_order],
            "growth_rate": self.generator.ratio(base_order),
            "mutation_rate": self.generator.inverse(base_order),
            "max_tree_order": base_order + 3,
            "attention_decay": 1.0 / self.generator.cumulative(base_order),
            "fitness_threshold": 1.0 - self.generator.inverse(base_order + 1)
        }
    
    def get_attentional_focus(self) -> List[Atom]:
        """Get atoms currently in attentional focus"""
        return self.atomspace.get_attentional_focus(threshold=0.5)
    
    def stimulate_tree(self, tree_label: str, amount: float) -> None:
        """Stimulate attention for a specific tree"""
        node = self.atomspace.get_node("ConceptNode", tree_label)
        if node:
            self.atomspace.stimulate(node, amount)
    
    def decay_attention(self, rate: Optional[float] = None) -> None:
        """Apply attention decay based on A000081-derived rate"""
        if rate is None:
            rate = self.generator.inverse(self.max_order)
        self.atomspace.decay_attention(rate)


# ============================================================
# Module Exports
# ============================================================

__all__ = [
    "A000081Generator",
    "RootedTree",
    "TreeEnumerator",
    "BSeriesCoefficient",
    "OntogeneticKernel",
    "OntogeneticAtomSpaceBridge"
]

__version__ = "1.0.0-chimera"


# ============================================================
# Self-Test
# ============================================================

if __name__ == "__main__":
    print("Ontogenetic-AtomSpace Bridge Self-Test")
    print("=" * 50)
    
    # Test A000081 generator
    gen = A000081Generator(10)
    print(f"A000081 sequence: {[gen[i] for i in range(1, 11)]}")
    
    # Create AtomSpace and bridge
    atomspace = AtomSpace("chimera-test")
    bridge = OntogeneticAtomSpaceBridge(atomspace, max_order=5)
    
    print(f"AtomSpace size after initialization: {atomspace.size()}")
    
    # Create and evolve kernels
    kernel = bridge.create_kernel(4)
    print(f"Created kernel: {kernel.kernel_id}")
    print(f"Kernel coefficients: {len(kernel.coefficients)}")
    
    # Derive parameters
    params = bridge.derive_parameters(5)
    print(f"Derived parameters: {params}")
    
    print("\nBridge self-test complete!")
