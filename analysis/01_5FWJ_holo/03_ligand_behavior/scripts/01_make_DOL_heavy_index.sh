#!/usr/bin/env bash
set -e

# Create a ligand heavy-atom group from the existing DOL group in jmjc.ndx.
#
# Assumptions:
# - The ligand group DOL is group 13 in jmjc.ndx.
# - The newly created heavy-atom group is temporarily assigned as group 37
#   before being renamed to DOL_heavy.
# - Replace `md_repX_60.tpr` with the replica-specific TPR filename before use.

gmx make_ndx \
  -f md_repX_60.tpr \
  -n jmjc.ndx \
  -o jmjc.ndx << 'EOF'
17 & ! a H*
name 37 DOL_heavy
q
EOF
