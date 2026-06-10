# 02_5FWJ_apo MM/GBSA

This directory contains MM/GBSA input files, execution scripts, and result files for the `02_5FWJ_apo` system used in the KDM5C receptor-setup sensitivity study.

## System description

`02_5FWJ_apo` is an internal workflow label corresponding to the **5FWJ metal-depleted** receptor setup in the manuscript. This system was derived from the experimental 5FWJ structure, with crystallographic metal ions removed during receptor preparation.

The term `apo` is retained in folder and file names for workflow continuity. In the manuscript, this system should be described as 5FWJ metal-depleted, not as a fully characterized biochemical apo enzyme state.

## Folder organization

- `input/` — shared MM/GBSA input files used for this system, including `mmpbsa.in` and the MM/GBSA index file
- `scripts/` — shell scripts used to run MM/GBSA calculations for individual replicas
- `results/` — replica-specific MM/GBSA outputs and summary files
- `README.md` — overview of the MM/GBSA workflow for this system

## Replica organization

MM/GBSA calculations were performed for three independent replicas of the `02_5FWJ_apo` system:

- `rep1`
- `rep2`
- `rep3`

The same MM/GBSA input settings and receptor/ligand group definitions were used for all three replicas unless otherwise noted.

## Main files

Typical files associated with this system include:

- `mmpbsa.in` — MM/GBSA endpoint-energy parameter file
- `jmjc_mmpbsa.ndx` — index file used to define receptor and ligand groups
- `run_mmgbsa_rep*.sh` — replica-specific execution scripts
- `gmx_MMGBSA_apo_rep*.log` — execution log for each MM/GBSA run
- `FINAL_RESULTS_MMGBSA_apo_rep*.dat` — final MM/GBSA energy summaries
- `FINAL_RESULTS_PER_FRAME_apo_rep*.dat` — per-frame MM/GBSA energy results

## Notes

- The receptor group for this system was defined from the JmjC chain B region without including crystallographic metal-ion groups.
- The ligand group was `DOL`.
- The internal label `apo` is retained in file and folder names for workflow continuity. In the manuscript, this system is described as **5FWJ metal-depleted**.
- MM/GBSA values are provided as protocol-dependent endpoint-energy descriptors and should not be interpreted as absolute binding affinities or evidence of ligand potency.
