#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep1, rep2, or rep3 before running.
# Calculate ligand RMSD for DOL heavy atoms after fitting to AF JmjC C-alpha atoms.

TPR_FILE="md_repX_60.tpr"
XTC_FILE="md_fit_ligand.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="ligand_rmsd_PAF_repX.xvg"

printf "22\n32\n" | gmx rms \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -o "$OUTPUT_FILE" \
  -tu ns

echo "Created ${OUTPUT_FILE}"
