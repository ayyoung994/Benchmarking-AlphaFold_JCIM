#!/usr/bin/env bash
set -e

# Template script for creating JmjC- and pocket-related index groups
# for downstream analyses.
#
# Replace `md_repX.tpr` with the replica-specific TPR filename.
# Replace `md_repX.xtc` with the replica-specific trajectory filename.

# Step 1. Extract frame 0 as PDB
gmx trjconv \
  -s md_repX.tpr \
  -f md_repX.xtc \
  -o frame0.pdb \
  -dump 0

# Interactive selection:
# Output group: System (0)

# Step 2. Create index groups
gmx make_ndx \
  -f frame0.pdb \
  -o jmjc.ndx

# Interactive commands used in make_ndx:
# chain B
# name 21 Chain_B
# r 468-634
# name 22 JmjC_all
# 21 & 22
# name 23 JmjC_ChainB
# 23 & 3
# name 24 JmjC_ChainB_CA
# 23 & 7
# name 25 JmjC_ChainB_MainChain+H
# q
