#!/usr/bin/env bash
set -euo pipefail

# Remove PBC jumps from the full system trajectory for 5FWJ holo rep1.

TPR_FILE="md_rep1.tpr"
XTC_FILE="md_rep1.xtc"
OUTPUT_FILE="md_nojump_ligand_2.xtc"

printf "0\n" | gmx trjconv \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -o "$OUTPUT_FILE" \
  -pbc nojump

echo "Created ${OUTPUT_FILE}"
