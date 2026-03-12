#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep1, rep2, or rep3 before running.
# Remove PBC jumps from the full system trajectory.

TPR_FILE="md_repX.tpr"
XTC_FILE="md_repX.xtc"
OUTPUT_FILE="md_nojump_ligand.xtc"

printf "0\n" | gmx trjconv \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -o "$OUTPUT_FILE" \
  -pbc nojump

echo "Created ${OUTPUT_FILE}"
