#!/usr/bin/env bash
set -euo pipefail

# Read the existing jmjc.ndx and append pocket-consensus-related groups.
# Pocket_Consensus denotes the consensus binding-site residue set shared across multiple receptor models.
# Output is written back to the same file to update the master index.

STRUCTURE_FILE="frame0.pdb"
INDEX_IN="jmjc.ndx"
INDEX_OUT="jmjc.ndx"

gmx make_ndx -f "$STRUCTURE_FILE" -n "$INDEX_IN" -o "$INDEX_OUT" << 'EOF'
r 440 | r 442 | r 443 | r 495 | r 496 | r 501 | r 503 | r 510 | r 511 | r 512 | r 514 | r 515 | r 516 | r 517 | r 522 | r 524 | r 532 | r 534 | r 602 | r 614 | r 616
name 30 Pocket_Consensus

23 & 30
name 31 Pocket_JmjCB

31 & 3
name 32 Pocket_JmjCB_CA

31 & 4
name 33 Pocket_JmjCB_BB

q
EOF

echo "Updated ${INDEX_OUT}"
