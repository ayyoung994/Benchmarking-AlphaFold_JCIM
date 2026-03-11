# Analysis: Fit trajectory to JmjC core
# System: 01_5FWJ_holo
# Fit group: 27 (JmjC_ChainB_CA)
# Output group: 0 (System)
# Replace repX with rep1, rep2, or rep3 before running.

gmx trjconv -s md_repX.tpr \
  -f md_0_60_center_4.xtc \
  -o md_0_60_fit_core_4.xtc \
  -fit rot+trans \
  -n jmjc.ndx
