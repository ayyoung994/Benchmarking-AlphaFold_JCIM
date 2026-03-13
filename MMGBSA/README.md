# MM/GBSA Directory

This directory contains MM/GBSA workflows and result files for the KDM5C benchmarking systems evaluated in this study.

## Systems included

- `01_5FWJ_holo` — crystal-structure-based holo system
- `02_5FWJ_apo` — crystal-structure-based apo system
- `03_AlphaFold_PAF` — public AlphaFold-derived model
- `04_AlphaFold_CAF` — custom AlphaFold-derived model

## Folder organization

This directory is organized by system. Each system-specific folder contains the MM/GBSA input files, execution scripts, and result files for that system.

Each system folder may include:

- `input/` — shared MM/GBSA input files, including `mmpbsa.in`, index files, and setup notes
- `scripts/` — shell scripts used to run MM/GBSA calculations for individual replicas
- `results/` — replica-specific MM/GBSA outputs and system-level summary tables
- `README.md` — overview of the MM/GBSA workflow and file organization for that system

Within the `results/` directory, each system-specific folder may contain:

- `rep1/`, `rep2/`, `rep3/` — output files from individual MM/GBSA runs for each replica
- `summary/` — cleaned summary tables for comparison across replicas

## Main files

The main MM/GBSA-related files in each system directory may include:

- `mmpbsa.in` — MM/GBSA input parameter file
- `*.ndx` — index files defining receptor and ligand groups
- `run_mmgbsa_rep*.sh` — execution scripts for MM/GBSA calculations
- `gmx_MMPBSA*.log` — execution logs containing the exact command, selected groups, and run status
- `FINAL_RESULTS_MMPBSA*.dat` — final MM/GBSA energy summaries
- `FINAL_RESULTS_PER_FRAME*.dat` — per-frame MM/GBSA energy results

## Notes

Not all MM/GBSA result types may be present for every system. For example, per-residue decomposition files are included only when decomposition analysis was performed. File naming may vary slightly across systems depending on the replica-specific naming convention used.
