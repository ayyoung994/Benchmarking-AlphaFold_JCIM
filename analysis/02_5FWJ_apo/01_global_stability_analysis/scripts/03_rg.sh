# Analysis: Radius of gyration
# System: 02_5FWJ_apo
# Group: 23 (JmjC_ChainB)
# Replace repX with rep1, rep2, or rep3 before running.

gmx gyrate -s md_repX_protein.tpr \
  -f md_0_60_center.xtc \
  -n jmjc.ndx \
  -o rg_jmjc_apo_repX.xvg \
  -tu ns
