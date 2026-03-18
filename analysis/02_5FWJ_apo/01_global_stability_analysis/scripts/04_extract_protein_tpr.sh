#!/usr/bin/env bash
set -e

# Template script for extracting a protein-only TPR
# for downstream protein-focused analyses.
#
# Replace `md_repX.tpr` with the replica-specific input TPR filename.
# Replace `md_repX_protein.tpr` with the desired replica-specific output filename.
# This script assumes that `jmjc.ndx` has already been prepared.

gmx convert-tpr \
  -s md_repX.tpr \
  -n jmjc.ndx \
  -o md_repX_protein.tpr

# Interactive selection:
# Group: Protein (1)
