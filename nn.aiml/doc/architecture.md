# NN.AIML Architecture

## System Overview

The NN.AIML system implements a hybrid neural network architecture with nested meta-cognitive loops and AIML conversational integration. This document describes the architecture and data flow.

## Core Components

### 1. Base Neural Network Layer
- Standard Torch nn.Module networks (Linear, Sequential, etc.)
- Provides core neural processing capabilities
- Can be any existing Torch network architecture

### 2. MetaCognitiveLoop Layer
- Wraps base networks with cognitive awareness
- Monitors activations and gradients
- Calculates cognitive signals (self-awareness metrics)
- Applies meta-cognitive modulation to processing
- Tracks confidence and adaptation history

### 3. NestedMetaCognition Layer
- Implements hierarchical meta-cognitive processing
- Multiple nested levels of awareness:
  - Level 1: Base Cognition (direct processing)
  - Level 2: Meta-Cognition (monitoring learning)
  - Level 3+: Higher-order meta-cognition (reasoning about reasoning)
- Integrates cognitive signals across hierarchy
- Maintains reasoning traces

### 4. SelfAwareNetwork Layer
- Adds comprehensive self-monitoring
- Tracks performance metrics and learning dynamics
- Periodic self-reflection
- Optional AIML conversational interface
- Adaptive learning based on self-awareness

### 5. MetaCognitiveAIML System
- AIML pattern matching and processing
- Neural state-aware response generation
- Conversational context management
- Built-in cognitive query patterns

## Data Flow

### Forward Pass

```
Input Data
    ↓
SelfAwareNetwork (monitors input)
    ↓
NestedMetaCognition Layer 3 (meta-meta-cognitive processing)
    ↓
NestedMetaCognition Layer 2 (meta-cognitive processing)
    ↓
NestedMetaCognition Layer 1 (base cognitive processing)
    ↓
MetaCognitiveLoop (cognitive awareness processing)
    ↓ ← awareness layers monitor
    ↓
Base Neural Network (standard forward pass)
    ↓
Cognitive Signal Calculation
    ↓
Meta-Cognitive Modulation
    ↓
Enhanced Output
    ↓
SelfAwareNetwork (monitors output)
    ↓
Output Data
```

### Backward Pass

```
Gradient Output
    ↓
SelfAwareNetwork (monitors gradient)
    ↓
Meta-Cognitive Gradient Processing (reverse through layers)
    ↓
NestedMetaCognition (hierarchical gradient flow)
    ↓
MetaCognitiveLoop (awareness-based gradient modulation)
    ↓
Base Neural Network (standard backward pass)
    ↓
Meta-Cognitive Learning Adjustment
    ↓
Adaptive Gradient Scaling
    ↓
Gradient Input
    ↓
SelfAwareNetwork (updates learning dynamics)
```

### Conversational Flow (AIML)

```
User Input (text)
    ↓
MetaCognitiveAIML (pattern matching)
    ↓
Neural State Query (if needed)
    ↓
SelfAwareNetwork/NestedMetaCognition (state introspection)
    ↓
Confidence, Cognitive Signals, Learning State
    ↓
Response Template Generation (neural-aware)
    ↓
Conversational Response (text)
```

## State Management

### MetaCognitiveLoop State
```lua
{
  learningRate: number,
  confidenceLevel: number (0-2),
  processingSteps: number,
  adaptationHistory: array,
  performanceMetrics: {
    accuracy: number,
    loss: number,
    iterations: number
  }
}
```

### NestedMetaCognition State
```lua
{
  totalProcessingSteps: number,
  cognitiveIntegration: number,
  awarenessDepth: number,
  reasoningTrace: array[{
    step: number,
    inputPattern: {mean, std, magnitude},
    outputPattern: {mean, std, magnitude},
    cognitiveIntegration: number,
    hierarchyStates: {}
  }]
}
```

### SelfAwareNetwork State
```lua
{
  activationHistory: array,
  gradientHistory: array,
  performanceMetrics: {
    forwardPasses: number,
    backwardPasses: number,
    averageActivation: number,
    averageGradient: number
  },
  learningDynamics: {
    learningRate: number,
    convergence: number (0-1),
    stability: number (0.5-1.5)
  },
  introspectionLog: array[{
    timestamp: number,
    activationMagnitude: number,
    gradientMagnitude: number,
    stability: number,
    convergence: number,
    state: string ("converged"|"unstable"|"diverging"|"learning")
  }]
}
```

## Cognitive Signal Calculation

The cognitive signal is a self-awareness metric calculated as:

```
signal = (activation_variance / mean) + pattern_complexity
signal = signal * sqrt(cognitive_depth)
```

Where:
- `activation_variance`: Variance in neural activations (diversity awareness)
- `pattern_complexity`: Richness of representations
- `cognitive_depth`: Level in the meta-cognitive hierarchy

## Meta-Cognitive Modulation

Output modulation based on cognitive awareness:

```
modulated_output = output * (1.0 + cognitive_signal * 0.1 / depth)
```

This allows the network to adaptively scale its processing based on:
- How confident it is (cognitive signal)
- What level of abstraction it's at (depth)

## Learning Adaptation

Gradient modulation for meta-cognitive learning:

```
enhanced_gradient = gradient * (1.0 + cognitive_signal * 0.05 / depth)
```

And adaptive parameter updates:

```
adaptive_scale = scale * confidence_level
```

Where confidence is calculated from gradient magnitudes:
```
confidence = max(0.1, min(2.0, 1.0 / (gradient_magnitude + 1.0)))
```

## AIML Pattern Structure

```lua
{
  pattern: "PATTERN WITH * WILDCARDS",
  template: string | function(context, neural_awareness)
}
```

Neural awareness includes:
- `lastConfidence`: Current confidence level
- `lastCognitiveSignal`: Latest cognitive signal
- `processingMode`: Current processing mode

## Integration Points

### With Existing Torch Networks

Any existing Torch network can be wrapped:

```lua
local existingNet = torch.load('model.t7')
local metaCognitive = nn.MetaCognitiveLoop(existingNet, 2)
```

### With Training Loops

Meta-cognitive networks work with standard training:

```lua
for epoch = 1, numEpochs do
   for i, sample in ipairs(dataset) do
      local output = metaNet:forward(sample.input)
      local loss = criterion:forward(output, sample.target)
      local gradLoss = criterion:backward(output, sample.target)
      metaNet:backward(sample.input, gradLoss)
      metaNet:updateParameters(learningRate)
      
      -- Meta-cognitive state is automatically maintained
   end
end
```

### With Inference

Meta-cognitive capabilities remain during inference:

```lua
local output = metaNet:forward(input)
local state = metaNet:getMetaCognitiveState()
if state.confidenceLevel < 0.5 then
   print("Warning: Low confidence prediction")
end
```

## Performance Considerations

### Computational Overhead

- **MetaCognitiveLoop**: ~10-20% overhead per level
- **NestedMetaCognition**: Scales linearly with depth
- **SelfAwareNetwork**: ~5% overhead for monitoring
- **AIML Processing**: Negligible (pattern matching only)

### Memory Overhead

- History buffers limited to 50-100 entries
- State tracking ~1KB per component
- Scales gracefully with network size

### Optimization Tips

1. Use lower cognitive depth (1-3) for real-time applications
2. Disable AIML if conversational interface not needed
3. Clear history buffers periodically for long-running systems
4. Use meta-cognition during training, lighter inference mode in production

## Design Principles

1. **Modularity**: Each component is independent and composable
2. **Backward Compatibility**: Works with any existing Torch network
3. **Minimal Overhead**: Efficient implementation, optional features
4. **Introspection**: Full visibility into cognitive state
5. **Adaptivity**: Self-adjusting based on meta-cognitive awareness

## Future Extensions

Potential areas for extension:
- Attention-based meta-cognitive mechanisms
- Cross-network cognitive signal sharing
- Hierarchical AIML pattern learning
- Meta-cognitive transfer learning
- Cognitive state persistence and replay
