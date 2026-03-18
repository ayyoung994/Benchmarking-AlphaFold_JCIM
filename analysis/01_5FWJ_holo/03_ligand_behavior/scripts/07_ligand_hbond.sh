#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep2 or rep3 before running.
# Calculate hydrogen bonds between ligand heavy atoms and the consensus pocket region.

TPR_FILE="md_repX_60.tpr"
XTC_FILE="md_fit_ligand.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="hb_DOL_pocket_holo_repX.xvg"

printf "34\n37\n" | gmx hbond \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -num "$OUTPUT_FILE" \
  -tu ns

echo "Created ${OUTPUT_FILE}"
