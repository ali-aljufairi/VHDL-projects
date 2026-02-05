# Projects

This folder contains the main set of VHDL mini-projects (often course-style tasks).

## Typical contents
- One or more `*.vhd` design files
- Sometimes a shared `pkg.vhd`
- Often a testbench named like `tb_*.vhd`

## Suggested workflow (GHDL)
From a project directory:
```bash
# 1) Syntax check (optional)
for f in *.vhd *.vhdl; do ghdl -s --std=08 "$f"; done

# 2) Analyze (compile)
ghdl -a --std=08 *.vhd

# 3) Elaborate + run a testbench (replace with actual tb name)
ghdl -e --std=08 tb_name
ghdl -r --std=08 tb_name --vcd=wave.vcd
```

If `*.vhd` includes files that shouldn't be compiled together, compile explicitly in the right order instead of using `*.vhd`.
