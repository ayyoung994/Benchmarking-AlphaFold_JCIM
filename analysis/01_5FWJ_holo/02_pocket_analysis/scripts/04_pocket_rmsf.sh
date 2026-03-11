# Analysis: Pocket RMSF
# System: 01_5FWJ_holo
# Group: 38 (Pre_pocket_JmjCB_CA)
# Replace repX with rep1, rep2, or rep3 before running.

gmx rmsf -s md_repX.tpr \
  -f md_0_60_fit_core_4.xtc \
  -n jmjc.ndx \
  -o rmsf_PrePocket_CA_holo_repX.xvg \
  -res
