# Analysis: Radius of gyration
# System: 01_5FWJ_holo
# Group: 26 (JmjC_ChainB)
# Replace repX with rep1, rep2, or rep3 before running.

gmx gyrate -s md_repX_60_protein.tpr \
  -f md_0_60_center.xtc \
  -n jmjc.ndx \
  -o rg_jmjc_holo_60_repX.xvg \
  -tu ns
