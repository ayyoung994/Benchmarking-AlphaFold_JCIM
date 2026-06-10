# MM/GBSA Input Files

This directory contains the input files used for MM/GBSA endpoint-energy calculations for the `01_5FWJ_holo system`.

The folder label `01_5FWJ_holo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-retained** receptor setup.

## Contents

- `mmpbsa.in` — MM/GBSA endpoint-energy parameter file
- `jmjc_mmpbsa.ndx` — index file defining receptor and ligand groups used for MM/GBSA calculations
- `README.md` — description of the input files in this directory

## Receptor and ligand definition

For the `01_5FWJ_holo system`, the MM/GBSA receptor group was defined from the JmjC chain B region together with the retained crystallographic metal-ion groups used in the 5FWJ metal-retained setup:

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
- The internal labels `holo` and `Receptor_JmjC_B_holo` are retained in file and group names for workflow continuity. In the manuscript, this system is described as **5FWJ metal-retained**.
- MM/GBSA values are provided as protocol-dependent endpoint-energy descriptors and should not be interpreted as absolute binding affinities or evidence of ligand potency.
