#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep1, rep2, or rep3 before running.
# Center the trajectory on AF JmjC and reconstruct whole molecules.

TPR_FILE="md_repX_60.tpr"
XTC_FILE="md_nojump_ligand.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="md_center_ligand.xtc"

printf "21\n0\n" | gmx trjconv \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -o "$OUTPUT_FILE" \
  -center \
  -pbc mol \
  -ur compact

echo "Created ${OUTPUT_FILE}"
