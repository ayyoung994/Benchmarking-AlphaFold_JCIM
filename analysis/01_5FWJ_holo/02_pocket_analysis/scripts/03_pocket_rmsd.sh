# Analysis: Pocket RMSD
# System: 01_5FWJ_holo
# Group: 38 (Pre_pocket_JmjCB_CA)
# Replace repX with rep1, rep2, or rep3 before running.

gmx rms -s md_repX.tpr \
  -f md_0_60_fit_core_4.xtc \
  -n jmjc.ndx \
  -o rmsd_pocket_holo_repX.xvg \
  -fit none \
  -tu ns
