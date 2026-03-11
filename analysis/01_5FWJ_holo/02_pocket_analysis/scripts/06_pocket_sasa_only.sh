# Analysis: Pocket SASA only
# System: 01_5FWJ_holo
# Surface group: Pre_pocket_JmjCB
# Replace repX with rep1, rep2, or rep3 before running.

gmx sasa -s md_repX.tpr \
  -f md_0_60_center_4.xtc \
  -n jmjc.ndx \
  -surface 'group "Pre_pocket_JmjCB"' \
  -o sasa_Pocketonly_holo_repX.xvg \
  -tu ns
