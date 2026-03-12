#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep1, rep2, or rep3 before running.
# Calculate ligand RMSD for DOL heavy atoms after fitting to JmjC_ChainB_CA.

TPR_FILE="md_repX.tpr"
XTC_FILE="md_fit_ligand.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="ligand_rmsd_apo_repX.xvg"

printf "24\n34\n" | gmx rms \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -o "$OUTPUT_FILE" \
  -tu ns

echo "Created ${OUTPUT_FILE}"
