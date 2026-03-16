#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep1, rep2, or rep3 before running.
# Calculate SASA using JmjC_ChainB as the reference molecular surface
# and Pocket_JmjCB as the output selection.
# The input trajectory is the centered trajectory used for pocket-level analysis.

TPR_FILE="md_repX.tpr"
XTC_FILE="md_0_60_center_4.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="sasa_jmjc_and_pocket_apo_repX.xvg"

gmx sasa \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -surface 'group "JmjC_ChainB"' \
  -output 'group "Pocket_JmjCB"' \
  -o "$OUTPUT_FILE" \
  -tu ns

echo "Created ${OUTPUT_FILE}"
