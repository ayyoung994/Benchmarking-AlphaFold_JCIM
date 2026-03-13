# MM/GBSA Input Files

This directory contains the input files used for MM/GBSA calculations for the `04_AlphaFold_CAF` system.

## Contents

- `mmpbsa.in` — MM/GBSA parameter file used for energy calculations
- `jmjc.ndx` — index file used for receptor and ligand group selection in the MM/GBSA workflow
- `README.md` — description of the input files in this directory

## Receptor and ligand definition

For the `04_AlphaFold_CAF` system, the MM/GBSA receptor group was defined from the JmjC region only, without including associated metal or cofactor groups.

The ligand group was:
- `DOL`

## Notes

- For this system, MM/GBSA group selection was performed using `jmjc.ndx` directly.
- A separate MM/GBSA-specific index file was not generated for this system.
- The same MM/GBSA input settings were applied consistently across replicas for this system unless otherwise noted.
- Replica-specific trajectory and topology files are referenced during execution in the corresponding `scripts/` and `results/` directories.
