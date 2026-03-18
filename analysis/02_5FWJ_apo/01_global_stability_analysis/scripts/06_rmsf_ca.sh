#!/usr/bin/env bash
set -euo pipefail

# RMSF analysis for JmjC_ChainB_CA residues
# System: 02_5FWJ_apo
#
# Replace `md_repX_protein.tpr` with the replica-specific TPR file
# (for example: md_rep1_protein.tpr, md_rep2_protein.tpr, or md_rep3_protein.tpr)
# before running this script.
#
# This script assumes that `md_0_60_fit.xtc` and `jmjc.ndx`
# have already been prepared.

gmx rmsf \
  -s md_repX_protein.tpr \
  -f md_0_60_fit.xtc \
  -n jmjc.ndx \
  -o rmsf_jmjc_CA_apo_repX.xvg \
  -res

# Interactive selection:
# RMSF calculation group: JmjC_ChainB_CA (24)
