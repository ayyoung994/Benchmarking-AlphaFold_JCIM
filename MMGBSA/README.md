# MM/GBSA Directory

This directory contains MM/GBSA workflows and result files for the KDM5C benchmarking systems evaluated in this study.

## Systems included

- `01_5FWJ_holo` — crystal-structure-based holo system
- `02_5FWJ_apo` — crystal-structure-based apo system
- `03_AlphaFold_PAF` — public AlphaFold-derived model
- `04_AlphaFold_CAF` — custom AlphaFold-derived model

## Folder organization

This directory is organized into workflow components for MM/GBSA setup, execution, and result collection:

- `input/` — MM/GBSA input files, including `mmpbsa.in`, index files, and setup notes
- `scripts/` — shell scripts used to run MM/GBSA calculations for each system and replica
- `results/` — replica-specific MM/GBSA outputs and system-level summary tables
- `metadata/` — software version information and additional run metadata
- `README.md` — overview of the MM/GBSA workflow and file organization

Within the `results/` directory, each system-specific folder may contain:

- `rep1/`, `rep2/`, `rep3/` — raw output files from individual MM/GBSA runs for each replica
- `summary/` — cleaned summary tables for comparison across replicas and systems

## Main files

The main MM/GBSA-related files in this directory may include:

- `mmpbsa.in` — MM/GBSA input parameter file
- `*.ndx` — index files defining receptor and ligand groups
- `run_mmgbsa_*.sh` — execution scripts for MM/GBSA calculations
- `gmx_MMPBSA.log` — execution log containing the exact command, selected groups, and run status
- `FINAL_RESULTS_MMPBSA.dat` — final MM/GBSA energy summary
- `FINAL_RESULTS_PER_FRAME.dat` — per-frame MM/GBSA energy results
- `FINAL_DECOMP_MMPBSA.dat` — per-residue decomposition results, where applicable

## Notes

Not all MM/GBSA result types may be present for every system. For example, per-residue decomposition files are included only when decomposition analysis was performed.
