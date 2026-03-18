#!/usr/bin/env bash
set -euo pipefail

# Radius of gyration analysis for JmjC_all
# System: 04_AlphaFold_CAF
#
# Replace `md_repX_60_protein.tpr` with the replica-specific TPR file
# (for example: md_rep1_60_protein.tpr, md_rep2_60_protein.tpr, or md_rep3_60_protein.tpr)
# before running this script.
#
# This script assumes that `md_0_60_center.xtc` and `jmjc.ndx`
# have already been prepared.

gmx gyrate \
  -s md_repX_60_protein.tpr \
  -f md_0_60_center.xtc \
  -n jmjc.ndx \
  -o rg_jmjc_CAF_repX.xvg \
  -tu ns

# Interactive selection:
# Analysis group: JmjC_all (21)

echo "Created rg_jmjc_CAF_repX.xvg"
