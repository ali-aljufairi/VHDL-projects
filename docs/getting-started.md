# Getting Started (VHDL)

This repo has a lot of folders because it grew over time. This guide helps you start without getting lost.

## 1) Install tools (recommended: GHDL)
- Ubuntu/Debian:
  - `sudo apt-get update && sudo apt-get install -y ghdl gtkwave`

(If you use ModelSim/Questa from your university, that works too.)

## 2) Learn the minimum VHDL concepts first
If you’re completely new, focus on:
- Entity / architecture
- `signal` vs `variable`
- `process` + sensitivity list
- `std_logic` / `std_logic_vector`
- Clocked processes (`if rising_edge(clk) then ...`)
- Testbenches (drive inputs, check outputs)

## 3) Pick one project folder and run it
Start with **Projects/** because it’s the most consistent.

### A good pattern to look for
- design file(s): `*.vhd`
- optional package: `pkg.vhd`
- testbench: `tb_*.vhd`

### Example (adjust filenames to match the folder)
```bash
cd Projects/project9

ghdl -a --std=08 pkg.vhd alu.vhd lab2_part2.vhd tb_lab2_part2.vhd
ghdl -e --std=08 tb_lab2_part2
ghdl -r --std=08 tb_lab2_part2 --vcd=wave.vcd

gtkwave wave.vcd
```

## 4) If compilation order is confusing
That’s normal.

Rules of thumb:
- Compile packages first (e.g., `pkg.vhd`)
- Compile lower-level modules before top-level modules
- Compile the testbench last

If a folder is hard to run, open an issue and I can add a small `run.sh` or Makefile for that folder.
