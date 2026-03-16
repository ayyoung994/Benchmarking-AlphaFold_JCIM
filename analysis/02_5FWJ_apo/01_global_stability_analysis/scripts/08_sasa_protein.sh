# Analysis: Protein SASA
# System: 02_5FWJ_apo
# Surface group: 23 (JmjC_ChainB)
# Replace repX with rep1, rep2, or rep3 before running.

gmx sasa -s md_repX_protein.tpr \
  -f md_0_60_center.xtc \
  -n jmjc.ndx \
  -o sasa_total_apo_repX.xvg \
  -or sasa_perres_apo_repX.xvg \
  -tu ns
