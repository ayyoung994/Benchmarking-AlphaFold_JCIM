#!/usr/bin/env bash
set -euo pipefail

# Template script for fitting the trajectory to the JmjC core Cα atoms
# for downstream global stability analysis.
#
# Replace `md_repX.tpr` with the replica-specific TPR filename.
# This script assumes that `md_0_60_center.xtc` and `jmjc.ndx`
# have already been prepared.

gmx trjconv \
  -s md_repX.tpr \
  -f md_0_60_center.xtc \
  -o md_0_60_fit.xtc \
  -fit rot+trans \
  -n jmjc.ndx

# Interactive selections:
# Least-squares fit group: JmjC_ChainB_CA (24)
# Output group: Protein (1)
