# Analysis: Pocket trajectory centering
# System: 01_5FWJ_holo
# Center group: 1 (Protein)
# Output group: 0 (System)
# Replace repX with rep1, rep2, or rep3 before running.

gmx trjconv -s md_repX.tpr \
  -f md_repX.xtc \
  -o md_0_60_center_4.xtc \
  -pbc mol \
  -center \
  -ur compact \
  -n jmjc.ndx
