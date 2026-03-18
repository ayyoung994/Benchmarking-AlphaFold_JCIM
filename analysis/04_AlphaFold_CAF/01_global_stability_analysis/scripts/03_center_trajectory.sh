#!/usr/bin/env bash
set -e

# Template script for centering the trajectory and making molecules whole
# for downstream global stability analysis.
#
# Replace `md_repX_60.tpr` with the replica-specific TPR filename.
# This script assumes that `md_0_60.xtc` has already been prepared.

gmx trjconv \
  -s md_repX_60.tpr \
  -f md_0_60.xtc \
  -o md_0_60_center.xtc \
  -pbc mol \
  -center \
  -ur compact

# Interactive selections:
# Center group: Protein (1)
# Output group: Protein (1)
