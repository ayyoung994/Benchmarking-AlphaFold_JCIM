#!/usr/bin/env bash
set -euo pipefail

# RMSD analysis for JmjC_ChainB_CA
# System: 02_5FWJ_apo
#
# Replace `md_repX_protein.tpr` with the replica-specific TPR file
# (for example: md_rep1_protein.tpr, md_rep2_protein.tpr, or md_rep3_protein.tpr)
# before running this script.
#
# This script assumes that `md_0_60_fit.xtc` and `jmjc.ndx`
# have already been prepared.

gmx rms \
  -s md_repX_protein.tpr \
  -f md_0_60_fit.xtc \
  -n jmjc.ndx \
  -o rmsd_jmjc_CA_apo_repX.xvg \
  -tu ns

# Interactive selections:
# Least-squares fit group: JmjC_ChainB_CA (24)
# RMSD calculation group: JmjC_ChainB_CA (24)

echo "Created rmsd_jmjc_CA_apo_repX.xvg"
