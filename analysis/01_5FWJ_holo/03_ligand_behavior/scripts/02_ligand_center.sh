#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep1, rep2, or rep3 before running.
# Center the trajectory on Chain_B and reconstruct whole molecules.
# The documented holo trajectory-preparation workflow was reconstructed from rep2.

TPR_FILE="md_repX_60.tpr"
XTC_FILE="md_nojump_ligand.xtc"
INDEX_FILE="jmjc_2.ndx"
OUTPUT_FILE="md_center_ligand.xtc"

printf "24\n0\n" | gmx trjconv \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -o "$OUTPUT_FILE" \
  -center \
  -pbc mol \
  -ur compact

echo "Created ${OUTPUT_FILE}"
