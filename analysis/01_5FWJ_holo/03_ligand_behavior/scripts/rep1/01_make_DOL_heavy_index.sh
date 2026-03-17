#!/usr/bin/env bash
set -e

# Create a ligand heavy-atom group from the existing DOL group in jmjc.ndx.
#
# Assumptions:
# - The ligand group DOL is group 17 in jmjc.ndx.
# - The newly created heavy-atom group is temporarily assigned as group 40
#   before being renamed to DOL_heavy.
# - Replace `md_repX.tpr` with the replica-specific TPR filename before use.

gmx make_ndx \
  -f md_rep1.tpr \
  -n jmjc.ndx \
  -o jmjc.ndx << 'EOF'
17 & ! a H*
name 40 DOL_heavy
q
EOF
