#!/usr/bin/env bash
set -e

# Template script for preparing a continuous 0-60 ns trajectory
# for downstream global stability analysis.
#
# Replace `md_repX` with the replica-specific base filename.
# Replace `md_repX.partXXXX.xtc` with the correct later trajectory part
# used to recover the 20-60 ns segment for that replica/system.

# Step 1. Extract the 20-60 ns segment from the later trajectory part
gmx trjconv \
  -s md_repX_60.tpr \
  -f md_repX.partXXXX.xtc \
  -o md_20_60.xtc

# Interactive selection:
# Output group: System (0)

# Step 2. Concatenate the 0-20 ns and 20-60 ns trajectories
gmx trjcat \
  -f md_repX.xtc md_20_60.xtc \
  -o md_0_60.xtc

# Step 3. Check the merged trajectory
gmx check \
  -f md_0_60.xtc
