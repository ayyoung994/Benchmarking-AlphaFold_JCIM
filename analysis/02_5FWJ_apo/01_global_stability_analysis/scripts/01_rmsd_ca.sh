# Analysis: RMSD CA
# System: 02_5FWJ_apo
# Fit group: 24 (JmjC_ChainB_CA)
# RMSD group: 24 (JmjC_ChainB_CA)
# Replace repX with rep1, rep2, or rep3 before running.

gmx rms -s md_repX_protein.tpr \
  -f md_0_60_fit.xtc \
  -n jmjc.ndx \
  -o rmsd_jmjc_CA_apo_repX.xvg \
  -tu ns
