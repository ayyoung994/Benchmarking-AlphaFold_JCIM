# MM/GBSA Execution Scripts

This directory contains shell scripts used to run MM/GBSA calculations for the `04_AlphaFold_CAF` system.

## Contents

- `run_mmgbsa_rep1.sh` — MM/GBSA execution script for replica 1
- `run_mmgbsa_rep2.sh` — MM/GBSA execution script for replica 2
- `run_mmgbsa_rep3.sh` — MM/GBSA execution script for replica 3
- `README.md` — description of the scripts in this directory

## Workflow summary

The MM/GBSA workflow for each replica consisted of:

1. preparing receptor and ligand group selections from `jmjc.ndx`
2. preprocessing the trajectory using `gmx trjconv`
3. using the shared `mmpbsa.in` input file
4. running `gmx_MMPBSA` with the appropriate topology, trajectory, and group definitions

## Notes

- The same MM/GBSA settings were used for all three replicas of the `04_AlphaFold_CAF` system.
- For this system, the receptor group was defined from the JmjC region only, without including metal or cofactor groups.
- The ligand group used in the MM/GBSA workflow was `DOL`.
- Replica-specific scripts differ only in the input trajectory and structure files used for each run.
- Shared MM/GBSA input files are stored in the corresponding `input/` directory.
