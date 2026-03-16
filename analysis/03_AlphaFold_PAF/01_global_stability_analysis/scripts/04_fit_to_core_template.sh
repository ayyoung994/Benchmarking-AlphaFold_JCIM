#!/usr/bin/env bash
set -e

# Template script for fitting the trajectory to the JmjC core C-alpha atoms
# in AlphaFold-based systems.
#
# Replace `md_repX_60.tpr` with the replica-specific TPR filename.
# This script assumes that `md_0_60_center.xtc` and `jmjc.ndx` have already been prepared.

gmx trjconv \
  -s md_repX_60.tpr \
  -f md_0_60_center.xtc \
  -o md_0_60_fit.xtc \
  -fit rot+trans \
  -n jmjc.ndx

# Interactive selections:
# Least-squares fit group: JmjC_CA (22)
# Output group: Protein (1)
