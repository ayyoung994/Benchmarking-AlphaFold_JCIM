# Analysis: RMSF CA
# System: 02_5FWJ_apo
# Group: 24 (JmjC_ChainB_CA)
# Replace repX with rep1, rep2, or rep3 before running.

gmx rmsf -s md_repX.tpr \
  -f md_0_60_fit.xtc \
  -n jmjc.ndx \
  -o rmsf_jmjc_CA_apo_repX.xvg \
  -res
