# NN.AIML Examples

This directory contains examples demonstrating the meta-cognitive neural network capabilities with AIML integration.

## Running the Examples

To run any example, use the Torch command-line interface:

```bash
th examples/metacognitive_botnet.lua
```

## Available Examples

### metacognitive_botnet.lua

A comprehensive demonstration of the NN.AIML meta-cognitive neural-bot-net system.

**What it demonstrates:**
- Creating a base neural network
- Wrapping it with nested meta-cognitive loops (3 levels)
- Adding self-awareness and AIML conversational interface
- Training with meta-cognitive awareness
- Conversing with the neural network
- Introspecting cognitive state

**Key Features Shown:**
1. **Base Cognition**: Standard neural network processing
2. **Meta-Cognition**: Network monitors its own learning
3. **Meta-Meta-Cognition**: Network reasons about its reasoning
4. **AIML Integration**: Conversational interface with neural awareness
5. **System Introspection**: Detailed cognitive state examination

**Expected Output:**
```
=== NN.AIML Meta-Cognitive Neural-Bot-Net Example ===

1. Creating base neural network...
   Base network created with 10->20->10 architecture

2. Creating nested meta-cognitive architecture...
   Created 3-level nested meta-cognitive system:
   - Level 1: Base Cognition (Input/Output Processing)
   - Level 2: Meta-Cognition (Learning About Learning)
   - Level 3: Meta-Meta-Cognition (Reasoning About Reasoning)

3. Adding self-awareness and AIML conversational interface...
   Self-aware network with AIML interface created

[... more output ...]

8. Testing AIML Conversational Interface:
   (Conversing with the neural-bot-net)

   Human: HELLO
   Bot: Hello! I am a meta-cognitive neural network. I can think about my thinking.

   Human: HOW ARE YOU
   Bot: I'm functioning well! My cognitive confidence is high at 0.95.

[... and so on ...]
```

## Creating Your Own Examples

You can easily create your own meta-cognitive neural networks:

### Basic Meta-Cognitive Loop

```lua
require 'nn'

-- Create any neural network
local net = nn.Sequential()
   :add(nn.Linear(10, 20))
   :add(nn.Tanh())

-- Add meta-cognitive capabilities
local metaNet = nn.MetaCognitiveLoop(net, 2)

-- Use normally
local input = torch.randn(5, 10)
local output = metaNet:forward(input)

-- Check cognitive state
local state = metaNet:getMetaCognitiveState()
print("Confidence: " .. state.confidenceLevel)
```

### Nested Meta-Cognition

```lua
-- Create nested meta-cognitive hierarchy
local nestedNet = nn.NestedMetaCognition(net, 3)

local output = nestedNet:forward(input)

-- Introspect the hierarchy
local intro = nestedNet:introspect()
print("Cognitive Integration: " .. intro.cognitiveIntegration)
```

### Self-Aware Network with AIML

```lua
-- Make any network self-aware with conversational AI
local selfAware = nn.SelfAwareNetwork(net, true)

-- Converse with it
local response = selfAware:converse("WHAT ARE YOU LEARNING")
print(response)

-- Check learning dynamics
local dynamics = selfAware:getSelfAwareness().learningDynamics
print("Stability: " .. dynamics.stability)
print("Convergence: " .. dynamics.convergence)
```

## Advanced Examples

### Custom AIML Patterns

```lua
local aiml = nn.MetaCognitiveAIML(network)

-- Add custom conversational patterns
aiml:addPattern({
   pattern = "ANALYZE *",
   template = function(context, neural)
      return "Analyzing with confidence " .. neural.lastConfidence
   end
})

local response = aiml:processInput("ANALYZE THIS DATA")
```

### Multiple Nested Levels

```lua
-- Create deep meta-cognitive hierarchy
local deepNet = nn.NestedMetaCognition(baseNet, 5)

-- Each level adds another layer of awareness:
-- Level 1: Base processing
-- Level 2: Learning awareness
-- Level 3: Reasoning awareness
-- Level 4: Meta-reasoning awareness
-- Level 5: Meta-meta-reasoning awareness
```

## Tips

1. **Start Simple**: Begin with a single MetaCognitiveLoop before nesting
2. **Monitor State**: Use introspection methods to understand cognitive behavior
3. **Adjust Depth**: Higher nesting depths add more meta-cognitive layers but increase computation
4. **Custom Patterns**: Add domain-specific AIML patterns for your use case
5. **Training**: Meta-cognitive systems adapt over time - train them like regular networks

## Documentation

For complete API documentation, see [doc/metacognitive_aiml.md](../doc/metacognitive_aiml.md)
