#!/usr/bin/env bash
set -euo pipefail

# Fit the trajectory using least-squares alignment to JmjC_ChainB_CA.
# Replace the filenames below with replica-specific inputs before use.
#
# Interactive selections used in trjconv:
# Least-squares fit group: 27 (JmjC_ChainB_CA)
# Centering group: 0 (System)
# Output group: 0 (System)

TPR_FILE="md_repX.tpr"
XTC_FILE="md_center_ligand_2.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="md_fit_ligand_2.xtc"

printf "27\n0\n0\n" | gmx trjconv \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -o "$OUTPUT_FILE" \
  -center \
  -fit rot+trans

echo "Created ${OUTPUT_FILE}"
