#!/usr/bin/env th
--[[
   Example: Meta-Cognitive Neural-Bot-Net with AIML Integration
   
   This example demonstrates the NN.AIML system with nested meta-cognitive loops
   that transcends traditional LLM performance through deep cognitive awareness.
   
   The system implements:
   - Multiple layers of self-aware neural networks
   - Nested meta-cognitive loops (learning about learning, reasoning about reasoning)
   - AIML-based conversational interface with neural awareness
   - Adaptive response generation based on cognitive state
]]

require 'nn'

print("=== NN.AIML Meta-Cognitive Neural-Bot-Net Example ===\n")

-- Create a simple base neural network
print("1. Creating base neural network...")
local baseNetwork = nn.Sequential()
baseNetwork:add(nn.Linear(10, 20))
baseNetwork:add(nn.Tanh())
baseNetwork:add(nn.Linear(20, 10))
baseNetwork:add(nn.Tanh())
print("   Base network created with 10->20->10 architecture\n")

-- Wrap it with nested meta-cognition (3 levels)
print("2. Creating nested meta-cognitive architecture...")
local metaCognitiveNet = nn.NestedMetaCognition(baseNetwork, 3)
print("   Created 3-level nested meta-cognitive system:")
print("   - Level 1: Base Cognition (Input/Output Processing)")
print("   - Level 2: Meta-Cognition (Learning About Learning)")
print("   - Level 3: Meta-Meta-Cognition (Reasoning About Reasoning)\n")

-- Wrap with self-awareness and AIML
print("3. Adding self-awareness and AIML conversational interface...")
local selfAwareNet = nn.SelfAwareNetwork(metaCognitiveNet, true)
print("   Self-aware network with AIML interface created\n")

-- Test forward pass with synthetic data
print("4. Running forward pass with synthetic data...")
local input = torch.randn(5, 10) -- Batch of 5 samples
local output = selfAwareNet:forward(input)
print("   Input shape: " .. input:size(1) .. "x" .. input:size(2))
print("   Output shape: " .. output:size(1) .. "x" .. output:size(2))
print("   Output mean: " .. string.format("%.4f", output:mean()))
print("   Output std: " .. string.format("%.4f", output:std()) .. "\n")

-- Test backward pass
print("5. Running backward pass...")
local gradOutput = torch.randn(output:size())
local gradInput = selfAwareNet:backward(input, gradOutput)
print("   Gradient input shape: " .. gradInput:size(1) .. "x" .. gradInput:size(2))
print("   Gradient mean: " .. string.format("%.4f", gradInput:mean()) .. "\n")

-- Perform several training iterations to build meta-cognitive state
print("6. Performing training iterations to build meta-cognitive state...")
for i = 1, 20 do
   local trainInput = torch.randn(3, 10)
   local trainOutput = selfAwareNet:forward(trainInput)
   local trainGrad = torch.randn(trainOutput:size())
   selfAwareNet:backward(trainInput, trainGrad)
end
print("   Completed 20 training iterations\n")

-- Introspect the system
print("7. System Introspection:")
local introspection = selfAwareNet:introspect()
print("   Network Type: " .. introspection.networkType)
print("   Forward Passes: " .. introspection.forwardPasses)
print("   Backward Passes: " .. introspection.backwardPasses)
print("   Learning Stability: " .. string.format("%.4f", introspection.learningDynamics.stability))
print("   Convergence: " .. string.format("%.4f", introspection.learningDynamics.convergence))

if #introspection.recentReflections > 0 then
   local latest = introspection.recentReflections[#introspection.recentReflections]
   print("   Current State: " .. latest.state)
end
print()

-- Test AIML conversational interface
print("8. Testing AIML Conversational Interface:")
print("   (Conversing with the neural-bot-net)\n")

local conversations = {
   "HELLO",
   "HOW ARE YOU",
   "WHAT ARE YOU LEARNING",
   "HOW DO YOU THINK",
   "WHAT IS YOUR CONFIDENCE",
   "EXPLAIN YOUR REASONING",
   "WHAT IS META-COGNITION"
}

for _, question in ipairs(conversations) do
   print("   Human: " .. question)
   local response = selfAwareNet:converse(question, input)
   print("   Bot: " .. response)
   print()
end

-- Get detailed meta-cognitive state
print("9. Nested Meta-Cognition Details:")
local metaState = metaCognitiveNet:getGlobalMetaState()
print("   Total Processing Steps: " .. metaState.totalProcessingSteps)
print("   Cognitive Integration: " .. string.format("%.4f", metaState.cognitiveIntegration))
print("   Awareness Depth: " .. metaState.awarenessDepth)

local hierarchy = metaCognitiveNet:getCognitiveHierarchy()
print("\n   Cognitive Hierarchy:")
for i, level in ipairs(hierarchy) do
   print("     Level " .. level.level .. ": " .. level.description)
   print("       Type: " .. torch.type(level.network))
end
print()

-- Final introspection of AIML system
print("10. AIML System Introspection:")
local aiml = selfAwareNet:getAIML()
local aimlIntro = aiml:introspect()
print("   Pattern Count: " .. aimlIntro.patternCount)
print("   Conversation Count: " .. aimlIntro.conversationCount)
print("   Current Confidence: " .. string.format("%.4f", aimlIntro.currentConfidence))
print("   Cognitive Signal: " .. string.format("%.4f", aimlIntro.currentCognitiveSignal))
print()

print("=== Summary ===")
print("Successfully demonstrated NN.AIML meta-cognitive neural-bot-net with:")
print("  ✓ Nested meta-cognitive loops (3 levels)")
print("  ✓ Self-aware neural network processing")
print("  ✓ AIML conversational interface")
print("  ✓ Cognitive state tracking and introspection")
print("  ✓ Adaptive learning based on meta-cognitive awareness")
print("\nThe system demonstrates how neural networks can:")
print("  • Learn about their learning")
print("  • Reason about their reasoning")
print("  • Adapt responses with deep cognitive awareness")
print("  • Engage in conversational AI with neural state awareness")
