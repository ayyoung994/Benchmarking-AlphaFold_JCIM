# Analysis: RMSF CA
# System: 04_AlphaFold_CAF
# Group: 22 (JmjC_CA)
# Replace repX with rep1, rep2, or rep3 before running.

gmx rmsf -s md_repX_60_protein.tpr \
  -f md_0_60_fit_core.xtc \
  -n jmjc.ndx \
  -o rmsf_jmjc_CA_CAF_60_repX.xvg \
  -res
