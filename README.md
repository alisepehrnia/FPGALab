# 🔌 FPGALab – FPGA Lab Exercises & Exams

A collection of **FPGA lab exercises and exam solutions** implemented in **VHDL** using **Xilinx ISE Design Suite**.  
The repository covers fundamental digital-design building blocks—logic gates, multiplexers, counters, shift registers, an ALU, and a digital watch—along with complete Xilinx ISE projects and simulation testbenches.

> **Note:** This is an **educational/hardware-design repository**. The designs target FPGA devices and are intended to be opened, synthesized, and simulated in Xilinx ISE (or a compatible VHDL simulator).

---

## 📖 Overview

`FPGALab` contains the VHDL source code, testbenches, and Xilinx ISE project files for a series of FPGA laboratory assignments and exam questions.  
Each folder represents a separate exercise or exam question.  
The projects range from a simple 1-bit AND gate to a multi-function digital watch and an 8-bit ALU, making the repository useful for:

- Learning VHDL syntax and FPGA design flow.
- Understanding combinational and sequential logic.
- Practicing simulation and synthesis with Xilinx ISE.
- Referencing complete ISE project structures (`.xise`, `.gise`, simulation outputs).

---

## 📂 Projects Included

| Folder | Description |
|--------|-------------|
| **`and1bit`** | A 1-bit AND gate. The simplest combinational-logic example. |
| **`mux4_8`** | A 4-to-8 multiplexer (or 4-bit wide 8-to-1 mux). Includes `MAIN.vhd` and a testbench `TEST.vhd`. |
| **`CNTR`** | A counter design (likely a binary or BCD counter). |
| **`Counter`** | Another counter project, with a full Xilinx ISE project structure. |
| **`Excersise3(1DigitBCDCounter)`** | A **1-digit BCD counter** (counts 0–9). Exercise 3. |
| **`Tamrin3`** | A **4-bit BCD counter** (counts 0–9 and rolls over). `MAIN.vhd` implements a modulo-10 counter with synchronous reset. “Tamrin” is Persian for “exercise.” Functionally equivalent to Exercise 3 (see note below). |
| **`UNISHR`** | A **4-bit universal shift register** with control signals `CTRL(1:0)` for hold, shift-right, shift-left, and parallel load. |
| **`UniShiftRegister`** | A second universal shift-register implementation with a complete ISE project. |
| **`Watch`** | A **digital watch/clock** design. |
| **`WATCH2`** | An alternative or updated version of the digital watch. |
| **`exam/q2`** | Solution to **exam question 2** — an **8-bit ALU** (see below). |
| **`exam/q3`** | Solution to **exam question 3** — a **4-bit up/down counter** (see below). |

### Additional Files

| File | Description |
|------|-------------|
| `1.png`, `2.png`, `3.png` | Screenshots (likely simulation waveforms, RTL schematics, or block diagrams). |
| `README.md` | This document. |

---

## 🎓 Exam Solutions (exam/q2 & exam/q3)

The `exam/` directory contains VHDL solutions to two exam questions.  
The original exam paper is **not** stored in the repository, so the question statements below are **reconstructed from the implemented VHDL behaviour**.

### Exam Question 2 – 8-bit ALU

**Folder:** `exam/q2`  
**Top-level entity:** `MAIN.vhd`  
**Inputs:** `RIN0` (8-bit), `RIN1` (8-bit), `CNT` (3-bit control)  
**Output:** `ROUT` (8-bit)

> **Reconstructed question:**  
> *Design an 8-bit ALU in VHDL with two 8-bit inputs (`RIN0`, `RIN1`), an 8-bit output (`ROUT`), and a 3-bit control signal (`CNT`). The ALU must perform the following operations depending on `CNT`:*
>
> | `CNT` | Operation |
> |-------|-----------|
> | `000` | `ROUT = RIN0 + 1` |
> | `001` | `ROUT = RIN1 + 1` |
> | `010` | `ROUT = RIN0 + RIN1` |
> | `011` | `ROUT = RIN0 - RIN1` |
> | `100` | `ROUT = RIN0 AND RIN1` |
> | `101` | `ROUT = RIN0 OR RIN1` |
> | `110` | `ROUT = RIN0` shifted left by 1 |
> | `111` | `ROUT = RIN0` shifted right by 1 |

### Exam Question 3 – 4-bit Up/Down Counter with Overflow

**Folder:** `exam/q3`  
**Top-level entity:** `MAIN.vhd`  
**Inputs:** `CLK`, `RESET` (synchronous, active-high), `CNT` (direction: `'1'` = up, `'0'` = down)  
**Outputs:** `XOUT` (4-bit), `OVF` (overflow flag)

> **Reconstructed question:**  
> *Design a 4-bit synchronous up/down counter in VHDL with the following signals:*
> - `CLK` – clock input (rising-edge triggered)
> - `RESET` – synchronous reset (active-high); resets the counter to `"0000"`
> - `CNT` – direction control (`'1'` = count up, `'0'` = count down)
> - `XOUT` – 4-bit counter output
> - `OVF` – overflow flag, asserted `'1'` when the counter reaches `"1111"`
>
> *The counter must update on the rising edge of `CLK`. When `RESET` is high, `XOUT` must be `"0000"` regardless of the clock.*

> ⚠️ **Caveat:** The repository only stores the solutions, not the original exam paper. The statements above are the most direct interpretation of the VHDL behaviour. Consult the course materials or the repository owner for the exact wording.

---

## 🛠️ Technologies & Tools

| Item | Details |
|------|---------|
| **HDL** | VHDL (IEEE `STD_LOGIC_1164`, `NUMERIC_STD`, `UNISIM`) |
| **IDE / Toolchain** | Xilinx ISE Design Suite |
| **Simulator** | ISim (bundled with Xilinx ISE) |
| **Project formats** | `.xise` (ISE project), `.gise` (ISE generated project), `.lso`, `.cmd_log`, `.ngc`, etc. |
| **Source files** | `.vhd` (VHDL design and testbench files) |

---

## 🚀 Getting Started

### Prerequisites

- **Xilinx ISE Design Suite** (any version compatible with the project files; these are older ISE projects, so ISE 14.x is a safe choice).
- Alternatively, any **VHDL simulator** (ModelSim, GHDL, Vivado Simulator) for the `.vhd` files—though the `.xise` projects are ISE-specific.

### Opening a Project

1. **Clone the repository**
   ```bash
   git clone https://github.com/alisepehrnia/FPGALab.git
   cd FPGALab
2. **Open each .xise project file in Xilinx ISE Design Suite**
