# 04_AlphaFold_CAF MM/GBSA

This directory contains MM/GBSA endpoint-energy input files, execution scripts, and result files for the `04_AlphaFold_CAF` system used in the KDM5C receptor-setup sensitivity study.

## System description

`04_AlphaFold_CAF` corresponds to the **custom AlphaFold-derived KDM5C receptor model** used in the manuscript. This receptor setup is referred to as **CAF**.

## Folder organization

- `input/` — shared MM/GBSA input files used for this system, including `mmpbsa.in` and the MM/GBSA index file
- `scripts/` — shell scripts used to run MM/GBSA calculations for individual replicas
- `results/` — replica-specific MM/GBSA outputs and summary files
- `README.md` — overview of the MM/GBSA workflow for this system

## Replica organization

MM/GBSA calculations were performed for three independent replicas of the `04_AlphaFold_CAF` system:

- `rep1`
- `rep2`
- `rep3`

The same MM/GBSA input settings and receptor/ligand group definitions were used for all three replicas unless otherwise noted.

## Main files

Typical files associated with this system include:

- `mmpbsa.in` — MM/GBSA endpoint-energy parameter file
- `jmjc_mmpbsa.ndx` — index file used to define receptor and ligand groups
- `run_mmgbsa_rep*.sh` — replica-specific execution scripts
- `gmx_MMGBSA_CAF_rep*.log` — execution log for each MM/GBSA run
- `FINAL_RESULTS_MMGBSA_CAF_rep*.dat` — final MM/GBSA endpoint-energy summary files
- `FINAL_RESULTS_PER_FRAME_CAF_rep*.dat` — per-frame MM/GBSA energy results

## Notes

- The receptor group for this system was defined from the extracted JmjC region of the CAF receptor setup.
- No crystallographic metal-ion groups were included in the MM/GBSA receptor definition for this AlphaFold-derived system.
- The ligand group was `DOL`.
- MM/GBSA values are provided as protocol-dependent endpoint-energy descriptors and should not be interpreted as absolute binding affinities or evidence of ligand potency.
