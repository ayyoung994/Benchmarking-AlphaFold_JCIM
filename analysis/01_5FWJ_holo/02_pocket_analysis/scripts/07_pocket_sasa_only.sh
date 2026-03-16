#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep1, rep2, or rep3 before running.
# Calculate SASA for the consensus pocket region alone,
# using Pocket_JmjCB as both the surface and output selection.
# The input trajectory is the centered trajectory used for pocket-level analysis.

TPR_FILE="md_repX_60.tpr"
XTC_FILE="md_0_60_center_4.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="sasa_pocketonly_holo_repX.xvg"

gmx sasa \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -surface 'group "Pocket_JmjCB"' \
  -output 'group "Pocket_JmjCB"' \
  -o "$OUTPUT_FILE" \
  -tu ns

echo "Created ${OUTPUT_FILE}"
