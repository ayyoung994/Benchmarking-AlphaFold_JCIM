#!/usr/bin/env bash
set -e

# Template script for extracting a protein-only TPR
# for downstream protein-focused analyses.
#
# Replace `md_repX_60.tpr` with the replica-specific input TPR filename.
# Replace `md_repX_60_protein.tpr` with the desired replica-specific output filename.
# This script assumes that `jmjc.ndx` has already been prepared.

gmx convert-tpr \
  -s md_repX_60.tpr \
  -n jmjc.ndx \
  -o md_repX_60_protein.tpr

# Interactive selection:
# Group: Protein (1)
