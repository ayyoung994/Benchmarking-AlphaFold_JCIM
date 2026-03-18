#!/usr/bin/env bash
set -e

# Template script for creating JmjC- and pocket-related index groups
# for downstream analyses.
#
# Replace `md_repX_60.tpr` with the replica-specific TPR filename.
# This script assumes that `md_0_60.xtc` has already been prepared.

# Step 1. Extract frame 0 as PDB
gmx trjconv \
  -s md_repX_60.tpr \
  -f md_0_60.xtc \
  -o frame0.pdb \
  -dump 0

# Interactive selection:
# Output group: System (0)

# Step 2. Create index groups
gmx make_ndx \
  -f frame0.pdb \
  -o jmjc.ndx

# Interactive commands used in make_ndx:
# r 468-634
# name 21 JmjC_all
# 21 & 3
# name 22 JmjC_CA
# 21 & 7
# name 23 JmjC_MainChainH
# q
