#!/usr/bin/env bash

# MM/GBSA workflow for 01_5FWJ_holo, replica 1

# Step 1: prepare MM/GBSA index file
gmx make_ndx -f md_rep1.tpr -n jmjc.ndx -o jmjc_mmpbsa.ndx

# Interactive commands used inside make_ndx:
# 26 | 14 | 15 | 16
# name 36 Receptor_JmjC_B_holo
# q

# Step 2: preprocess trajectory
gmx trjconv -s md_rep1.tpr -f md_rep1.xtc -o md_0_60_center_2.xtc -b 0 -e 60000 -pbc mol -center -ur compact

# Interactive selections used inside trjconv:
# Centering group: 1 (Protein)
# Output group: 0 (System)

# Step 3: run MM/GBSA
# receptor group: 36 (Receptor_JmjC_B_holo)
# ligand group: 17 (DOL)

gmx_MMPBSA -O \
  -i mmpbsa.in \
  -cs md_rep1.tpr \
  -ct md_0_60_center_2.xtc \
  -cp topol.top \
  -ci jmjc_mmpbsa.ndx \
  -cg 36 17 \
  -o FINAL_RESULTS_MMPBSA.dat \
  -eo FINAL_RESULTS_PER_FRAME.dat \
  -nogui
