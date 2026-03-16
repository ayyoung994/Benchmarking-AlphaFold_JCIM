#!/usr/bin/env bash
set -e

# Template script for creating JmjC-related index groups
# for downstream analyses in AlphaFold-based systems.
#
# Replace `md_repX_60.tpr` with the replica-specific TPR filename.

gmx make_ndx \
  -f md_repX_60.tpr \
  -o jmjc.ndx

# Interactive commands used in make_ndx:
# r 468-634
# name 21 JmjC_all
# 21 & 3
# name 22 JmjC_CA
# 21 & 7
# name 23 JmjC_MainChainH
# q
