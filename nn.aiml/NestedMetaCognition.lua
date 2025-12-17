local NestedMetaCognition, parent = torch.class('nn.NestedMetaCognition', 'nn.Container')

--[[
   NestedMetaCognition: Implements nested layers of meta-cognitive processing.
   
   Creates a hierarchy of meta-cognitive loops where each layer:
   - Level 1: Processes input/output (base cognition)
   - Level 2: Monitors and learns about learning (meta-cognition)
   - Level 3+: Reasons about reasoning (meta-meta-cognition)
   
   This creates a self-aware neural architecture that can:
   - Learn about its learning process
   - Reason about its reasoning
   - Adapt responses with deep cognitive awareness
   
   Parameters:
   - baseNetwork: The foundational neural network
   - nestingDepth: Number of nested meta-cognitive layers (default: 3)
]]

function NestedMetaCognition:__init(baseNetwork, nestingDepth)
   parent.__init(self)
   
   self.baseNetwork = baseNetwork or nn.Identity()
   self.nestingDepth = nestingDepth or 3
   
   -- Build nested meta-cognitive architecture
   self.cognitiveHierarchy = {}
   self.modules = {}
   
   -- Level 1: Base cognitive processing
   local currentNetwork = self.baseNetwork
   table.insert(self.cognitiveHierarchy, {
      level = 1,
      description = "Base Cognition",
      network = currentNetwork
   })
   table.insert(self.modules, currentNetwork)
   
   -- Level 2+: Nested meta-cognitive layers
   for level = 2, self.nestingDepth do
      local metaLoop = nn.MetaCognitiveLoop(currentNetwork, level - 1)
      table.insert(self.cognitiveHierarchy, {
         level = level,
         description = self:getCognitiveDescription(level),
         network = metaLoop
      })
      table.insert(self.modules, metaLoop)
      currentNetwork = metaLoop
   end
   
   self.topLevelNetwork = currentNetwork
   
   -- Global meta-cognitive state
   self.globalMetaState = {
      totalProcessingSteps = 0,
      cognitiveIntegration = 0,
      awarenessDepth = self.nestingDepth,
      reasoningTrace = {}
   }
   
   self.output = torch.Tensor()
   self.gradInput = torch.Tensor()
end

function NestedMetaCognition:getCognitiveDescription(level)
   if level == 1 then
      return "Base Cognition (Input/Output Processing)"
   elseif level == 2 then
      return "Meta-Cognition (Learning About Learning)"
   elseif level == 3 then
      return "Meta-Meta-Cognition (Reasoning About Reasoning)"
   else
      local prefix = string.rep("Meta-", level - 1)
      return prefix .. "Cognition (Level " .. level .. " Awareness)"
   end
end

function NestedMetaCognition:updateOutput(input)
   -- Process through nested meta-cognitive hierarchy
   self.output = self.topLevelNetwork:updateOutput(input)
   
   -- Integrate cognitive signals across all levels
   self:integrateMetaCognitiveSignals()
   
   -- Update global meta-cognitive state
   self.globalMetaState.totalProcessingSteps = self.globalMetaState.totalProcessingSteps + 1
   
   -- Record reasoning trace
   self:recordReasoningTrace(input, self.output)
   
   return self.output
end

function NestedMetaCognition:updateGradInput(input, gradOutput)
   -- Backward pass through nested meta-cognitive hierarchy
   self.gradInput = self.topLevelNetwork:updateGradInput(input, gradOutput)
   
   return self.gradInput
end

function NestedMetaCognition:accGradParameters(input, gradOutput, scale)
   scale = scale or 1
   
   -- Accumulate gradients through the hierarchy
   self.topLevelNetwork:accGradParameters(input, gradOutput, scale)
end

function NestedMetaCognition:integrateMetaCognitiveSignals()
   -- Integrate cognitive signals from all nested layers
   local totalSignal = 0
   local signalCount = 0
   
   for level = 2, self.nestingDepth do
      local metaLoop = self.cognitiveHierarchy[level].network
      if torch.isTypeOf(metaLoop, 'nn.MetaCognitiveLoop') then
         local awarenessLayers = metaLoop:getAwarenessLayers()
         for _, layer in ipairs(awarenessLayers) do
            totalSignal = totalSignal + layer.cognitiveSignal
            signalCount = signalCount + 1
         end
      end
   end
   
   -- Calculate integrated cognitive awareness
   if signalCount > 0 then
      self.globalMetaState.cognitiveIntegration = totalSignal / signalCount
   end
end

function NestedMetaCognition:recordReasoningTrace(input, output)
   -- Record a trace of the reasoning process for meta-awareness
   local trace = {
      step = self.globalMetaState.totalProcessingSteps,
      inputPattern = self:summarizePattern(input),
      outputPattern = self:summarizePattern(output),
      cognitiveIntegration = self.globalMetaState.cognitiveIntegration,
      hierarchyStates = {}
   }
   
   -- Capture state from each cognitive level
   for level = 2, self.nestingDepth do
      local metaLoop = self.cognitiveHierarchy[level].network
      if torch.isTypeOf(metaLoop, 'nn.MetaCognitiveLoop') then
         local state = metaLoop:getMetaCognitiveState()
         trace.hierarchyStates[level] = {
            confidence = state.confidenceLevel,
            processingSteps = state.processingSteps
         }
      end
   end
   
   table.insert(self.globalMetaState.reasoningTrace, trace)
   
   -- Keep trace manageable
   if #self.globalMetaState.reasoningTrace > 50 then
      table.remove(self.globalMetaState.reasoningTrace, 1)
   end
end

function NestedMetaCognition:summarizePattern(tensor)
   -- Create a summary of a tensor pattern for reasoning trace
   if tensor:nElement() == 0 then
      return {mean = 0, std = 0, magnitude = 0}
   end
   
   return {
      mean = tensor:mean(),
      std = tensor:std(),
      magnitude = torch.abs(tensor):mean()
   }
end

function NestedMetaCognition:getGlobalMetaState()
   return self.globalMetaState
end

function NestedMetaCognition:getCognitiveHierarchy()
   return self.cognitiveHierarchy
end

function NestedMetaCognition:introspect()
   -- Provide a detailed introspection of the nested meta-cognitive system
   local introspection = {
      nestingDepth = self.nestingDepth,
      totalSteps = self.globalMetaState.totalProcessingSteps,
      cognitiveIntegration = self.globalMetaState.cognitiveIntegration,
      hierarchyDetails = {}
   }
   
   for i, level in ipairs(self.cognitiveHierarchy) do
      introspection.hierarchyDetails[i] = {
         level = level.level,
         description = level.description,
         type = torch.type(level.network)
      }
      
      if torch.isTypeOf(level.network, 'nn.MetaCognitiveLoop') then
         local state = level.network:getMetaCognitiveState()
         introspection.hierarchyDetails[i].metaState = {
            confidence = state.confidenceLevel,
            steps = state.processingSteps
         }
      end
   end
   
   introspection.recentReasoning = {}
   local traceCount = math.min(5, #self.globalMetaState.reasoningTrace)
   for i = 1, traceCount do
      local idx = #self.globalMetaState.reasoningTrace - traceCount + i
      introspection.recentReasoning[i] = self.globalMetaState.reasoningTrace[idx]
   end
   
   return introspection
end

function NestedMetaCognition:__tostring__()
   local str = torch.type(self) .. ' {\n'
   str = str .. '  nestingDepth: ' .. self.nestingDepth .. '\n'
   str = str .. '  totalProcessingSteps: ' .. self.globalMetaState.totalProcessingSteps .. '\n'
   str = str .. '  cognitiveIntegration: ' .. string.format('%.4f', self.globalMetaState.cognitiveIntegration) .. '\n'
   str = str .. '  Cognitive Hierarchy:\n'
   for i, level in ipairs(self.cognitiveHierarchy) do
      str = str .. '    Level ' .. level.level .. ': ' .. level.description .. '\n'
   end
   str = str .. '}'
   return str
end
return nn.NestedMetaCognition
