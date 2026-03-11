# Analysis: Radius of gyration
# System: 04_AlphaFold_CAF
# Group: 21 (JmjC_all)
# Replace repX with rep1, rep2, or rep3 before running.

gmx gyrate -s md_repX_60_protein.tpr \
  -f md_0_60_center.xtc \
  -n jmjc.ndx \
  -o rg_jmjc_CAF_60_repX.xvg \
  -tu ns
