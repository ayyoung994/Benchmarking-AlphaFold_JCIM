#!/usr/bin/env bash
set -e

# MM/GBSA workflow for 02_5FWJ_apo, replica 3

gmx trjconv \
  -s md_rep3.tpr \
  -f md_rep3.xtc \
  -o md_20_60_center.xtc \
  -tu ns \
  -b 20 \
  -e 60 \
  -pbc mol \
  -center \
  -ur compact

# Interactive selections used inside trjconv:
# Centering group: 1 (Protein)
# Output group: 0 (System)

# Receptor group: 23 (JmjC_ChainB)
# Ligand group: 13 (DOL)

gmx_MMPBSA -O \
  -i mmpbsa.in \
  -cs md_rep3.tpr \
  -ct md_20_60_center.xtc \
  -cp topol.top \
  -ci jmjc.ndx \
  -cg 23 13 \
  -o FINAL_RESULTS_MMPBSA_apo_rep3.dat \
  -eo FINAL_RESULTS_PER_FRAME_apo_rep3.dat \
  -nogui
