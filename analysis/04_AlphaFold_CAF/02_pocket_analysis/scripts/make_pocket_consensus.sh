#!/usr/bin/env bash
set -euo pipefail

# Replace repX with rep1, rep2, or rep3 before running.
# Read the existing jmjc.ndx and append pocket-consensus-related groups.
# Pocket_Consensus refers to the binding-site residue set shared across multiple receptor models.
# Output is written back to the same file to update the master index.

TPR_FILE="md_repX_60.tpr"
INDEX_IN="jmjc.ndx"
INDEX_OUT="jmjc.ndx"

gmx make_ndx -f "$TPR_FILE" -n "$INDEX_IN" -o "$INDEX_OUT" << 'EOF'
r 440 | r 442 | r 443 | r 495 | r 496 | r 501 | r 503 | r 510 | r 511 | r 512 | r 514 | r 515 | r 516 | r 517 | r 522 | r 524 | r 532 | r 534 | r 602 | r 614 | r 616
name 28 Pocket_Consensus

28 & 21
name 29 Pocket_JmjC_all

29 & 3
name 30 Pocket_JmjC_CA

29 & 4
name 31 Pocket_JmjC_BB

q
EOF

echo "Updated ${INDEX_OUT}"
