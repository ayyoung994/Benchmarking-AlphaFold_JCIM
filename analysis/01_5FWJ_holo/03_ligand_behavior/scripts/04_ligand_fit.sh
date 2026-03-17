#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep1, rep2, or rep3 before running.
# Fit the centered trajectory to JmjC_ChainB_CA to define a rigid reference frame.
# The documented holo trajectory-preparation workflow was reconstructed from rep2.

TPR_FILE="md_repX_60.tpr"
XTC_FILE="md_center_ligand.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="md_fit_ligand.xtc"

printf "27\n0\n" | gmx trjconv \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -o "$OUTPUT_FILE" \
  -fit rot+trans

echo "Created ${OUTPUT_FILE}"
