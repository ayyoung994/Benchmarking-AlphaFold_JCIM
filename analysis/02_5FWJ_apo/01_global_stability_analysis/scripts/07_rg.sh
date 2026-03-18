#!/usr/bin/env bash
set -euo pipefail

# Radius of gyration analysis for JmjC_ChainB
# System: 02_5FWJ_apo
#
# Replace `md_repX_protein.tpr` with the replica-specific TPR file
# (for example: md_rep1_protein.tpr, md_rep2_protein.tpr, or md_rep3_protein.tpr)
# before running this script.
#
# This script assumes that `md_0_60_center.xtc` and `jmjc.ndx`
# have already been prepared.

gmx gyrate \
  -s md_repX_protein.tpr \
  -f md_0_60_center.xtc \
  -n jmjc.ndx \
  -o rg_jmjc_apo_repX.xvg \
  -tu ns

# Interactive selection:
# Analysis group: JmjC_ChainB (23)

echo "Created rg_jmjc_apo_repX.xvg"
