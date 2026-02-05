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
> The repo contains many independent projects. Start with one folder and simulate it.

1) Install tools
- Ubuntu/Debian:
  - `sudo apt-get install ghdl gtkwave`

2) Pick a project with a testbench
For example (paths may vary):
- `Projects/project9/` contains `tb_*.vhd`

3) Run a simple syntax check (from repo root)
```bash
./scripts/ghdl_syntax_check.sh
```

4) Simulate one project (example)
```bash
cd Projects/project9
# Analyze
ghdl -a --std=08 pkg.vhd alu.vhd lab2_part2.vhd tb_lab2_part2.vhd
# Elaborate + run
ghdl -e --std=08 tb_lab2_part2
ghdl -r --std=08 tb_lab2_part2 --vcd=wave.vcd
# View
gtkwave wave.vcd
```

## Repository map
- **Projects/** — main set of course-style projects (often with testbenches)
- **LABS/** — lab exercises and lab submissions
- **Codes to learn from/** — older material, exam solutions, and assorted references
- **scripts/** — helper scripts (GHDL checks, etc.)
- **docs/** — extra documentation (CI notes, conventions)

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
