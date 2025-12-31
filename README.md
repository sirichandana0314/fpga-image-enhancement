# FPGA-Based Basic Image Processing Using Verilog

## Project Description
This project implements fundamental image preprocessing operations
using Verilog HDL. The objective is to demonstrate how common
image processing techniques can be mapped to hardware logic
for real-time execution.

## Implemented Modules
- Grayscale Conversion
- Brightness Adjustment with Saturation
- Thresholding
- Downsampling
- Contrast Stretching
- Smoothing Filter

## Architecture
The system is designed as a modular pipeline where each image
processing operation is implemented as an independent RTL module.
A 3-bit select line allows dynamic selection of intermediate outputs
for testing and debugging.

![Block Diagram](docs/block_diagram.png)

## Tools Used
- Verilog HDL
- ModelSim / Vivado (Simulation)

## Results
Simulation waveforms confirm correct pixel transformations across
all processing stages, including proper saturation handling.

![Waveform](docs/waveform.png)

## Applications
- FPGA-based image enhancement
- Medical imaging preprocessing
- Surveillance and vision systems

## Limitations
- Single-pixel processing
- No frame buffers or convolution kernels

## Future Scope
- Line buffers for full image processing
- Edge detection and advanced filters
- FPGA implementation on Zynq SoC

