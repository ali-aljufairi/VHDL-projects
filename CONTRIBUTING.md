# Contributing

Thanks for helping improve this VHDL learning repo.

## What contributions are useful
- Fixing typos / improving explanations in READMEs
- Adding a short comment header to files (what it does + how to run)
- Adding a **testbench** (`tb_*.vhd`) for an existing design
- Adding a small example project that demonstrates one concept
- Improving scripts/CI for easier checks

## Ground rules
- **Do not delete existing content** (unless it is clearly accidental/duplicate and discussed in the PR)
- Keep code style simple and readable
- Prefer **VHDL-2008** unless a folder clearly targets another standard

## How to submit
1. Fork the repo
2. Create a branch: `git checkout -b your-change`
3. Make your change
4. If you can, run:
   - `./scripts/ghdl_syntax_check.sh`
5. Open a PR with:
   - what you changed
   - how to reproduce / simulate (if code)

## Notes for new folders
If you add a new top-level folder, include a short README explaining what it is and how to run it.
