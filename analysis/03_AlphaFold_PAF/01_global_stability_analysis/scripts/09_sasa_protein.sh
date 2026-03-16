# Analysis: Protein SASA
# System: 03_AlphaFold_PAF
# Surface group: 21 (JmjC_all)
# Replace repX with rep1, rep2, or rep3 before running.

gmx sasa -s md_repX_60_protein.tpr \
  -f md_0_60_center.xtc \
  -n jmjc.ndx \
  -o sasa_total_PAF_60_repX.xvg \
  -or sasa_perres_PAF_60_repX.xvg \
  -tu ns
