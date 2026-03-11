# System: 04_AlphaFold_CAF
# Fit group: 22 (JmjC_CA)
# RMSD group: 22 (JmjC_CA)
# Replace repX with rep1, rep2, or rep3 before running.

gmx rms -s md_repX_60_protein.tpr \
  -f md_0_60_fit_core.xtc \
  -n jmjc.ndx \
  -o rmsd_jmjc_CA_CAF_60_repX.xvg \
  -tu ns
