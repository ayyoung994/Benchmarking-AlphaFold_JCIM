# Analysis: RMSD CA
# System: 01_5FWJ_holo
# Fit group: 27 (JmjC_ChainB_CA)
# RMSD group: 27 (JmjC_ChainB_CA)
# Replace repX with rep1, rep2, or rep3 before running.

gmx rms -s md_repX_60_protein.tpr \
  -f md_0_60_fit_core.xtc \
  -n jmjc.ndx \
  -o rmsd_jmjc_CA_holo_60_repX.xvg \
  -tu ns
