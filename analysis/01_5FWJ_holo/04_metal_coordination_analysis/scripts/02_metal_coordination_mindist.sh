#!/usr/bin/env bash
set -euo pipefail

# Metal coordination distance/contact analysis
# System: 5FWJ holo
#
# This script calculates Mn2+ coordination distances and contact traces
# for one replica.
#
# Edit REP before running:
#   REP=1, REP=2, or REP=3
#
# Required input files:
# - md_rep${REP}_60.tpr
# - md_0_60_center_4.xtc
# - metal_coord_rep${REP}.ndx
#
# Output files:
# - dist_MN_HIS514_NE2_${REP}.xvg
# - contact_MN_HIS514_NE2_${REP}.xvg
# - dist_MN_HIS602_NE2_${REP}.xvg
# - contact_MN_HIS602_NE2_${REP}.xvg
# - dist_MN_GLU516_OE2_${REP}.xvg
# - contact_MN_GLU516_OE2_${REP}.xvg

REP=1

TPR_FILE="md_rep${REP}_60.tpr"
XTC_FILE="md_0_60_center_4.xtc"
INDEX_FILE="metal_coord_rep${REP}.ndx"
REP_TAG="EXPB${REP}"
DIST_CUTOFF="0.28"

# Index groups in metal_coord_rep${REP}.ndx
MN_GROUP=0
HIS514_GROUP=2
GLU516_GROUP=3
HIS602_GROUP=4

printf "${MN_GROUP}\n${HIS514_GROUP}\n" | gmx mindist \
  -s "${TPR_FILE}" \
  -f "${XTC_FILE}" \
  -n "${INDEX_FILE}" \
  -od "dist_MN_HIS514_NE2_${REP_TAG}.xvg" \
  -on "contact_MN_HIS514_NE2_${REP_TAG}.xvg" \
  -d "${DIST_CUTOFF}" \
  -tu ns

printf "${MN_GROUP}\n${HIS602_GROUP}\n" | gmx mindist \
  -s "${TPR_FILE}" \
  -f "${XTC_FILE}" \
  -n "${INDEX_FILE}" \
  -od "dist_MN_HIS602_NE2_${REP_TAG}.xvg" \
  -on "contact_MN_HIS602_NE2_${REP_TAG}.xvg" \
  -d "${DIST_CUTOFF}" \
  -tu ns

printf "${MN_GROUP}\n${GLU516_GROUP}\n" | gmx mindist \
  -s "${TPR_FILE}" \
  -f "${XTC_FILE}" \
  -n "${INDEX_FILE}" \
  -od "dist_MN_GLU516_OE2_${REP_TAG}.xvg" \
  -on "contact_MN_GLU516_OE2_${REP_TAG}.xvg" \
  -d "${DIST_CUTOFF}" \
  -tu ns

echo "Finished metal coordination analysis for ${REP_TAG}."
