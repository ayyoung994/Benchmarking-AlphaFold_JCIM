# Analysis: Pocket index preparation
# System: 01_5FWJ_holo
# Note: Update residue selections if pocket definition changes.

gmx make_ndx -f frame0.pdb -n jmjc.ndx -o jmjc.ndx

# Residue selection used for consensus pocket:
# r 440 | r 442 | r 443 | r 495 | r 496 | r 501 | r 503 | r 510 | r 511 | r 512 | r 514 | r 515 | r 516 | r 517 | r 522 | r 524 | r 532 | r 534 | r 602 | r 614 | r 616
#
# Additional merged groups created:
# - Pre_pocket
# - Pre_pocket_JmjCB
# - Pre_pocket_JmjCB_CA
# - Pre_pocket_JmjCB_BB
