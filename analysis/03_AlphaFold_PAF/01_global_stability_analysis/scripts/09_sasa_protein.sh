#!/usr/bin/env bash
set -euo pipefail

# Protein SASA analysis for JmjC_all
# System: 03_AlphaFold_PAF
#
# Replace `md_repX_60_protein.tpr` with the replica-specific TPR file
# (for example: md_rep1_60_protein.tpr, md_rep2_60_protein.tpr, or md_rep3_60_protein.tpr)
# before running this script.
#
# This script assumes that `md_0_60_center.xtc` and `jmjc.ndx`
# have already been prepared.

gmx sasa \
  -s md_repX_60_protein.tpr \
  -f md_0_60_center.xtc \
  -n jmjc.ndx \
  -o sasa_total_PAF_repX.xvg \
  -or sasa_perres_PAF_repX.xvg \
  -tu ns

# Interactive selections:
# Surface calculation group: JmjC_all (21)
# Output group for per-residue SASA: JmjC_all (21)

echo "Created sasa_total_PAF_repX.xvg and sasa_perres_PAF_repX.xvg"
