# MM/GBSA Input Files

This directory contains the input files used for MM/GBSA endpoint-energy calculations for the `02_5FWJ_apo system`.

The folder label `02_5FWJ_apo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-depleted** receptor setup.

## Contents

- `mmpbsa.in` — MM/GBSA endpoint-energy parameter file
- `jmjc.ndx` — index file used for receptor and ligand group selection in the MM/GBSA workflow
- `README.md` — description of the input files in this directory

## Receptor and ligand definition

For the `02_5FWJ_apo` system, the MM/GBSA receptor group was defined from the JmjC Chain B region only, without including crystallographic metal-ion groups.

The ligand group was:
- `DOL`

## Notes

- For this system, MM/GBSA group selection was performed using `jmjc.ndx` directly.
- A separate MM/GBSA-specific index file was not generated for this system.
- The same MM/GBSA input settings were applied consistently across replicas for this system unless otherwise noted.
- Replica-specific trajectory and topology files are referenced during execution in the corresponding `scripts/` and `results/` directories.
- The internal label `apo` is retained in file and folder names for workflow continuity. In the manuscript, this system is described as **5FWJ metal-depleted**, not as a fully characterized biochemical apo enzyme state.
- MM/GBSA values are provided as protocol-dependent endpoint-energy descriptors and should not be interpreted as absolute binding affinities or evidence of ligand potency.
