#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep1, rep2, or rep3 before running.
# Calculate pocket RMSD for the Pocket_JmjC_CA group.
# The trajectory was pre-aligned to the core, so RMSD is computed with -fit none.

TPR_FILE="md_repX_60.tpr"
XTC_FILE="md_0_60_fit_core_4.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="rmsd_pocket_PAF_repX.xvg"

printf "30\n" | gmx rms \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -o "$OUTPUT_FILE" \
  -fit none \
  -tu ns

echo "Created ${OUTPUT_FILE}"
