# 01_5FWJ_holo MM/GBSA

This directory contains MM/GBSA endpoint-energy input files, execution scripts, and result files for the `01_5FWJ_holo` system used in the KDM5C receptor-setup sensitivity study.

## System description

`01_5FWJ_holo` is an internal workflow label corresponding to the **5FWJ metal-retained** receptor setup in the manuscript. This system was derived from the experimental 5FWJ structure, with crystallographic metal ions retained during protein preparation.

The term `holo` is retained in folder and file names for workflow continuity. In the manuscript, this system should be described as **5FWJ metal-retained**, not as a fully characterized biochemical holo enzyme state.

## Folder organization

- `input/` — shared MM/GBSA input files used for this system, including `mmpbsa.in` and the MM/GBSA index file
- `scripts/` — shell scripts used to run MM/GBSA calculations for individual replicas
- `results/` — replica-specific MM/GBSA outputs and summary files
- `README.md` — overview of the MM/GBSA workflow for this system

## Replica organization

MM/GBSA calculations were performed for three independent replicas of the `01_5FWJ_holo` system:

- `rep1`
- `rep2`
- `rep3`

The same MM/GBSA input settings and receptor/ligand group definitions were used for all three replicas unless otherwise noted.

## Main files

Typical files associated with this system include:

- `mmpbsa.in` — MM/GBSA endpoint-energy parameter file
- `jmjc_mmpbsa.ndx` — index file used to define receptor and ligand groups
- `run_mmgbsa_rep*.sh` — replica-specific execution scripts
- `gmx_MMGBSA_holo_rep*.log` — execution log for each run
- `FINAL_RESULTS_MMGBSA_holo_rep*.dat` — final MM/GBSA energy summary
- `FINAL_RESULTS_PER_FRAME_holo_rep*.dat` — per-frame MM/GBSA energy results

## Notes

- The receptor group for this system was defined from the JmjC chain B region together with retained crystallographic metal ions used in the 5FWJ metal-retained setup.
- The ligand group was `DOL`.
- No bonded metal–residue coordination restraints were added during MD production; therefore, MM/GBSA results should be interpreted in the context of the nonbonded metal treatment used in the simulations.
- MM/GBSA values are provided as protocol-dependent endpoint-energy descriptors and should not be interpreted as absolute binding affinities or evidence of ligand potency.
