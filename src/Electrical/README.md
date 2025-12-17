# Electrical Module

## Overview

The Electrical module provides comprehensive electrical circuit modeling capabilities for both analog and digital systems. It enables the construction of complex electrical networks and their integration with cognitive computational architectures.

## Structure

### Analog Subdirectory
Analog electrical components and circuits:
- Resistors, capacitors, inductors
- Voltage and current sources
- Operational amplifiers
- Diodes and transistors
- AC/DC circuits
- Filter networks

### Digital Subdirectory
Digital logic and circuits:
- Logic gates (AND, OR, NOT, XOR, etc.)
- Flip-flops and latches
- Counters and registers
- Digital signal processing elements
- Clock generators

### Core Module (`Electrical.jl`)
Main module definition and exports

### Utilities (`utils.jl`)
Helper functions for electrical modeling:
- Circuit analysis utilities
- Component connection helpers
- Parameter conversion functions
- Validation and error checking

## Usage

```julia
using ModelingToolkitStandardLibrary.Electrical

# Create a simple RC circuit
@named resistor = Resistor(R=1000.0)  # 1kΩ
@named capacitor = Capacitor(C=1e-6)   # 1μF
@named voltage_source = VoltageSource(V=5.0)

# Build and simulate the circuit
# ... (connection and simulation code)
```

## Integration with Echo-JNN

The Electrical module can be integrated with the cognitive architecture for:

### Neuromorphic Computing
- Analog neural network implementations
- Spiking neuron models using electrical circuits
- Memristor-based learning systems

### Hybrid Systems
- Combining electrical dynamics with cognitive processes
- Hardware-in-the-loop cognitive systems
- Physical embodiment of computational models

### Bio-Inspired Circuits
- Neural oscillators
- Central pattern generators
- Adaptive resonance circuits

## Applications

1. **Cognitive Hardware Modeling**
   - Model physical implementations of cognitive architectures
   - Simulate neuromorphic chips and circuits

2. **Energy-Aware Computing**
   - Analyze power consumption of cognitive systems
   - Optimize energy efficiency

3. **Signal Processing**
   - Analog preprocessing for cognitive inputs
   - Sensor interface modeling

## See Also

- [DeepTreeEcho](../DeepTreeEcho/README.md) - Cognitive architecture
- [Mechanical](../Mechanical/README.md) - Mechanical systems
- [Thermal](../Thermal/README.md) - Thermal systems
