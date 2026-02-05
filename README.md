# VHDL Projects (learning repo)

A collection of **VHDL labs, mini-projects, and reference code**.
This repo is meant to be practical: open a folder, run a simulation, learn a concept.

## Who this is for
- Students taking a digital design / HDL course
- Self-learners practicing VHDL (combinational logic, sequential logic, testbenches, packages)
- Anyone who wants small, readable examples

## Recommended toolchain
### Option A (recommended): GHDL (open source)
- Install **GHDL**
- Optional: **GTKWave** for viewing waveforms

### Option B: ModelSim / Questa
If your university/work uses it, you can run most designs there too.

## Quick start (GHDL)
If you’re new, start here:
- **docs/getting-started.md**
- **docs/learning-path.md** (the staircase)

1) Install tools
- Ubuntu/Debian:
  - `sudo apt-get install ghdl gtkwave`

2) Pick a project with a testbench
Example:
- `Projects/alu-registerfile/` contains `tb_*.vhd`

3) Simulate one project (example)
```bash
cd Projects/alu-registerfile
# Analyze
ghdl -a --std=08 pkg.vhd alu.vhd lab2_part2.vhd tb_lab2_part2.vhd
# Elaborate + run
ghdl -e --std=08 tb_lab2_part2
ghdl -r --std=08 tb_lab2_part2 --vcd=wave.vcd
# View
gtkwave wave.vcd
```

## Repository map
- **Projects/** — the best place to start (most consistent)
- **LABS/** — lab exercises/submissions
- **Codes to learn from/** — older material/exam solutions (less consistent)
- **scripts/** — helper scripts
- **docs/** — beginner docs and navigation help

## Conventions (lightweight)
- Most VHDL here targets **VHDL-2008** (`--std=08`).
- If you add new code:
  - Prefer clear entity/architecture names
  - Include a short comment at the top: purpose + how to run
  - If possible, include a `tb_*.vhd` testbench

## Contributing
PRs are welcome — even small fixes like typos, clearer READMEs, or adding a testbench.
See **CONTRIBUTING.md**.

## License
MIT (see **LICENSE**).
