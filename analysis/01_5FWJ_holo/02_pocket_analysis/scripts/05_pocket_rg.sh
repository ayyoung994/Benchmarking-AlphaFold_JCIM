#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep1, rep2, or rep3 before running.
# Calculate pocket radius of gyration (Rg) for the Pocket_JmjCB_BB group.
# The input trajectory is the centered trajectory used for pocket-level analysis.

TPR_FILE="md_repX_60.tpr"
XTC_FILE="md_0_60_center_4.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="rg_pocket_holo_repX.xvg"

printf "36\n" | gmx gyrate \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -o "$OUTPUT_FILE" \
  -tu ns

echo "Created ${OUTPUT_FILE}"
