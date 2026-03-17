#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep1, rep2, or rep3 before running.
# Fit the centered trajectory to AF JmjC C-alpha atoms.

TPR_FILE="md_repX_60.tpr"
XTC_FILE="md_center_ligand.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="md_fit_ligand.xtc"

printf "22\n0\n" | gmx trjconv \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -o "$OUTPUT_FILE" \
  -fit rot+trans

echo "Created ${OUTPUT_FILE}"
