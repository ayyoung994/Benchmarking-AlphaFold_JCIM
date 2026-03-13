#!/usr/bin/env bash
set -e

# MM/GBSA workflow for 04_AlphaFold_CAF, replica 3

gmx trjconv \
  -s md_rep3_60.tpr \
  -f md_rep3_60.xtc \
  -o md_0_60_center_2.xtc \
  -b 0 \
  -e 60000 \
  -pbc mol \
  -center \
  -ur compact

# Interactive selections used inside trjconv:
# Centering group: 1 (Protein)
# Output group: 0 (System)

# Receptor group: 21 (JmjC_all)
# Ligand group: 13 (DOL)

gmx_MMPBSA -O \
  -i mmpbsa.in \
  -cs md_rep3_60.tpr \
  -ct md_0_60_center_2.xtc \
  -cp topol.top \
  -ci jmjc.ndx \
  -cg 21 13 \
  -o FINAL_RESULTS_MMPBSA_CAF_rep3.dat \
  -eo FINAL_RESULTS_PER_FRAME_CAF_rep3.dat \
  -nogui
