#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep1, rep2, or rep3 before running.
# Calculate the center-of-mass distance between the ligand heavy atoms
# and the consensus pocket region using the fitted ligand trajectory.

TPR_FILE="md_repX_60.tpr"
XTC_FILE="md_fit_ligand.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="dist_COM_DOL_pocket_CAF_repX.xvg"

gmx distance \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -select 'com of group "DOL_heavy" plus com of group "Pocket_JmjC_all"' \
  -oall "$OUTPUT_FILE" \
  -tu ns

echo "Created ${OUTPUT_FILE}"
