# 🚀 Single-Cycle 32-bit RISC-V Processor (Verilog HDL)

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![Vivado](https://img.shields.io/badge/Tool-Xilinx%20Vivado-orange)
![ISA](https://img.shields.io/badge/Architecture-RV32I-success)
![License](https://img.shields.io/badge/License-MIT-green)

## Overview

This project presents the design and implementation of a **32-bit Single-Cycle RISC-V Processor** using **Verilog HDL**. The processor is based on the **RV32I Instruction Set Architecture (ISA)** and has been developed and simulated using **Xilinx Vivado**.

The processor executes each instruction within a single clock cycle and includes all fundamental datapath components required for instruction execution.

---

## Features

- 32-bit Single-Cycle CPU
- RV32I Instruction Set
- Arithmetic Logic Unit (ALU)
- Register File (32 × 32)
- Instruction Memory
- Data Memory
- Immediate Generator
- Main Control Unit
- ALU Decoder
- Program Counter
- Multiplexers
- Testbench Included
- Vivado Compatible

---

## Project Structure

```
single-cycle-riscv-processor-verilog
│
├── README.md
├── LICENSE
├── CHANGELOG.md
├── CONTRIBUTING.md
├── SECURITY.md
├── CODE_OF_CONDUCT.md
├── .gitignore
│
├── src
├── tb
├── docs
├── images
└── results
```

---

## Supported Instructions

| Instruction | Status |
|------------|--------|
| ADD | ✔ |
| SUB | ✔ |
| AND | ✔ |
| OR | ✔ |
| XOR | ✔ |
| ADDI | ✔ |
| LW | ✔ |
| SW | ✔ |
| BEQ | ✔ |

*(Update this table if your implementation supports additional instructions such as JAL or JALR.)*

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Git
- GitHub

---

## How to Simulate

1. Create a Vivado RTL Project.
2. Add all Verilog source files.
3. Add `memfile.mem`.
4. Add the testbench.
5. Set `Single_Cycle_Top_Tb` as Simulation Top.
6. Run Behavioral Simulation.

---

## Future Improvements

- Five-stage Pipeline
- Hazard Detection Unit
- Data Forwarding
- Cache Memory
- Interrupt Support
- CSR Instructions

---

## Author

**Vishu Sharma**

B.Tech Electronics & Communication Engineering

Motilal Nehru National Institute of Technology Allahabad

---

## License

This project is licensed under the MIT License.
