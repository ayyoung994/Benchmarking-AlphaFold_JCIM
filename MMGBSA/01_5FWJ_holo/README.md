# 01_5FWJ_holo MM/GBSA

This directory contains MM/GBSA input files, execution scripts, and result files for the `01_5FWJ_holo` system in the KDM5C benchmarking study.

## System description

`01_5FWJ_holo` is the crystal-structure-based holo system derived from the experimental 5FWJ model.

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

- `mmpbsa.in` — MM/GBSA parameter file
- `jmjc_mmpbsa.ndx` — index file used to define receptor and ligand groups
- `run_mmgbsa_rep*.sh` — replica-specific execution scripts
- `gmx_MMPBSA_holo_rep*.log` — execution log for each run
- `FINAL_RESULTS_MMPBSA_holo_rep*.dat` — final MM/GBSA energy summary
- `FINAL_RESULTS_PER_FRAME_holo_rep*.dat` — per-frame MM/GBSA energy results

## Notes

The receptor group for this holo system was defined from the JmjC Chain B region together with associated metal/cofactor groups. The ligand group was `DOL`.
