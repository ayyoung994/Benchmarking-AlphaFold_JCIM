#!/usr/bin/env bash
set -euo pipefail

# Replace rep1 with rep2 or rep3 before running.
# Calculate the center-of-mass distance between DOL heavy atoms
# and the JmjC pocket C-alpha region using the fitted PAF ligand trajectory.

REP="rep1"

TPR_FILE="md_${REP}_60.tpr"
XTC_FILE="md_fit_ligand_PAF.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="dist_COM_DOL_pocketCA_PAF_${REP}.xvg"

gmx distance \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -select 'com of group "DOL_heavy" plus com of group "Pocket_JmjC_CA"' \
  -oall "$OUTPUT_FILE" \
  -tu ns

echo "Created ${OUTPUT_FILE}"
