#!/usr/bin/env bash
set -euo pipefail

# Center the trajectory on Chain_B and reconstruct whole molecules for 5FWJ holo rep1.

TPR_FILE="md_rep1.tpr"
XTC_FILE="md_nojump_ligand_2.xtc"
INDEX_FILE="jmjc.ndx"
OUTPUT_FILE="md_center_ligand_2.xtc"

printf "24\n0\n" | gmx trjconv \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -o "$OUTPUT_FILE" \
  -center \
  -pbc mol \
  -ur compact

echo "Created ${OUTPUT_FILE}"
