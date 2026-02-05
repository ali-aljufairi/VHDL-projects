# Learning Path (step-by-step)

If you’re new to VHDL, use this repo in a **staircase**.
Start small, then climb.

## Step 0 — Setup
- Install GHDL + GTKWave (recommended) and read:
  - **docs/getting-started.md**

## Step 1 — Read small designs (no pressure)
Goal: get comfortable reading entity/architecture + signals + processes.
- Start with small single-file designs in **Projects/** (or simple files in **Codes to learn from/**).

Tip: even if a folder has no testbench, you can still learn by reading + adding your own tiny TB later.

## Step 2 — Packages + constants (realistic VHDL)
Goal: understand how a project shares constants/types.
- Look at projects that include a `pkg.vhd`.

## Step 3 — Testbenches (how you actually learn)
Goal: learn the “tight loop”: edit → simulate → view waveforms.
Recommended folders (because they include `tb_*.vhd`):
- `Projects/alu-registerfile/` (ALU + small register array + testbench)
- `Projects/decrementer-zero-flag/` (decrementer + zero flag + testbench)
- `Projects/ram-read-rise-write-fall/` (RAM: read on rising edge, write on falling edge + testbench)
- `Projects/ram-single-clock-tb/` (RAM + testbench)

How to run (example):
```bash
cd Projects/alu-registerfile

ghdl -a --std=08 pkg.vhd alu.vhd lab2_part2.vhd tb_lab2_part2.vhd

ghdl -e --std=08 tb_lab2_part2

ghdl -r --std=08 tb_lab2_part2 --vcd=wave.vcd

gtkwave wave.vcd
```

## Step 4 — “Bigger” top modules
Goal: learn top-level wiring + hex/7-seg helpers.
- `Projects/top-hex2led-variant-a/`, `Projects/top-hex2led-variant-b/`, `Projects/top-hex2led-variant-c/`
  - contain `top.vhd` / `Top-mod.vhd` and `Hex2LED.vhd`

## Step 5 — Clean up / improve (best way to learn)
Pick one folder and improve it:
- add a short README
- add a testbench
- add comments explaining what each signal does

If you tell me what order your course follows (combinational → sequential → FSM → etc.), I can tailor this learning path more tightly.
