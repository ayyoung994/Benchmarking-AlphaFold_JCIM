#!/usr/bin/env bash
set -e

# Template script for fitting the trajectory to the JmjC core
# for downstream pocket RMSD/RMSF comparisons.
#
# Replace `md_repX.tpr` with the replica-specific TPR filename.
# This script assumes that `md_0_60_center_4.xtc` and `jmjc.ndx` have already been prepared.

gmx trjconv \
  -s md_repX.tpr \
  -f md_0_60_center_4.xtc \
  -o md_0_60_fit_core_4.xtc \
  -fit rot+trans \
  -n jmjc.ndx

# Interactive selections:
# Least-squares fit group: JmjC_ChainB_CA (24)
# Output group: System (0)
