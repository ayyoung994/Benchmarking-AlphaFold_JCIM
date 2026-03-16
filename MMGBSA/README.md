# MM/GBSA Directory

This directory contains the MM/GBSA workflows, input files, execution scripts, and result files for the four KDM5C benchmarking systems evaluated in this study.

## Systems included

- `01_5FWJ_holo` — holo system based on the experimental crystal structure
- `02_5FWJ_apo` — apo system based on the experimental crystal structure
- `03_AlphaFold_PAF` — system based on the public AlphaFold model
- `04_AlphaFold_CAF` — system based on the custom AlphaFold model
- `05_MMGBSA_Calculation_and_Summary` — notebooks and combined summary tables for cross-system MM/GBSA result processing

## Directory organization

This directory is organized by system. Each system-specific folder contains the files used to prepare, run, and summarize MM/GBSA calculations for that system.

Each system folder may include:

- `input/` — MM/GBSA input files, including `mmpbsa.in`, index files, and related setup files
- `scripts/` — shell scripts used to run MM/GBSA calculations for individual replicas
- `results/` — replica-level MM/GBSA output files and processed summary tables
- `README.md` — overview of the workflow, folder structure, and file descriptions for that system

Within the `results/` directory, files may be organized as:

- `rep1/`, `rep2/`, `rep3/` — output files generated from individual replica calculations
- `summary/` — processed summary tables used for comparison across replicas

## Main files

Representative MM/GBSA-related files in each system directory may include:

- `mmpbsa.in` — input parameter file for MM/GBSA calculations
- `*.ndx` — index files defining receptor and ligand groups
- `run_mmgbsa*.sh` — shell scripts used to execute MM/GBSA calculations
- `gmx_MMGBSA*.log` — run logs containing command-line details, selected groups, and execution status
- `FINAL_RESULTS_MMGBSA*.dat` — final MM/GBSA energy summary files
- `FINAL_RESULTS_PER_FRAME*.dat` — per-frame MM/GBSA energy output files

## Cross-system summary folder

The `05_MMGBSA_Calculation_and_Summary` folder contains:

- Jupyter notebooks used to extract, process, and summarize MM/GBSA results
- combined per-replica summary tables across all systems
- combined across-replica summary tables across all systems
- documentation describing the overall MM/GBSA post-processing workflow

## Notes

- Not all file types are present for every system.
- Some analyses, such as per-residue decomposition, are included only when that calculation was performed.
- File naming may vary slightly across systems depending on replica-specific naming conventions.
- Although some output filenames contain `MMPBSA`, files containing the `EGB` term correspond to MM/GBSA results.
- System-specific summary tables are stored in each system’s `results/summary/` directory, whereas combined cross-system summary tables are stored in `05_MMGBSA_Calculation_and_Summary/`.
