# MM/GBSA Input Files

This directory contains the input files used for MM/GBSA calculations for the `01_5FWJ_holo` system.

## Contents

- `mmpbsa.in` — MM/GBSA parameter file used for energy calculation
- `jmjc_mmpbsa.ndx` — index file defining the receptor and ligand groups used for MM/GBSA
- `README.md` — description of the input files in this directory

## Receptor and ligand definition

For the holo 5FWJ system, the MM/GBSA receptor group was defined from the JmjC Chain B region together with associated metal/cofactor groups:

- `JmjC_ChainB`
- `MG`
- `ZN`
- `MN2P`

These groups were merged into a new receptor group:
- `Receptor_JmjC_B_holo`

The ligand group was:
- `DOL`

## Notes

- The MM/GBSA index file was prepared from `jmjc.ndx` using `gmx make_ndx`.
- The same MM/GBSA input settings were applied consistently for this system unless otherwise noted.
- Replica-specific trajectory and topology files are referenced during execution in the corresponding `scripts/` and `results/` directories.
