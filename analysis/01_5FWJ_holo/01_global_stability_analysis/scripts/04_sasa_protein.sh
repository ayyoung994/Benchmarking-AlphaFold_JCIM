# Analysis: Protein SASA
# System: 01_5FWJ_holo
# Surface group: 26 (JmjC_ChainB)
# # Replace repX with rep1, rep2, or rep3 before running

gmx sasa -s md_repX_60_protein.tpr \
  -f md_0_60_center.xtc \
  -n jmjc.ndx \
  -o sasa_total_holo_60_repX.xvg \
  -or sasa_perres_holo_60_repX.xvg \
  -tu ns
