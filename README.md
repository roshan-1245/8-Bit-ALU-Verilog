# 8-Bit Arithmetic Logic Unit (ALU) using Verilog

## Overview

This project presents the design and verification of an **8-bit Arithmetic Logic Unit (ALU)** using Verilog HDL. The ALU performs 16 different operations, including arithmetic, logical, shift, rotate, and comparison operations.

A self-checking testbench is developed to verify the functionality of the ALU by comparing the actual outputs with expected results. The design is simulated using Xilinx Vivado, and waveform analysis is performed to validate the functionality.

## Project Highlights

- 8-bit combinational ALU design.
- Supports 16 different operations.
- Arithmetic operations.
- Logical operations.
- Shift and rotate operations.
- Comparison operations.
- Carry and Zero flag generation.
- Self-checking Verilog testbench.
- Directed and controlled-random testing.
- Edge-case verification, including division by zero.
- Simulation waveform analysis.

## Tools and Technologies

- **HDL:** Verilog
- **Design Tool:** Xilinx Vivado
- **Simulation:** Vivado Simulator
- **Waveform Analysis:** GTKWave
- **Verification:** Self-checking Testbench

## ALU Architecture

<img width="685" height="426" alt="472947_1_En_71_Fig1_HTML" src="https://github.com/user-attachments/assets/342347f1-74c8-4a3f-80af-cfe272d23aca" />


*Figure 1: 8-Bit ALU Architecture*

## Functional Description

The ALU takes two 8-bit input operands, A and B, and a 3-bit or wider operation-select signal, depending on the implemented version.

The selected operation is performed on the input operands, and the result is generated at the output.

### Main Operation Categories

| Operation Category | Description |
|---|---|
| Arithmetic|  Addition, subtraction, multiplication, division |
| Logical | AND, OR, XOR, NOT |
| Shift | Left and right shift |
| Rotate | Left and right rotation |
| Comparison | Greater than, less than, equality |

*Note: The exact operations and their selection codes are defined in the RTL source code.*

## RTL Design

The ALU is implemented using combinational logic. The operation-select signal determines which function is performed on the input operands.

**Main RTL file:**

```verilog
ALU.v
```

## Verification and Testbench

A self-checking testbench is developed to verify the ALU functionality.

**Testbench file:**

```verilog
ALU_tb.v
```

The testbench includes:

- Directed test cases for different ALU operations.
- Controlled-random input testing.
- Expected-output comparison.
- PASS and ERROR reporting.
- Edge-case testing.
- Division-by-zero handling.
- Signed and unsigned behavior verification.

### Simulation Result


<img width="1560" height="706" alt="Screenshot 2026-11-01 201251" src="https://github.com/user-attachments/assets/3d01b783-46c4-44c2-9dd4-4e0a307c5a49" />




### Waveform Analysis


<img width="1603" height="842" alt="Screenshot 2026-11-01 222505" src="https://github.com/user-attachments/assets/54070578-3855-4419-b16c-96722b213933" />




## Project Directory Structure

```text
8-Bit-ALU-Verilog/
│
├── RTL/
│   └── ALU.v
│
├── Testbench/
│   └── ALU_tb.v
│
├── images/
│   ├── alu_architecture.png
│   ├── alu_simulation_result.png
│   └── alu_waveform.png
│
└── README.md
```

## How to Run the Project

1. Open Xilinx Vivado.
2. Create a new Verilog project.
3. Add `ALU.v` under Design Sources.
4. Add `ALU_tb.v` under Simulation Sources.
5. Set `ALU_tb` as the simulation top module.
6. Select **Run Behavioral Simulation**.
7. Observe the output signals and verify the testbench results.
8. Analyze the waveform to check the ALU operations.

## Future Improvements

- Parameterized ALU supporting different data widths.
- Pipelined ALU architecture.
- FPGA hardware implementation.
- Timing and resource utilization analysis.
- Extended verification using SystemVerilog.

