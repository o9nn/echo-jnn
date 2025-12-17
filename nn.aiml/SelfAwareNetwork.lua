local SelfAwareNetwork, parent = torch.class('nn.SelfAwareNetwork', 'nn.Container')

--[[
   SelfAwareNetwork: Wrapper that adds self-awareness to any neural network.
   
   This module wraps any existing neural network and adds:
   - Self-monitoring of activations and gradients
   - Awareness of learning dynamics
   - Adaptive processing based on self-knowledge
   - Integration with AIML conversational interface
   
   Parameters:
   - network: The base neural network to make self-aware
   - enableAIML: Whether to enable AIML conversational interface (default: true)
]]

function SelfAwareNetwork:__init(network, enableAIML)
   parent.__init(self)
   
   self.network = network or nn.Identity()
   self.enableAIML = (enableAIML ~= false) -- Default to true
   
   -- Self-awareness state
   self.selfAwareness = {
      activationHistory = {},
      gradientHistory = {},
      performanceMetrics = {
         forwardPasses = 0,
         backwardPasses = 0,
         averageActivation = 0,
         averageGradient = 0
      },
      learningDynamics = {
         learningRate = 0,
         convergence = 0,
         stability = 1.0
      },
      introspectionLog = {}
   }
   
   -- AIML interface (optional)
   if self.enableAIML then
      self.aiml = nn.MetaCognitiveAIML(self)
   end
   
   self.modules = {self.network}
   self.output = torch.Tensor()
   self.gradInput = torch.Tensor()
end

function SelfAwareNetwork:updateOutput(input)
   -- Forward pass with self-monitoring
   self.output = self.network:updateOutput(input)
   
   -- Monitor activations
   self:monitorActivations(self.output)
   
   -- Update performance metrics
   self.selfAwareness.performanceMetrics.forwardPasses = 
      self.selfAwareness.performanceMetrics.forwardPasses + 1
   
   -- Self-reflect periodically
   if self.selfAwareness.performanceMetrics.forwardPasses % 10 == 0 then
      self:selfReflect()
   end
   
   return self.output
end

function SelfAwareNetwork:updateGradInput(input, gradOutput)
   -- Backward pass with gradient monitoring
   self.gradInput = self.network:updateGradInput(input, gradOutput)
   
   -- Monitor gradients
   self:monitorGradients(self.gradInput)
   
   -- Update performance metrics
   self.selfAwareness.performanceMetrics.backwardPasses = 
      self.selfAwareness.performanceMetrics.backwardPasses + 1
   
   return self.gradInput
end

function SelfAwareNetwork:accGradParameters(input, gradOutput, scale)
   scale = scale or 1
   
   -- Adaptive learning based on self-awareness
   local adaptiveScale = scale * self.selfAwareness.learningDynamics.stability
   
   self.network:accGradParameters(input, gradOutput, adaptiveScale)
   
   -- Update learning dynamics
   self:updateLearningDynamics(gradOutput)
end

function SelfAwareNetwork:monitorActivations(activations)
   -- Monitor and analyze activations for self-awareness
   
   if activations:nElement() == 0 then
      return
   end
   
   local activationStats = {
      mean = activations:mean(),
      std = activations:std(),
      magnitude = torch.abs(activations):mean(),
      sparsity = (activations:eq(0):sum() / activations:nElement())
   }
   
   table.insert(self.selfAwareness.activationHistory, activationStats)
   
   -- Keep history manageable
   if #self.selfAwareness.activationHistory > 50 then
      table.remove(self.selfAwareness.activationHistory, 1)
   end
   
   -- Update average
   self.selfAwareness.performanceMetrics.averageActivation = activationStats.magnitude
end

function SelfAwareNetwork:monitorGradients(gradients)
   -- Monitor and analyze gradients for self-awareness
   
   if gradients:nElement() == 0 then
      return
   end
   
   local gradientStats = {
      mean = gradients:mean(),
      std = gradients:std(),
      magnitude = torch.abs(gradients):mean(),
      maxGrad = torch.abs(gradients):max()
   }
   
   table.insert(self.selfAwareness.gradientHistory, gradientStats)
   
   -- Keep history manageable
   if #self.selfAwareness.gradientHistory > 50 then
      table.remove(self.selfAwareness.gradientHistory, 1)
   end
   
   -- Update average
   self.selfAwareness.performanceMetrics.averageGradient = gradientStats.magnitude
end

function SelfAwareNetwork:updateLearningDynamics(gradOutput)
   -- Update self-awareness of learning dynamics
   
   local dynamics = self.selfAwareness.learningDynamics
   
   if gradOutput:nElement() > 0 then
      local gradMag = torch.abs(gradOutput):mean()
      
      -- Estimate learning rate (inverse of gradient magnitude)
      dynamics.learningRate = 1.0 / (gradMag + 1e-8)
      
      -- Check gradient stability
      if #self.selfAwareness.gradientHistory >= 2 then
         local prev = self.selfAwareness.gradientHistory[#self.selfAwareness.gradientHistory - 1]
         local curr = self.selfAwareness.gradientHistory[#self.selfAwareness.gradientHistory]
         
         -- Measure gradient variance for stability
         local variance = math.abs(curr.magnitude - prev.magnitude) / (prev.magnitude + 1e-8)
         dynamics.stability = math.max(0.5, math.min(1.5, 1.0 / (variance + 0.1)))
      end
      
      -- Estimate convergence (lower gradients = higher convergence)
      dynamics.convergence = math.max(0, math.min(1, 1.0 - gradMag))
   end
end

function SelfAwareNetwork:selfReflect()
   -- Periodic self-reflection on learning state
   
   local reflection = {
      timestamp = self.selfAwareness.performanceMetrics.forwardPasses,
      activationMagnitude = self.selfAwareness.performanceMetrics.averageActivation,
      gradientMagnitude = self.selfAwareness.performanceMetrics.averageGradient,
      stability = self.selfAwareness.learningDynamics.stability,
      convergence = self.selfAwareness.learningDynamics.convergence
   }
   
   -- Analyze learning state
   if reflection.gradientMagnitude < 0.001 then
      reflection.state = "converged"
   elseif reflection.stability < 0.7 then
      reflection.state = "unstable"
   elseif reflection.gradientMagnitude > 10 then
      reflection.state = "diverging"
   else
      reflection.state = "learning"
   end
   
   table.insert(self.selfAwareness.introspectionLog, reflection)
   
   -- Keep log manageable
   if #self.selfAwareness.introspectionLog > 20 then
      table.remove(self.selfAwareness.introspectionLog, 1)
   end
end

function SelfAwareNetwork:introspect()
   -- Provide detailed introspection of self-aware state
   
   local intro = {
      networkType = torch.type(self.network),
      forwardPasses = self.selfAwareness.performanceMetrics.forwardPasses,
      backwardPasses = self.selfAwareness.performanceMetrics.backwardPasses,
      currentActivation = self.selfAwareness.performanceMetrics.averageActivation,
      currentGradient = self.selfAwareness.performanceMetrics.averageGradient,
      learningDynamics = self.selfAwareness.learningDynamics,
      recentReflections = {}
   }
   
   -- Include recent self-reflections
   local reflCount = math.min(5, #self.selfAwareness.introspectionLog)
   for i = 1, reflCount do
      local idx = #self.selfAwareness.introspectionLog - reflCount + i
      intro.recentReflections[i] = self.selfAwareness.introspectionLog[idx]
   end
   
   return intro
end

function SelfAwareNetwork:converse(input, neuralInput)
   -- Conversational interface through AIML
   
   if not self.enableAIML then
      error("AIML interface not enabled for this network")
   end
   
   return self.aiml:processInput(input, neuralInput)
end

function SelfAwareNetwork:getAIML()
   return self.aiml
end

function SelfAwareNetwork:getSelfAwareness()
   return self.selfAwareness
end

function SelfAwareNetwork:__tostring__()
   local str = torch.type(self) .. ' {\n'
   str = str .. '  forwardPasses: ' .. self.selfAwareness.performanceMetrics.forwardPasses .. '\n'
   str = str .. '  backwardPasses: ' .. self.selfAwareness.performanceMetrics.backwardPasses .. '\n'
   str = str .. '  stability: ' .. string.format('%.4f', self.selfAwareness.learningDynamics.stability) .. '\n'
   str = str .. '  convergence: ' .. string.format('%.4f', self.selfAwareness.learningDynamics.convergence) .. '\n'
   
   if #self.selfAwareness.introspectionLog > 0 then
      local latest = self.selfAwareness.introspectionLog[#self.selfAwareness.introspectionLog]
      str = str .. '  currentState: ' .. latest.state .. '\n'
   end
   
   str = str .. '  AIML enabled: ' .. tostring(self.enableAIML) .. '\n'
   str = str .. '  base network:\n'
   str = str .. '    ' .. tostring(self.network):gsub('\n', '\n    ') .. '\n'
   str = str .. '}'
   return str
end
return nn.SelfAwareNetwork
