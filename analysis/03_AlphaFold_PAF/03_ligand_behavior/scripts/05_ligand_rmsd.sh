#!/usr/bin/env bash
set -euo pipefail

# Calculate ligand RMSD for DOL heavy atoms after fitting to AF JmjC C-alpha atoms.
# Reference is taken from the 0 ns frame of the processed trajectory itself.

REP="rep1"   # change to rep1, rep2, or rep3

TPR_FILE="md_${REP}_60.tpr"
XTC_FILE="md_fit_ligand_PAF.xtc"
INDEX_FILE="jmjc.ndx"

REF_FILE="ref_PAF_0ns_${REP}.gro"
OUTPUT_FILE="rmsd_DOL_fit_PAF_ref0_${REP}.xvg"

# 1) Extract 0 ns reference structure from the processed trajectory.
# Keep System as output so the atom numbering remains compatible with jmjc.ndx.
printf "System\n" | gmx trjconv \
  -s "$TPR_FILE" \
  -f "$XTC_FILE" \
  -o "$REF_FILE" \
  -dump 0

# 2) Fit on JmjC C-alpha atoms and calculate RMSD for DOL heavy atoms.
# -nomw avoids mass-guessing issues from the .gro reference.
printf "JmjC_CA\nDOL_heavy\n" | gmx rms \
  -s "$REF_FILE" \
  -f "$XTC_FILE" \
  -n "$INDEX_FILE" \
  -o "$OUTPUT_FILE" \
  -tu ns \
  -fit rot+trans \
  -nomw

echo "Created ${OUTPUT_FILE}"
