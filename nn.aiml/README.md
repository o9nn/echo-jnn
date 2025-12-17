[![Build Status](https://travis-ci.org/torch/nn.svg?branch=master)](https://travis-ci.org/torch/nn)
<a name="nn.dok"></a>
# Neural Network Package #

This package provides an easy and modular way to build and train simple or complex neural networks using [Torch](https://github.com/torch/torch7/blob/master/README.md):
 * Modules are the bricks used to build neural networks. Each are themselves neural networks, but can be combined with other networks using containers to create complex neural networks:
   * [Module](doc/module.md#nn.Module): abstract class inherited by all modules;
   * [Containers](doc/containers.md#nn.Containers): composite and decorator classes like [`Sequential`](doc/containers.md#nn.Sequential), [`Parallel`](doc/containers.md#nn.Parallel), [`Concat`](doc/containers.md#nn.Concat) and [`NaN`](doc/containers.md#nn.NaN);
   * [Transfer functions](doc/transfer.md#nn.transfer.dok): non-linear functions like [`Tanh`](doc/transfer.md#nn.Tanh) and [`Sigmoid`](doc/transfer.md#nn.Sigmoid);
   * [Simple layers](doc/simple.md#nn.simplelayers.dok): like [`Linear`](doc/simple.md#nn.Linear), [`Mean`](doc/simple.md#nn.Mean), [`Max`](doc/simple.md#nn.Max) and [`Reshape`](doc/simple.md#nn.Reshape);
   * [Table layers](doc/table.md#nn.TableLayers): layers for manipulating `table`s like [`SplitTable`](doc/table.md#nn.SplitTable), [`ConcatTable`](doc/table.md#nn.ConcatTable) and [`JoinTable`](doc/table.md#nn.JoinTable);
   * [Convolution layers](doc/convolution.md#nn.convlayers.dok): [`Temporal`](doc/convolution.md#nn.TemporalModules),  [`Spatial`](doc/convolution.md#nn.SpatialModules) and [`Volumetric`](doc/convolution.md#nn.VolumetricModules) convolutions;
 * Criterions compute a gradient according to a given loss function given an input and a target:
   * [Criterions](doc/criterion.md#nn.Criterions): a list of all criterions, including [`Criterion`](doc/criterion.md#nn.Criterion), the abstract class;
   * [`MSECriterion`](doc/criterion.md#nn.MSECriterion): the Mean Squared Error criterion used for regression;
   * [`ClassNLLCriterion`](doc/criterion.md#nn.ClassNLLCriterion): the Negative Log Likelihood criterion used for classification;
 * **Meta-Cognitive and AIML Integration** (NEW):
   * [NN.AIML Documentation](doc/metacognitive_aiml.md): Complete guide to meta-cognitive neural networks with AIML integration
   * [`MetaCognitiveLoop`](doc/metacognitive_aiml.md#metacognitiveloop): Neural networks that monitor their own learning
   * [`NestedMetaCognition`](doc/metacognitive_aiml.md#nestedmetacognition): Hierarchical meta-cognitive processing (learning about learning, reasoning about reasoning)
   * [`SelfAwareNetwork`](doc/metacognitive_aiml.md#selfawarenetwork): Self-monitoring neural networks with AIML conversational interface
   * [`MetaCognitiveAIML`](doc/metacognitive_aiml.md#metacognitiveaiml): AIML pattern-based conversational AI with neural awareness
 * Additional documentation:
   * [Overview](doc/overview.md#nn.overview.dok) of the package essentials including modules, containers and training;
   * [Training](doc/training.md#nn.traningneuralnet.dok): how to train a neural network using [`StochasticGradient`](doc/training.md#nn.StochasticGradient);
   * [Testing](doc/testing.md): how to test your modules.
   * [Experimental Modules](https://github.com/clementfarabet/lua---nnx/blob/master/README.md): a package containing experimental modules and criteria.

## Quick Start with NN.AIML Meta-Cognitive Bot-Net

```lua
require 'nn'

-- Create a base neural network
local baseNet = nn.Sequential()
   :add(nn.Linear(10, 20))
   :add(nn.Tanh())
   :add(nn.Linear(20, 10))

-- Add nested meta-cognitive loops (3 levels: cognition, meta-cognition, meta-meta-cognition)
local metaCognitiveNet = nn.NestedMetaCognition(baseNet, 3)

-- Make it self-aware with AIML conversational interface
local selfAwareNet = nn.SelfAwareNetwork(metaCognitiveNet, true)

-- Use like any neural network
local input = torch.randn(5, 10)
local output = selfAwareNet:forward(input)

-- Converse with the neural network!
local response = selfAwareNet:converse("HOW ARE YOU", input)
print(response) -- "I'm functioning well! My cognitive confidence is high at 0.95."

-- Introspect its cognitive state
local intro = selfAwareNet:introspect()
print("Learning stability: " .. intro.learningDynamics.stability)
print("Current state: " .. intro.recentReflections[1].state)
```

See [examples/metacognitive_botnet.lua](examples/metacognitive_botnet.lua) for a complete demonstration.
