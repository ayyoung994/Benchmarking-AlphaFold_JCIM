#!/usr/bin/env bash
set -e

# MM/GBSA workflow for 02_5FWJ_apo, replica 1

gmx trjconv \
  -s md_rep1.tpr \
  -f md_rep1.xtc \
  -o md_0_60_center_2.xtc \
  -b 0 \
  -e 60000 \
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
  -cs md_rep1.tpr \
  -ct md_0_60_center_2.xtc \
  -cp topol.top \
  -ci jmjc.ndx \
  -cg 23 13 \
  -o FINAL_RESULTS_MMPBSA_apo_rep1.dat \
  -eo FINAL_RESULTS_PER_FRAME_apo_rep1.dat \
  -nogui
