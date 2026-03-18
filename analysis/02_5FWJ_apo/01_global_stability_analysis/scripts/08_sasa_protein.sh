#!/usr/bin/env bash
set -euo pipefail

# Protein SASA analysis for JmjC_ChainB
# System: 02_5FWJ_apo
#
# Replace `md_repX_protein.tpr` with the replica-specific TPR file
# (for example: md_rep1_protein.tpr, md_rep2_protein.tpr, or md_rep3_protein.tpr)
# before running this script.
#
# This script assumes that `md_0_60_center.xtc` and `jmjc.ndx`
# have already been prepared.

gmx sasa \
  -s md_repX_protein.tpr \
  -f md_0_60_center.xtc \
  -n jmjc.ndx \
  -o sasa_total_apo_repX.xvg \
  -or sasa_perres_apo_repX.xvg \
  -tu ns

# Interactive selections:
# Surface calculation group: JmjC_ChainB (23)
# Output group for per-residue SASA: JmjC_ChainB (23)

echo "Created sasa_total_apo_repX.xvg and sasa_perres_apo_repX.xvg"
