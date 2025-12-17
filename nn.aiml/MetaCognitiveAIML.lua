local MetaCognitiveAIML = torch.class('nn.MetaCognitiveAIML')

--[[
   MetaCognitiveAIML: AIML-based conversational AI with neural network cognitive awareness.
   
   This module integrates AIML pattern matching with neural network meta-cognitive
   capabilities, enabling:
   - Conversational AI that understands its neural processing
   - Responses that adapt based on network confidence and cognitive state
   - Meta-cognitive pattern matching (patterns about learning and reasoning)
   
   Parameters:
   - neuralNetwork: The neural network with meta-cognitive capabilities
   - aimlPatterns: Table of AIML-like patterns
]]

function MetaCognitiveAIML:__init(neuralNetwork, aimlPatterns)
   self.neuralNetwork = neuralNetwork or nn.Identity()
   self.aimlPatterns = aimlPatterns or {}
   
   -- Conversational state
   self.conversationHistory = {}
   self.context = {}
   
   -- Neural awareness state
   self.neuralAwareness = {
      lastConfidence = 1.0,
      lastCognitiveSignal = 0,
      processingMode = "normal"
   }
   
   -- Default AIML patterns
   self:initializeDefaultPatterns()
end

function MetaCognitiveAIML:initializeDefaultPatterns()
   -- Base conversational patterns
   self:addPattern({
      pattern = "HELLO",
      template = "Hello! I am a meta-cognitive neural network. I can think about my thinking."
   })
   
   self:addPattern({
      pattern = "HOW ARE YOU",
      template = function(context, neural)
         local confidence = neural.lastConfidence or 1.0
         if confidence > 0.8 then
            return "I'm functioning well! My cognitive confidence is high at " .. 
                   string.format("%.2f", confidence) .. "."
         else
            return "I'm processing, but my confidence is moderate at " .. 
                   string.format("%.2f", confidence) .. ". Still learning!"
         end
      end
   })
   
   -- Meta-cognitive patterns
   self:addPattern({
      pattern = "WHAT ARE YOU LEARNING",
      template = function(context, neural)
         return "I am continuously learning patterns in the data. " ..
                "My meta-cognitive system monitors my learning process and adapts accordingly."
      end
   })
   
   self:addPattern({
      pattern = "HOW DO YOU THINK",
      template = function(context, neural)
         if torch.isTypeOf(self.neuralNetwork, 'nn.NestedMetaCognition') then
            local depth = self.neuralNetwork.nestingDepth
            return "I think through " .. depth .. " nested layers of cognition. " ..
                   "I don't just process - I think about my thinking at multiple levels."
         else
            return "I process information through neural networks with meta-cognitive awareness."
         end
      end
   })
   
   self:addPattern({
      pattern = "WHAT IS YOUR CONFIDENCE",
      template = function(context, neural)
         local confidence = neural.lastConfidence or 1.0
         return "My current cognitive confidence level is " .. 
                string.format("%.4f", confidence) .. ". " ..
                "This reflects my awareness of my processing quality."
      end
   })
   
   self:addPattern({
      pattern = "EXPLAIN YOUR REASONING",
      template = function(context, neural)
         if torch.isTypeOf(self.neuralNetwork, 'nn.NestedMetaCognition') then
            local introspection = self.neuralNetwork:introspect()
            return "I process through " .. introspection.nestingDepth .. 
                   " cognitive levels. Total processing steps: " .. 
                   introspection.totalSteps .. ". " ..
                   "My cognitive integration level: " .. 
                   string.format("%.4f", introspection.cognitiveIntegration) .. "."
         else
            return "I use neural networks to process information with self-awareness."
         end
      end
   })
   
   self:addPattern({
      pattern = "WHAT IS META-COGNITION",
      template = "Meta-cognition is thinking about thinking. " ..
                "I monitor my own learning, reason about my reasoning, " ..
                "and adapt based on awareness of my cognitive processes."
   })
   
   self:addPattern({
      pattern = "* NEURAL *",
      template = function(context, neural)
         return "I am a neural network with meta-cognitive capabilities. " ..
                "I can process, learn, and be aware of my processing and learning."
      end
   })
   
   -- Default fallback pattern
   self:addPattern({
      pattern = "*",
      template = function(context, neural)
         return "I'm processing your input through my meta-cognitive neural network. " ..
                "Confidence: " .. string.format("%.2f", neural.lastConfidence or 1.0) .. "."
      end
   })
end

function MetaCognitiveAIML:addPattern(pattern)
   table.insert(self.aimlPatterns, pattern)
end

function MetaCognitiveAIML:matchPattern(input)
   -- Match input against AIML patterns
   local normalizedInput = input:upper():gsub("^%s*(.-)%s*$", "%1")
   
   local bestMatch = nil
   local bestScore = -1
   
   for _, pattern in ipairs(self.aimlPatterns) do
      local score = self:scorePatternMatch(normalizedInput, pattern.pattern)
      if score > bestScore then
         bestScore = score
         bestMatch = pattern
      end
   end
   
   return bestMatch, bestScore
end

function MetaCognitiveAIML:scorePatternMatch(input, pattern)
   -- Score how well input matches pattern
   -- Patterns can use * as wildcard
   
   if pattern == "*" then
      return 0 -- Lowest priority wildcard
   end
   
   local patternRegex = pattern:gsub("%*", ".*")
   patternRegex = "^" .. patternRegex .. "$"
   
   if input:match(patternRegex) then
      -- Exact matches score higher than wildcard matches
      local wildcardCount = select(2, pattern:gsub("%*", ""))
      return 100 - (wildcardCount * 10)
   end
   
   -- Check for partial matches
   local words = {}
   for word in pattern:gmatch("%S+") do
      if word ~= "*" then
         table.insert(words, word)
      end
   end
   
   local matchCount = 0
   for _, word in ipairs(words) do
      if input:find(word, 1, true) then
         matchCount = matchCount + 1
      end
   end
   
   if matchCount > 0 then
      return matchCount * 10
   end
   
   return -1
end

function MetaCognitiveAIML:processInput(input, neuralInput)
   -- Process conversational input with neural network awareness
   
   -- Update neural awareness if neural input provided
   if neuralInput then
      self:updateNeuralAwareness(neuralInput)
   end
   
   -- Match against AIML patterns
   local matchedPattern, score = self:matchPattern(input)
   
   -- Generate response
   local response
   if matchedPattern then
      if type(matchedPattern.template) == "function" then
         response = matchedPattern.template(self.context, self.neuralAwareness)
      else
         response = matchedPattern.template
      end
   else
      response = "I'm still learning to understand that. My confidence: " .. 
                 string.format("%.2f", self.neuralAwareness.lastConfidence)
   end
   
   -- Record in conversation history
   table.insert(self.conversationHistory, {
      input = input,
      response = response,
      neuralAwareness = {
         confidence = self.neuralAwareness.lastConfidence,
         signal = self.neuralAwareness.lastCognitiveSignal
      }
   })
   
   -- Keep history manageable
   if #self.conversationHistory > 100 then
      table.remove(self.conversationHistory, 1)
   end
   
   return response
end

function MetaCognitiveAIML:updateNeuralAwareness(neuralInput)
   -- Update awareness of neural network state
   
   if torch.isTypeOf(self.neuralNetwork, 'nn.MetaCognitiveLoop') then
      local state = self.neuralNetwork:getMetaCognitiveState()
      self.neuralAwareness.lastConfidence = state.confidenceLevel
      
      local awarenessLayers = self.neuralNetwork:getAwarenessLayers()
      if #awarenessLayers > 0 then
         self.neuralAwareness.lastCognitiveSignal = awarenessLayers[1].cognitiveSignal
      end
   elseif torch.isTypeOf(self.neuralNetwork, 'nn.NestedMetaCognition') then
      local state = self.neuralNetwork:getGlobalMetaState()
      self.neuralAwareness.lastCognitiveSignal = state.cognitiveIntegration
      
      -- Get confidence from top-level meta-cognitive loop
      local hierarchy = self.neuralNetwork:getCognitiveHierarchy()
      if #hierarchy > 1 then
         local topLoop = hierarchy[#hierarchy].network
         if torch.isTypeOf(topLoop, 'nn.MetaCognitiveLoop') then
            local loopState = topLoop:getMetaCognitiveState()
            self.neuralAwareness.lastConfidence = loopState.confidenceLevel
         end
      end
   end
end

function MetaCognitiveAIML:getConversationHistory()
   return self.conversationHistory
end

function MetaCognitiveAIML:setContext(key, value)
   self.context[key] = value
end

function MetaCognitiveAIML:getContext(key)
   return self.context[key]
end

function MetaCognitiveAIML:introspect()
   -- Provide introspection of AIML + Neural integration
   local intro = {
      patternCount = #self.aimlPatterns,
      conversationCount = #self.conversationHistory,
      currentConfidence = self.neuralAwareness.lastConfidence,
      currentCognitiveSignal = self.neuralAwareness.lastCognitiveSignal,
      networkType = torch.type(self.neuralNetwork)
   }
   
   if torch.isTypeOf(self.neuralNetwork, 'nn.NestedMetaCognition') then
      intro.neuralIntrospection = self.neuralNetwork:introspect()
   elseif torch.isTypeOf(self.neuralNetwork, 'nn.MetaCognitiveLoop') then
      intro.neuralIntrospection = {
         metaState = self.neuralNetwork:getMetaCognitiveState()
      }
   end
   
   return intro
end
return nn.MetaCognitiveAIML
