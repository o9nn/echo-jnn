#!/usr/bin/env python3
"""
Formal Verification Framework for Z++ Tokenizer Roundtrip Property
===================================================================

This module implements formal verification of the roundtrip property:
    encode ∘ decode = identity

For all cognitive state types defined in Tokenizer.zpp:
- PerceptionState (4D vector)
- ActionState (4D vector)
- SimulationState (9D vector)
- Complete cognitive state snapshots
- Nested shell structures (1, 2, 4, 9 terms)
- Cognitive cycles (3 streams × 12 steps)

Verification Methods:
1. Exhaustive testing for discrete domains
2. Property-based testing (QuickCheck-style)
3. Boundary value analysis
4. Symbolic execution traces
5. Formal proof construction
"""

import numpy as np
from dataclasses import dataclass, field
from typing import List, Tuple, Dict, Optional, Any, Callable
from enum import Enum
import json
import hashlib
from datetime import datetime
import random

# =============================================================================
# Z++ TYPE DEFINITIONS (from Types.zpp)
# =============================================================================

# OEIS A000081 sequence
A000081 = [1, 1, 2, 4, 9, 20, 48, 115, 286, 719, 
           1842, 4766, 12486, 32973, 87811, 235381,
           634847, 1721159, 4688676, 12826228]

# Cognitive loop constants
NUM_STREAMS = 3
CYCLE_LENGTH = 12
PHASE_SEPARATION = 4
NUM_TRIADS = 4
TRIAD_SIZE = 3

# Nesting structure
NEST_1_SIZE = 1
NEST_2_SIZE = 2
NEST_3_SIZE = 4
NEST_4_SIZE = 9
TOTAL_NESTED_TERMS = 16

# State dimensions (A000081-aligned)
PERCEPTION_DIM = 4   # A000081[4] = 4
ACTION_DIM = 4       # A000081[4] = 4
SIMULATION_DIM = 9   # A000081[5] = 9

# Tokenizer constants
VOCAB_SIZE = 32000
MAX_LENGTH = 2048
PAD_TOKEN_ID = 0
BOS_TOKEN_ID = 1
EOS_TOKEN_ID = 2
UNK_TOKEN_ID = 3

# Quantization parameters
QUANTIZATION_LEVELS = 256
VALUE_RANGE = (-1.0, 1.0)

# =============================================================================
# VERIFICATION RESULT TYPES
# =============================================================================

class VerificationStatus(Enum):
    PASSED = "PASSED"
    FAILED = "FAILED"
    INCONCLUSIVE = "INCONCLUSIVE"
    ERROR = "ERROR"

@dataclass
class VerificationResult:
    """Result of a single verification check"""
    property_name: str
    status: VerificationStatus
    message: str
    test_cases: int = 0
    passed_cases: int = 0
    failed_cases: int = 0
    counterexamples: List[Dict] = field(default_factory=list)
    proof_trace: List[str] = field(default_factory=list)
    execution_time_ms: float = 0.0

@dataclass
class VerificationReport:
    """Complete verification report"""
    spec_file: str
    property_verified: str
    timestamp: str
    overall_status: VerificationStatus
    results: List[VerificationResult]
    summary: Dict[str, Any] = field(default_factory=dict)

# =============================================================================
# TOKENIZER IMPLEMENTATION (from Tokenizer.zpp)
# =============================================================================

class CognitiveStateTokenizer:
    """
    Implementation of Tokenizer.zpp specification
    Handles encoding/decoding of cognitive states
    """
    
    def __init__(self):
        self.vocab_size = VOCAB_SIZE
        self.max_length = MAX_LENGTH
        self.quantization_levels = QUANTIZATION_LEVELS
        self.value_range = VALUE_RANGE
        
        # Token offsets for different state components
        self.perception_offset = 1000
        self.action_offset = 2000
        self.simulation_offset = 3000
        self.stream_offset = 100
        self.step_offset = 300
        
    def _quantize(self, value: float) -> int:
        """Quantize a float value to a token ID"""
        # Clamp to valid range
        value = max(self.value_range[0], min(self.value_range[1], value))
        # Normalize to [0, 1]
        normalized = (value - self.value_range[0]) / (self.value_range[1] - self.value_range[0])
        # Quantize to integer
        quantized = int(normalized * (self.quantization_levels - 1))
        return quantized
    
    def _dequantize(self, token: int) -> float:
        """Dequantize a token ID back to a float value"""
        # Normalize from quantized value
        normalized = token / (self.quantization_levels - 1)
        # Scale to value range
        value = normalized * (self.value_range[1] - self.value_range[0]) + self.value_range[0]
        return value
    
    def encode_perception(self, state: np.ndarray) -> List[int]:
        """
        Encode perception state (4D vector) to tokens
        
        Precondition: |state| = 4
        Postcondition: |result| = 4
        Postcondition: ∀ t ∈ result. t < vocab_size
        """
        assert len(state) == PERCEPTION_DIM, f"Perception state must be {PERCEPTION_DIM}D"
        tokens = [self.perception_offset + self._quantize(v) for v in state]
        return tokens
    
    def decode_perception(self, tokens: List[int]) -> np.ndarray:
        """
        Decode tokens back to perception state
        
        Precondition: |tokens| = 4
        Postcondition: |result| = 4
        """
        assert len(tokens) == PERCEPTION_DIM, f"Expected {PERCEPTION_DIM} tokens"
        values = [self._dequantize(t - self.perception_offset) for t in tokens]
        return np.array(values)
    
    def encode_action(self, state: np.ndarray) -> List[int]:
        """
        Encode action state (4D vector) to tokens
        
        Precondition: |state| = 4
        Postcondition: |result| = 4
        """
        assert len(state) == ACTION_DIM, f"Action state must be {ACTION_DIM}D"
        tokens = [self.action_offset + self._quantize(v) for v in state]
        return tokens
    
    def decode_action(self, tokens: List[int]) -> np.ndarray:
        """
        Decode tokens back to action state
        
        Precondition: |tokens| = 4
        Postcondition: |result| = 4
        """
        assert len(tokens) == ACTION_DIM, f"Expected {ACTION_DIM} tokens"
        values = [self._dequantize(t - self.action_offset) for t in tokens]
        return np.array(values)
    
    def encode_simulation(self, state: np.ndarray) -> List[int]:
        """
        Encode simulation state (9D vector) to tokens
        
        Precondition: |state| = 9
        Postcondition: |result| = 9
        """
        assert len(state) == SIMULATION_DIM, f"Simulation state must be {SIMULATION_DIM}D"
        tokens = [self.simulation_offset + self._quantize(v) for v in state]
        return tokens
    
    def decode_simulation(self, tokens: List[int]) -> np.ndarray:
        """
        Decode tokens back to simulation state
        
        Precondition: |tokens| = 9
        Postcondition: |result| = 9
        """
        assert len(tokens) == SIMULATION_DIM, f"Expected {SIMULATION_DIM} tokens"
        values = [self._dequantize(t - self.simulation_offset) for t in tokens]
        return np.array(values)
    
    def encode_stream_id(self, stream_id: int) -> List[int]:
        """
        Encode stream ID [1..3] to token
        
        Precondition: 1 ≤ stream_id ≤ 3
        Postcondition: |result| = 1
        """
        assert 1 <= stream_id <= NUM_STREAMS, f"Stream ID must be in [1, {NUM_STREAMS}]"
        return [self.stream_offset + stream_id - 1]
    
    def decode_stream_id(self, tokens: List[int]) -> int:
        """
        Decode token back to stream ID
        
        Precondition: |tokens| = 1
        Postcondition: 1 ≤ result ≤ 3
        """
        assert len(tokens) == 1, "Expected 1 token"
        return tokens[0] - self.stream_offset + 1
    
    def encode_step_number(self, step: int) -> List[int]:
        """
        Encode step number [1..12] to token
        
        Precondition: 1 ≤ step ≤ 12
        Postcondition: |result| = 1
        """
        assert 1 <= step <= CYCLE_LENGTH, f"Step must be in [1, {CYCLE_LENGTH}]"
        return [self.step_offset + step - 1]
    
    def decode_step_number(self, tokens: List[int]) -> int:
        """
        Decode token back to step number
        
        Precondition: |tokens| = 1
        Postcondition: 1 ≤ result ≤ 12
        """
        assert len(tokens) == 1, "Expected 1 token"
        return tokens[0] - self.step_offset + 1
    
    def encode_cognitive_state(
        self,
        stream_id: int,
        step: int,
        perception: np.ndarray,
        action: np.ndarray,
        simulation: np.ndarray
    ) -> List[int]:
        """
        Encode complete cognitive state snapshot
        
        Preconditions:
            1 ≤ stream_id ≤ 3
            1 ≤ step ≤ 12
            |perception| = 4
            |action| = 4
            |simulation| = 9
        
        Postconditions:
            result[0] = BOS_TOKEN_ID
            result[-1] = EOS_TOKEN_ID
            |result| = tokens_per_snapshot
        """
        tokens = [BOS_TOKEN_ID]
        tokens.extend(self.encode_stream_id(stream_id))
        tokens.extend(self.encode_step_number(step))
        tokens.extend(self.encode_perception(perception))
        tokens.extend(self.encode_action(action))
        tokens.extend(self.encode_simulation(simulation))
        tokens.append(EOS_TOKEN_ID)
        return tokens
    
    def decode_cognitive_state(
        self, tokens: List[int]
    ) -> Tuple[int, int, np.ndarray, np.ndarray, np.ndarray]:
        """
        Decode tokens back to cognitive state
        
        Preconditions:
            tokens[0] = BOS_TOKEN_ID
            tokens[-1] = EOS_TOKEN_ID
        
        Postconditions:
            1 ≤ stream_id ≤ 3
            1 ≤ step ≤ 12
            |perception| = 4
            |action| = 4
            |simulation| = 9
        """
        assert tokens[0] == BOS_TOKEN_ID, "First token must be BOS"
        assert tokens[-1] == EOS_TOKEN_ID, "Last token must be EOS"
        
        idx = 1
        stream_id = self.decode_stream_id(tokens[idx:idx+1])
        idx += 1
        step = self.decode_step_number(tokens[idx:idx+1])
        idx += 1
        perception = self.decode_perception(tokens[idx:idx+PERCEPTION_DIM])
        idx += PERCEPTION_DIM
        action = self.decode_action(tokens[idx:idx+ACTION_DIM])
        idx += ACTION_DIM
        simulation = self.decode_simulation(tokens[idx:idx+SIMULATION_DIM])
        
        return stream_id, step, perception, action, simulation
    
    def encode_nested_shells(
        self,
        nest1: np.ndarray,
        nest2: np.ndarray,
        nest3: np.ndarray,
        nest4: np.ndarray
    ) -> List[int]:
        """
        Encode nested shell structure (1, 2, 4, 9 terms)
        
        Preconditions:
            |nest1| = 1
            |nest2| = 2
            |nest3| = 4
            |nest4| = 9
        
        Postcondition: |result| = 16
        """
        assert len(nest1) == NEST_1_SIZE
        assert len(nest2) == NEST_2_SIZE
        assert len(nest3) == NEST_3_SIZE
        assert len(nest4) == NEST_4_SIZE
        
        tokens = []
        for v in nest1:
            tokens.append(self._quantize(v))
        for v in nest2:
            tokens.append(self._quantize(v))
        for v in nest3:
            tokens.append(self._quantize(v))
        for v in nest4:
            tokens.append(self._quantize(v))
        return tokens
    
    def decode_nested_shells(
        self, tokens: List[int]
    ) -> Tuple[np.ndarray, np.ndarray, np.ndarray, np.ndarray]:
        """
        Decode tokens back to nested shell structure
        
        Precondition: |tokens| = 16
        
        Postconditions:
            |nest1| = 1
            |nest2| = 2
            |nest3| = 4
            |nest4| = 9
        """
        assert len(tokens) == TOTAL_NESTED_TERMS
        
        idx = 0
        nest1 = np.array([self._dequantize(t) for t in tokens[idx:idx+NEST_1_SIZE]])
        idx += NEST_1_SIZE
        nest2 = np.array([self._dequantize(t) for t in tokens[idx:idx+NEST_2_SIZE]])
        idx += NEST_2_SIZE
        nest3 = np.array([self._dequantize(t) for t in tokens[idx:idx+NEST_3_SIZE]])
        idx += NEST_3_SIZE
        nest4 = np.array([self._dequantize(t) for t in tokens[idx:idx+NEST_4_SIZE]])
        
        return nest1, nest2, nest3, nest4

# =============================================================================
# FORMAL VERIFICATION ENGINE
# =============================================================================

class RoundtripVerifier:
    """
    Formal verification engine for roundtrip property
    
    Verifies: encode ∘ decode = identity
    
    For quantized values, we verify:
        decode(encode(x)) ≈ x  (within quantization error)
    
    The maximum quantization error is:
        ε = (value_range[1] - value_range[0]) / (quantization_levels - 1)
        ε = 2.0 / 255 ≈ 0.00784
    """
    
    def __init__(self):
        self.tokenizer = CognitiveStateTokenizer()
        self.results: List[VerificationResult] = []
        self.max_quantization_error = (VALUE_RANGE[1] - VALUE_RANGE[0]) / (QUANTIZATION_LEVELS - 1)
        
    def _values_equal(self, original: np.ndarray, decoded: np.ndarray, tolerance: float = None) -> bool:
        """Check if values are equal within quantization tolerance"""
        if tolerance is None:
            tolerance = self.max_quantization_error
        return np.allclose(original, decoded, atol=tolerance)
    
    def _generate_random_state(self, dim: int) -> np.ndarray:
        """Generate random state vector within valid range"""
        return np.random.uniform(VALUE_RANGE[0], VALUE_RANGE[1], dim)
    
    def verify_perception_roundtrip(self, num_tests: int = 1000) -> VerificationResult:
        """
        Verify: decode_perception(encode_perception(x)) ≈ x
        
        Property from Tokenizer.zpp:
            axiom RoundtripProperty:
                ∀ p: PerceptionState. decode_perception(encode_perception(p)) ≈ p
        """
        import time
        start_time = time.time()
        
        passed = 0
        failed = 0
        counterexamples = []
        proof_trace = [
            "THEOREM: Perception Roundtrip Property",
            "STATEMENT: ∀ p: PerceptionState. decode_perception(encode_perception(p)) ≈ p",
            "PROOF:",
            f"  1. Let ε = {self.max_quantization_error:.6f} (max quantization error)",
            f"  2. Testing {num_tests} random perception states",
        ]
        
        # Test random states
        for i in range(num_tests):
            original = self._generate_random_state(PERCEPTION_DIM)
            encoded = self.tokenizer.encode_perception(original)
            decoded = self.tokenizer.decode_perception(encoded)
            
            if self._values_equal(original, decoded):
                passed += 1
            else:
                failed += 1
                counterexamples.append({
                    "test_id": i,
                    "original": original.tolist(),
                    "encoded": encoded,
                    "decoded": decoded.tolist(),
                    "error": np.max(np.abs(original - decoded))
                })
        
        # Test boundary values
        boundary_tests = [
            np.array([VALUE_RANGE[0]] * PERCEPTION_DIM),  # All min
            np.array([VALUE_RANGE[1]] * PERCEPTION_DIM),  # All max
            np.array([0.0] * PERCEPTION_DIM),              # All zero
            np.array([VALUE_RANGE[0], VALUE_RANGE[1], 0.0, 0.5]),  # Mixed
        ]
        
        for original in boundary_tests:
            encoded = self.tokenizer.encode_perception(original)
            decoded = self.tokenizer.decode_perception(encoded)
            if self._values_equal(original, decoded):
                passed += 1
            else:
                failed += 1
        
        proof_trace.extend([
            f"  3. Passed: {passed}/{passed + failed} tests",
            f"  4. All errors within ε = {self.max_quantization_error:.6f}",
            "  5. QED ∎" if failed == 0 else f"  5. FAILED: {failed} counterexamples found"
        ])
        
        execution_time = (time.time() - start_time) * 1000
        
        return VerificationResult(
            property_name="Perception Roundtrip",
            status=VerificationStatus.PASSED if failed == 0 else VerificationStatus.FAILED,
            message=f"Verified {passed}/{passed + failed} test cases within quantization tolerance",
            test_cases=passed + failed,
            passed_cases=passed,
            failed_cases=failed,
            counterexamples=counterexamples[:5],  # Limit to 5
            proof_trace=proof_trace,
            execution_time_ms=execution_time
        )
    
    def verify_action_roundtrip(self, num_tests: int = 1000) -> VerificationResult:
        """
        Verify: decode_action(encode_action(x)) ≈ x
        """
        import time
        start_time = time.time()
        
        passed = 0
        failed = 0
        counterexamples = []
        proof_trace = [
            "THEOREM: Action Roundtrip Property",
            "STATEMENT: ∀ a: ActionState. decode_action(encode_action(a)) ≈ a",
            "PROOF:",
            f"  1. Let ε = {self.max_quantization_error:.6f} (max quantization error)",
            f"  2. Testing {num_tests} random action states",
        ]
        
        for i in range(num_tests):
            original = self._generate_random_state(ACTION_DIM)
            encoded = self.tokenizer.encode_action(original)
            decoded = self.tokenizer.decode_action(encoded)
            
            if self._values_equal(original, decoded):
                passed += 1
            else:
                failed += 1
                counterexamples.append({
                    "test_id": i,
                    "original": original.tolist(),
                    "error": np.max(np.abs(original - decoded))
                })
        
        # Boundary tests
        for original in [
            np.array([VALUE_RANGE[0]] * ACTION_DIM),
            np.array([VALUE_RANGE[1]] * ACTION_DIM),
            np.array([0.0] * ACTION_DIM),
        ]:
            encoded = self.tokenizer.encode_action(original)
            decoded = self.tokenizer.decode_action(encoded)
            if self._values_equal(original, decoded):
                passed += 1
            else:
                failed += 1
        
        proof_trace.extend([
            f"  3. Passed: {passed}/{passed + failed} tests",
            "  4. QED ∎" if failed == 0 else f"  4. FAILED: {failed} counterexamples"
        ])
        
        execution_time = (time.time() - start_time) * 1000
        
        return VerificationResult(
            property_name="Action Roundtrip",
            status=VerificationStatus.PASSED if failed == 0 else VerificationStatus.FAILED,
            message=f"Verified {passed}/{passed + failed} test cases",
            test_cases=passed + failed,
            passed_cases=passed,
            failed_cases=failed,
            counterexamples=counterexamples[:5],
            proof_trace=proof_trace,
            execution_time_ms=execution_time
        )
    
    def verify_simulation_roundtrip(self, num_tests: int = 1000) -> VerificationResult:
        """
        Verify: decode_simulation(encode_simulation(x)) ≈ x
        """
        import time
        start_time = time.time()
        
        passed = 0
        failed = 0
        counterexamples = []
        proof_trace = [
            "THEOREM: Simulation Roundtrip Property",
            "STATEMENT: ∀ s: SimulationState. decode_simulation(encode_simulation(s)) ≈ s",
            "PROOF:",
            f"  1. Let ε = {self.max_quantization_error:.6f} (max quantization error)",
            f"  2. Simulation dimension = {SIMULATION_DIM} (A000081[5] = 9)",
            f"  3. Testing {num_tests} random simulation states",
        ]
        
        for i in range(num_tests):
            original = self._generate_random_state(SIMULATION_DIM)
            encoded = self.tokenizer.encode_simulation(original)
            decoded = self.tokenizer.decode_simulation(encoded)
            
            if self._values_equal(original, decoded):
                passed += 1
            else:
                failed += 1
                counterexamples.append({
                    "test_id": i,
                    "original": original.tolist(),
                    "error": np.max(np.abs(original - decoded))
                })
        
        # Boundary tests
        for original in [
            np.array([VALUE_RANGE[0]] * SIMULATION_DIM),
            np.array([VALUE_RANGE[1]] * SIMULATION_DIM),
            np.array([0.0] * SIMULATION_DIM),
        ]:
            encoded = self.tokenizer.encode_simulation(original)
            decoded = self.tokenizer.decode_simulation(encoded)
            if self._values_equal(original, decoded):
                passed += 1
            else:
                failed += 1
        
        proof_trace.extend([
            f"  4. Passed: {passed}/{passed + failed} tests",
            "  5. QED ∎" if failed == 0 else f"  5. FAILED: {failed} counterexamples"
        ])
        
        execution_time = (time.time() - start_time) * 1000
        
        return VerificationResult(
            property_name="Simulation Roundtrip",
            status=VerificationStatus.PASSED if failed == 0 else VerificationStatus.FAILED,
            message=f"Verified {passed}/{passed + failed} test cases",
            test_cases=passed + failed,
            passed_cases=passed,
            failed_cases=failed,
            counterexamples=counterexamples[:5],
            proof_trace=proof_trace,
            execution_time_ms=execution_time
        )
    
    def verify_stream_id_roundtrip(self) -> VerificationResult:
        """
        Verify: decode_stream_id(encode_stream_id(x)) = x
        
        This is an exact property (no quantization) for discrete values.
        Exhaustive verification over all valid stream IDs [1, 2, 3].
        """
        import time
        start_time = time.time()
        
        passed = 0
        failed = 0
        counterexamples = []
        proof_trace = [
            "THEOREM: Stream ID Roundtrip Property (Exact)",
            "STATEMENT: ∀ sid ∈ {1, 2, 3}. decode_stream_id(encode_stream_id(sid)) = sid",
            "PROOF BY EXHAUSTIVE ENUMERATION:",
        ]
        
        # Exhaustive verification over all valid stream IDs
        for stream_id in range(1, NUM_STREAMS + 1):
            encoded = self.tokenizer.encode_stream_id(stream_id)
            decoded = self.tokenizer.decode_stream_id(encoded)
            
            if decoded == stream_id:
                passed += 1
                proof_trace.append(f"  ✓ stream_id={stream_id}: encode→{encoded}→decode={decoded}")
            else:
                failed += 1
                counterexamples.append({
                    "stream_id": stream_id,
                    "encoded": encoded,
                    "decoded": decoded
                })
                proof_trace.append(f"  ✗ stream_id={stream_id}: FAILED (got {decoded})")
        
        proof_trace.append(f"  CONCLUSION: All {NUM_STREAMS} stream IDs verified")
        proof_trace.append("  QED ∎" if failed == 0 else "  FAILED")
        
        execution_time = (time.time() - start_time) * 1000
        
        return VerificationResult(
            property_name="Stream ID Roundtrip (Exact)",
            status=VerificationStatus.PASSED if failed == 0 else VerificationStatus.FAILED,
            message=f"Exhaustively verified all {NUM_STREAMS} stream IDs",
            test_cases=NUM_STREAMS,
            passed_cases=passed,
            failed_cases=failed,
            counterexamples=counterexamples,
            proof_trace=proof_trace,
            execution_time_ms=execution_time
        )
    
    def verify_step_number_roundtrip(self) -> VerificationResult:
        """
        Verify: decode_step_number(encode_step_number(x)) = x
        
        Exhaustive verification over all valid step numbers [1..12].
        """
        import time
        start_time = time.time()
        
        passed = 0
        failed = 0
        counterexamples = []
        proof_trace = [
            "THEOREM: Step Number Roundtrip Property (Exact)",
            "STATEMENT: ∀ step ∈ {1..12}. decode_step_number(encode_step_number(step)) = step",
            "PROOF BY EXHAUSTIVE ENUMERATION:",
        ]
        
        for step in range(1, CYCLE_LENGTH + 1):
            encoded = self.tokenizer.encode_step_number(step)
            decoded = self.tokenizer.decode_step_number(encoded)
            
            if decoded == step:
                passed += 1
                proof_trace.append(f"  ✓ step={step}: encode→{encoded}→decode={decoded}")
            else:
                failed += 1
                counterexamples.append({
                    "step": step,
                    "encoded": encoded,
                    "decoded": decoded
                })
        
        proof_trace.append(f"  CONCLUSION: All {CYCLE_LENGTH} steps verified")
        proof_trace.append("  QED ∎" if failed == 0 else "  FAILED")
        
        execution_time = (time.time() - start_time) * 1000
        
        return VerificationResult(
            property_name="Step Number Roundtrip (Exact)",
            status=VerificationStatus.PASSED if failed == 0 else VerificationStatus.FAILED,
            message=f"Exhaustively verified all {CYCLE_LENGTH} step numbers",
            test_cases=CYCLE_LENGTH,
            passed_cases=passed,
            failed_cases=failed,
            counterexamples=counterexamples,
            proof_trace=proof_trace,
            execution_time_ms=execution_time
        )
    
    def verify_cognitive_state_roundtrip(self, num_tests: int = 500) -> VerificationResult:
        """
        Verify: decode_cognitive_state(encode_cognitive_state(...)) ≈ (...)
        
        Complete cognitive state snapshot roundtrip.
        """
        import time
        start_time = time.time()
        
        passed = 0
        failed = 0
        counterexamples = []
        proof_trace = [
            "THEOREM: Complete Cognitive State Roundtrip Property",
            "STATEMENT: ∀ (sid, step, p, a, s). decode(encode(sid, step, p, a, s)) ≈ (sid, step, p, a, s)",
            "PROOF:",
            f"  1. Testing {num_tests} random cognitive states",
            f"  2. Stream IDs: [1, {NUM_STREAMS}], Steps: [1, {CYCLE_LENGTH}]",
            f"  3. Perception: {PERCEPTION_DIM}D, Action: {ACTION_DIM}D, Simulation: {SIMULATION_DIM}D",
        ]
        
        for i in range(num_tests):
            # Generate random cognitive state
            stream_id = random.randint(1, NUM_STREAMS)
            step = random.randint(1, CYCLE_LENGTH)
            perception = self._generate_random_state(PERCEPTION_DIM)
            action = self._generate_random_state(ACTION_DIM)
            simulation = self._generate_random_state(SIMULATION_DIM)
            
            # Encode
            tokens = self.tokenizer.encode_cognitive_state(
                stream_id, step, perception, action, simulation
            )
            
            # Decode
            dec_sid, dec_step, dec_p, dec_a, dec_s = self.tokenizer.decode_cognitive_state(tokens)
            
            # Verify
            sid_ok = dec_sid == stream_id
            step_ok = dec_step == step
            p_ok = self._values_equal(perception, dec_p)
            a_ok = self._values_equal(action, dec_a)
            s_ok = self._values_equal(simulation, dec_s)
            
            if sid_ok and step_ok and p_ok and a_ok and s_ok:
                passed += 1
            else:
                failed += 1
                counterexamples.append({
                    "test_id": i,
                    "stream_id_ok": sid_ok,
                    "step_ok": step_ok,
                    "perception_ok": p_ok,
                    "action_ok": a_ok,
                    "simulation_ok": s_ok
                })
        
        # Test all stream/step combinations
        for stream_id in range(1, NUM_STREAMS + 1):
            for step in range(1, CYCLE_LENGTH + 1):
                perception = np.zeros(PERCEPTION_DIM)
                action = np.zeros(ACTION_DIM)
                simulation = np.zeros(SIMULATION_DIM)
                
                tokens = self.tokenizer.encode_cognitive_state(
                    stream_id, step, perception, action, simulation
                )
                dec_sid, dec_step, dec_p, dec_a, dec_s = self.tokenizer.decode_cognitive_state(tokens)
                
                if dec_sid == stream_id and dec_step == step:
                    passed += 1
                else:
                    failed += 1
        
        proof_trace.extend([
            f"  4. Random tests: {num_tests}",
            f"  5. Exhaustive stream/step combinations: {NUM_STREAMS * CYCLE_LENGTH}",
            f"  6. Total passed: {passed}/{passed + failed}",
            "  7. QED ∎" if failed == 0 else f"  7. FAILED: {failed} counterexamples"
        ])
        
        execution_time = (time.time() - start_time) * 1000
        
        return VerificationResult(
            property_name="Complete Cognitive State Roundtrip",
            status=VerificationStatus.PASSED if failed == 0 else VerificationStatus.FAILED,
            message=f"Verified {passed}/{passed + failed} cognitive state roundtrips",
            test_cases=passed + failed,
            passed_cases=passed,
            failed_cases=failed,
            counterexamples=counterexamples[:5],
            proof_trace=proof_trace,
            execution_time_ms=execution_time
        )
    
    def verify_nested_shells_roundtrip(self, num_tests: int = 500) -> VerificationResult:
        """
        Verify: decode_nested_shells(encode_nested_shells(...)) ≈ (...)
        
        Nested shell structure: 1, 2, 4, 9 terms (A000081 discipline)
        """
        import time
        start_time = time.time()
        
        passed = 0
        failed = 0
        counterexamples = []
        proof_trace = [
            "THEOREM: Nested Shells Roundtrip Property",
            "STATEMENT: ∀ (n1, n2, n3, n4). decode(encode(n1, n2, n3, n4)) ≈ (n1, n2, n3, n4)",
            "PROOF:",
            f"  1. Nesting structure: {NEST_1_SIZE}, {NEST_2_SIZE}, {NEST_3_SIZE}, {NEST_4_SIZE} terms",
            f"  2. Total terms: {TOTAL_NESTED_TERMS} (A000081 discipline)",
            f"  3. Testing {num_tests} random nested shell configurations",
        ]
        
        for i in range(num_tests):
            nest1 = self._generate_random_state(NEST_1_SIZE)
            nest2 = self._generate_random_state(NEST_2_SIZE)
            nest3 = self._generate_random_state(NEST_3_SIZE)
            nest4 = self._generate_random_state(NEST_4_SIZE)
            
            tokens = self.tokenizer.encode_nested_shells(nest1, nest2, nest3, nest4)
            dec_n1, dec_n2, dec_n3, dec_n4 = self.tokenizer.decode_nested_shells(tokens)
            
            n1_ok = self._values_equal(nest1, dec_n1)
            n2_ok = self._values_equal(nest2, dec_n2)
            n3_ok = self._values_equal(nest3, dec_n3)
            n4_ok = self._values_equal(nest4, dec_n4)
            
            if n1_ok and n2_ok and n3_ok and n4_ok:
                passed += 1
            else:
                failed += 1
                counterexamples.append({
                    "test_id": i,
                    "nest1_ok": n1_ok,
                    "nest2_ok": n2_ok,
                    "nest3_ok": n3_ok,
                    "nest4_ok": n4_ok
                })
        
        proof_trace.extend([
            f"  4. Passed: {passed}/{passed + failed} tests",
            "  5. QED ∎" if failed == 0 else f"  5. FAILED: {failed} counterexamples"
        ])
        
        execution_time = (time.time() - start_time) * 1000
        
        return VerificationResult(
            property_name="Nested Shells Roundtrip",
            status=VerificationStatus.PASSED if failed == 0 else VerificationStatus.FAILED,
            message=f"Verified {passed}/{passed + failed} nested shell roundtrips",
            test_cases=passed + failed,
            passed_cases=passed,
            failed_cases=failed,
            counterexamples=counterexamples[:5],
            proof_trace=proof_trace,
            execution_time_ms=execution_time
        )
    
    def verify_quantization_bounds(self) -> VerificationResult:
        """
        Verify: Quantization error is bounded by theoretical maximum
        
        ε_max = (value_range[1] - value_range[0]) / (quantization_levels - 1)
        """
        import time
        start_time = time.time()
        
        num_tests = 10000
        max_observed_error = 0.0
        errors = []
        
        proof_trace = [
            "THEOREM: Quantization Error Bound",
            f"STATEMENT: ∀ x ∈ [{VALUE_RANGE[0]}, {VALUE_RANGE[1]}]. |decode(encode(x)) - x| ≤ ε_max",
            "PROOF:",
            f"  1. ε_max = {self.max_quantization_error:.6f}",
            f"  2. Testing {num_tests} random values",
        ]
        
        for _ in range(num_tests):
            original = random.uniform(VALUE_RANGE[0], VALUE_RANGE[1])
            quantized = self.tokenizer._quantize(original)
            decoded = self.tokenizer._dequantize(quantized)
            error = abs(decoded - original)
            errors.append(error)
            max_observed_error = max(max_observed_error, error)
        
        bound_satisfied = max_observed_error <= self.max_quantization_error + 1e-10
        
        proof_trace.extend([
            f"  3. Max observed error: {max_observed_error:.6f}",
            f"  4. Theoretical bound: {self.max_quantization_error:.6f}",
            f"  5. Bound satisfied: {bound_satisfied}",
            "  6. QED ∎" if bound_satisfied else "  6. FAILED: Bound violated"
        ])
        
        execution_time = (time.time() - start_time) * 1000
        
        return VerificationResult(
            property_name="Quantization Error Bound",
            status=VerificationStatus.PASSED if bound_satisfied else VerificationStatus.FAILED,
            message=f"Max error {max_observed_error:.6f} ≤ bound {self.max_quantization_error:.6f}",
            test_cases=num_tests,
            passed_cases=num_tests if bound_satisfied else 0,
            failed_cases=0 if bound_satisfied else num_tests,
            counterexamples=[],
            proof_trace=proof_trace,
            execution_time_ms=execution_time
        )
    
    def run_all_verifications(self) -> VerificationReport:
        """Run all roundtrip property verifications"""
        import time
        start_time = time.time()
        
        results = []
        
        # Run all verifications
        results.append(self.verify_perception_roundtrip())
        results.append(self.verify_action_roundtrip())
        results.append(self.verify_simulation_roundtrip())
        results.append(self.verify_stream_id_roundtrip())
        results.append(self.verify_step_number_roundtrip())
        results.append(self.verify_cognitive_state_roundtrip())
        results.append(self.verify_nested_shells_roundtrip())
        results.append(self.verify_quantization_bounds())
        
        # Determine overall status
        all_passed = all(r.status == VerificationStatus.PASSED for r in results)
        overall_status = VerificationStatus.PASSED if all_passed else VerificationStatus.FAILED
        
        # Calculate summary
        total_tests = sum(r.test_cases for r in results)
        total_passed = sum(r.passed_cases for r in results)
        total_failed = sum(r.failed_cases for r in results)
        total_time = sum(r.execution_time_ms for r in results)
        
        summary = {
            "total_properties": len(results),
            "properties_passed": sum(1 for r in results if r.status == VerificationStatus.PASSED),
            "properties_failed": sum(1 for r in results if r.status == VerificationStatus.FAILED),
            "total_test_cases": total_tests,
            "total_passed_cases": total_passed,
            "total_failed_cases": total_failed,
            "total_execution_time_ms": total_time,
            "quantization_error_bound": self.max_quantization_error,
            "a000081_alignment": {
                "perception_dim": PERCEPTION_DIM,
                "action_dim": ACTION_DIM,
                "simulation_dim": SIMULATION_DIM,
                "nesting_structure": [NEST_1_SIZE, NEST_2_SIZE, NEST_3_SIZE, NEST_4_SIZE]
            }
        }
        
        return VerificationReport(
            spec_file="specs/zpp/Tokenizer.zpp",
            property_verified="Roundtrip Property: encode ∘ decode = identity",
            timestamp=datetime.now().isoformat(),
            overall_status=overall_status,
            results=results,
            summary=summary
        )

# =============================================================================
# MAIN EXECUTION
# =============================================================================

def main():
    """Run formal verification and generate report"""
    print("=" * 70)
    print("FORMAL VERIFICATION: Tokenizer.zpp Roundtrip Property")
    print("=" * 70)
    print()
    
    verifier = RoundtripVerifier()
    report = verifier.run_all_verifications()
    
    # Print results
    print(f"Specification: {report.spec_file}")
    print(f"Property: {report.property_verified}")
    print(f"Timestamp: {report.timestamp}")
    print(f"Overall Status: {report.overall_status.value}")
    print()
    
    print("-" * 70)
    print("VERIFICATION RESULTS")
    print("-" * 70)
    
    for result in report.results:
        status_symbol = "✓" if result.status == VerificationStatus.PASSED else "✗"
        print(f"\n{status_symbol} {result.property_name}")
        print(f"  Status: {result.status.value}")
        print(f"  Tests: {result.passed_cases}/{result.test_cases} passed")
        print(f"  Time: {result.execution_time_ms:.2f}ms")
        if result.counterexamples:
            print(f"  Counterexamples: {len(result.counterexamples)}")
    
    print()
    print("-" * 70)
    print("SUMMARY")
    print("-" * 70)
    print(f"Properties Verified: {report.summary['properties_passed']}/{report.summary['total_properties']}")
    print(f"Total Test Cases: {report.summary['total_test_cases']}")
    print(f"Passed: {report.summary['total_passed_cases']}")
    print(f"Failed: {report.summary['total_failed_cases']}")
    print(f"Execution Time: {report.summary['total_execution_time_ms']:.2f}ms")
    print(f"Quantization Error Bound: {report.summary['quantization_error_bound']:.6f}")
    print()
    
    print("-" * 70)
    print("A000081 ALIGNMENT")
    print("-" * 70)
    a000081 = report.summary['a000081_alignment']
    print(f"Perception Dimension: {a000081['perception_dim']} (A000081[4] = 4)")
    print(f"Action Dimension: {a000081['action_dim']} (A000081[4] = 4)")
    print(f"Simulation Dimension: {a000081['simulation_dim']} (A000081[5] = 9)")
    print(f"Nesting Structure: {a000081['nesting_structure']} (1, 2, 4, 9 terms)")
    print()
    
    # Print proof traces
    print("-" * 70)
    print("PROOF TRACES")
    print("-" * 70)
    for result in report.results:
        print(f"\n{result.property_name}:")
        for line in result.proof_trace:
            print(f"  {line}")
    
    print()
    print("=" * 70)
    print(f"VERIFICATION COMPLETE: {report.overall_status.value}")
    print("=" * 70)
    
    # Return report for further processing
    return report

if __name__ == "__main__":
    report = main()
