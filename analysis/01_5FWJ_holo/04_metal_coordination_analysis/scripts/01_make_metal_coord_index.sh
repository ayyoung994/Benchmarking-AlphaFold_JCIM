#!/usr/bin/env bash
set -euo pipefail

# Metal coordination index creation
# System: 5FWJ holo
#
# This script creates the metal coordination index groups used for
# Mn2+ coordination analysis in one replica.
#
# Edit REP before running:
#   REP=1, REP=2, or REP=3
#
# Required input files:
# - md_rep${REP}_60.tpr
# - jmjc_2.ndx
#
# Output:
# - metal_coord_rep${REP}.ndx
#
# Groups created by gmx select:
#   0 = Mn2+ ion near Pocket_JmjCB
#   1 = pocket donor atoms (N/O/S atoms)
#   2 = HIS514 NE2
#   3 = GLU516 OE2
#   4 = HIS602 NE2

REP=1

TPR_FILE="md_rep${REP}_60.tpr"
INDEX_IN="jmjc_2.ndx"
INDEX_OUT="metal_coord_rep${REP}.ndx"

gmx select \
  -s "${TPR_FILE}" \
  -n "${INDEX_IN}" \
  -on "${INDEX_OUT}" \
  -select \
  'resname MN2P and within 0.5 of group "Pocket_JmjCB"' \
  'group "Pocket_JmjCB" and name ND1 NE2 OD1 OD2 OE1 OE2 OG OG1 OH SG SD O' \
  '(group "JmjC_ChainB") and resnr 514 and resname HIS and name NE2' \
  '(group "JmjC_ChainB") and resnr 516 and resname GLU and name OE2' \
  '(group "JmjC_ChainB") and resnr 602 and resname HIS and name NE2'

echo "Created ${INDEX_OUT}"
echo "You can inspect the groups with:"
echo "  gmx make_ndx -n ${INDEX_OUT}"
