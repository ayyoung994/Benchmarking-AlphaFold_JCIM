#!/usr/bin/env bash
set -e

# MM/GBSA workflow for 01_5FWJ_holo, replica 2

# Step 1: prepare MM/GBSA index file
gmx make_ndx -f md_rep2_60.tpr -n jmjc.ndx -o ../input/jmjc_mmpbsa.ndx

# Interactive commands used inside make_ndx:
# 26 | 14 | 15 | 16
# name 36 Receptor_JmjC_B_holo
# q

# Step 2: preprocess trajectory
gmx trjconv -s md_rep2_60.tpr -f md_rep2_60.xtc -o md_0_60_center_2.xtc -b 0 -e 60000 -pbc mol -center -ur compact

# Interactive selections used inside trjconv:
# Centering group: 1 (Protein)
# Output group: 0 (System)

# Step 3: run MM/GBSA
# receptor group: 36 (Receptor_JmjC_B_holo)
# ligand group: 17 (DOL)
# shared input file: ../input/mmpbsa.in
# shared index file: ../input/jmjc_mmpbsa.ndx

gmx_MMPBSA -O \
  -i ../input/mmpbsa.in \
  -cs md_rep2_60.tpr \
  -ct md_0_60_center_2.xtc \
  -cp topol.top \
  -ci ../input/jmjc_mmpbsa.ndx \
  -cg 36 17 \
  -o FINAL_RESULTS_MMPBSA.dat \
  -eo FINAL_RESULTS_PER_FRAME.dat \
  -nogui
