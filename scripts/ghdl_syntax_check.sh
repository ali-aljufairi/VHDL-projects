#!/usr/bin/env bash
set -euo pipefail

# Syntax-only check for all VHDL files in this repo.
# This is intentionally lightweight: it does NOT require compiling dependencies in order.

ROOT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)

if ! command -v ghdl >/dev/null 2>&1; then
  echo "ghdl not found. Install it first (e.g., sudo apt-get install ghdl)." >&2
  exit 127
fi

cd "$ROOT_DIR"

mapfile -d '' FILES < <(find . -type f \( -iname '*.vhd' -o -iname '*.vhdl' \) -print0 | sort -z)

if [ "${#FILES[@]}" -eq 0 ]; then
  echo "No VHDL files found."
  exit 0
fi

FAIL=0
for f in "${FILES[@]}"; do
  # --std=08 is a good default for learning repos.
  if ! ghdl -s --std=08 "$f"; then
    echo "[FAIL] $f" >&2
    FAIL=1
  else
    echo "[OK]   $f"
  fi
done

exit "$FAIL"
