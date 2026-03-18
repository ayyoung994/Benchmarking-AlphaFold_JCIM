#!/usr/bin/env bash
set -euo pipefail

# RMSF analysis for JmjC_CA residues
# System: 04_AlphaFold_CAF
#
# Replace `md_repX_60_protein.tpr` with the replica-specific TPR file
# (for example: md_rep1_60_protein.tpr, md_rep2_60_protein.tpr, or md_rep3_60_protein.tpr)
# before running this script.
#
# This script assumes that `md_0_60_fit_core.xtc` and `jmjc.ndx`
# have already been prepared.

gmx rmsf \
  -s md_repX_60_protein.tpr \
  -f md_0_60_fit_core.xtc \
  -n jmjc.ndx \
  -o rmsf_jmjc_CA_CAF_repX.xvg \
  -res

# Interactive selection:
# Analysis group: JmjC_CA (22)

echo "Created rmsf_jmjc_CA_CAF_repX.xvg"
