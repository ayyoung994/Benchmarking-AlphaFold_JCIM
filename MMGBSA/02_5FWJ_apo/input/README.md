# MM/GBSA Input Files

This directory contains the input files used for MM/GBSA calculations for the `02_5FWJ_apo` system.

## Contents

- `mmpbsa.in` — MM/GBSA parameter file used for energy calculations
- `jmjc_mmpbsa.ndx` — index file defining the receptor and ligand groups used for MM/GBSA
- `README.md` — description of the input files in this directory

## Receptor and ligand definition

For the `02_5FWJ_apo` system, the MM/GBSA receptor group was defined from the JmjC Chain B region only, without including associated metal or cofactor groups.

The ligand group was:
- `DOL`

## Notes

- The MM/GBSA index file was prepared from `jmjc.ndx` using `gmx make_ndx`.
- The same MM/GBSA input settings were applied consistently across replicas for this system unless otherwise noted.
- Replica-specific trajectory and topology files are referenced during execution in the corresponding `scripts/` and `results/` directories.
