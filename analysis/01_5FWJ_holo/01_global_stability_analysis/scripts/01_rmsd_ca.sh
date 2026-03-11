# Analysis: RMSD CA
# System: 01_5FWJ_holo
# Fit group: 27 (JmjC_ChainB_CA)
# RMSD group: 27 (JmjC_ChainB_CA)

gmx rms -s md_rep2_60_protein.tpr \
  -f md_0_60_fit_core.xtc \
  -n jmjc.ndx \
  -o rmsd_jmjc_CA_5fwj_holo_60_rep2.xvg \
  -tu ns
