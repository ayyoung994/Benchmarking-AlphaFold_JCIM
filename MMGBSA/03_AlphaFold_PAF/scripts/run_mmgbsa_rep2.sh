#!/usr/bin/env bash
set -e

# MM/GBSA workflow for 03_AlphaFold_PAF, replica 2

gmx trjconv \
  -s md_rep2_60.tpr \
  -f md_rep2_60.xtc \
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
  -cs md_rep2_60.tpr \
  -ct md_0_60_center_2.xtc \
  -cp topol.top \
  -ci jmjc.ndx \
  -cg 21 13 \
  -o FINAL_RESULTS_MMPBSA_PAF_rep2.dat \
  -eo FINAL_RESULTS_PER_FRAME_PAF_rep2.dat \
  -nogui
