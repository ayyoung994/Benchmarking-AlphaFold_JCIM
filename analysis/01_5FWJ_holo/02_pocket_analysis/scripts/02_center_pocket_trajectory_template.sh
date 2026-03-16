#!/usr/bin/env bash
set -e

# Template script for centering the trajectory and making molecules whole
# for downstream pocket analysis.
#
# Replace `md_repX_60.tpr` with the replica-specific TPR filename.
# Replace `md_repX_60.xtc` with the replica-specific trajectory filename.
# This script assumes that `jmjc.ndx` has already been prepared.

gmx trjconv \
  -s md_repX_60.tpr \
  -f md_repX_60.xtc \
  -o md_0_60_center_4.xtc \
  -pbc mol \
  -center \
  -ur compact \
  -n jmjc.ndx

# Interactive selections:
# Center group: Protein (1)
# Output group: System (0)
