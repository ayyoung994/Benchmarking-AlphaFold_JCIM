#!/usr/bin/env bash
set -euo pipefail

# RMSD analysis for JmjC_CA
# System: 03_AlphaFold_PAF
#
# Replace `md_repX_60_protein.tpr` with the replica-specific TPR file
# (for example: md_rep1_60_protein.tpr, md_rep2_60_protein.tpr, or md_rep3_60_protein.tpr)
# before running this script.
#
# This script assumes that `md_0_60_fit_core.xtc` and `jmjc.ndx`
# have already been prepared.

gmx rms \
  -s md_repX_60_protein.tpr \
  -f md_0_60_fit_core.xtc \
  -n jmjc.ndx \
  -o rmsd_jmjc_CA_PAF_repX.xvg \
  -tu ns

# Interactive selections:
# Least-squares fit group: JmjC_CA (22)
# RMSD calculation group: JmjC_CA (22)

echo "Created rmsd_jmjc_CA_PAF_repX.xvg"
