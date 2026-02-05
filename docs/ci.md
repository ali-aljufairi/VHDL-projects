# CI (GitHub Actions)

This repo includes a minimal GitHub Actions workflow that runs **syntax-only** checks using GHDL.

Why syntax-only?
- The repo contains many independent projects.
- Full compilation/elaboration requires knowing each project's intended compile order and dependencies.

What the workflow does
- Installs `ghdl` on Ubuntu
- Runs `./scripts/ghdl_syntax_check.sh`

If you want stronger CI later
- Add per-project `Makefile` / `run.sh` so CI can compile and run specific testbenches.
- Or add a small manifest file (list of projects + file order + top-level testbench).
