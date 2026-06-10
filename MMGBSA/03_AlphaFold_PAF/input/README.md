# MM/GBSA Input Files

This directory contains the input files used for MM/GBSA endpoint-energy calculations for the `03_AlphaFold_PAF system`.

The folder label `03_AlphaFold_PAF` corresponds to the **public AlphaFold-derived KDM5C receptor model** used in the manuscript. This receptor setup is referred to as **PAF**.

## Contents

- `mmpbsa.in` — MM/GBSA endpoint-energy parameter file
- `jmjc.ndx` — index file used for receptor and ligand group selection in the MM/GBSA workflow
- `README.md` — description of the input files in this directory

## Receptor and ligand definition

For the `03_AlphaFold_PAF system`, the MM/GBSA receptor group was defined from the extracted JmjC region of the PAF receptor setup.

No crystallographic metal-ion groups were included in the MM/GBSA receptor definition for this AlphaFold-derived system.

The ligand group was:
- `DOL`

## Notes

- For this system, MM/GBSA group selection was performed using `jmjc.ndx` directly.
- A separate MM/GBSA-specific index file was not generated for this system.
- The same MM/GBSA input settings were applied consistently across replicas for this system unless otherwise noted.
- Replica-specific trajectory and topology files are referenced during execution in the corresponding `scripts/` and `results/` directories.
- MM/GBSA values are provided as protocol-dependent endpoint-energy descriptors and should not be interpreted as absolute binding affinities or evidence of ligand potency.
