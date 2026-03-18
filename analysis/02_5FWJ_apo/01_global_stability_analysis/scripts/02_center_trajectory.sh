#!/usr/bin/env bash
set -e

# Template script for centering the trajectory and making molecules whole
# for downstream global stability analysis.
#
# Replace `md_repX.tpr` with the replica-specific TPR filename.
# Replace `md_repX.xtc` with the replica-specific trajectory filename.

gmx trjconv \
  -s md_repX.tpr \
  -f md_repX.xtc \
  -o md_0_60_center.xtc \
  -pbc mol \
  -center \
  -ur compact

# Interactive selections:
# Center group: Protein (1)
# Output group: Protein (1)
