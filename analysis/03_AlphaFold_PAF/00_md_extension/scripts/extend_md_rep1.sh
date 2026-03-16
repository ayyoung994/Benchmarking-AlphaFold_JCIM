set -e

# Extend MD production run from 20 ns to 60 ns for Replica 1

# Step 1. Extend the production TPR to 60 ns
gmx convert-tpr \
  -s md_rep1.tpr \
  -o md_rep1_60.tpr \
  -until 60000

# Step 2. Continue the MD production run from checkpoint
gmx mdrun \
  -deffnm md_rep1 \
  -s md_rep1_60.tpr \
  -cpi md_rep1.cpt \
  -nb gpu \
  -ntmpi 1 \
  -ntomp 12 \
  -v \
  -noappend \
  -pin on
