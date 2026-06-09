# Receptor-Setup Sensitivity in KDM5C

## Overview

This repository contains the input files, molecular dynamics workflows, MM/GBSA-related files, and post-simulation analysis outputs used in the **KDM5C benchmarking study**.

The project focuses on benchmarking crystal-structure-based and AlphaFold-derived receptor models using GROMACS-based molecular dynamics simulations and downstream comparative analyses.


## Repository Structure

- `inputs/` — system-specific input files required to reproduce the molecular dynamics systems
- `analysis/` — system-level and cross-system post-MD analysis workflows, processed outputs, and summary figures
- `MMGBSA/` — files related to MM/GBSA calculations and associated workflows
- `README.md` — repository-level documentation
- `LICENSE` — repository license information


## Systems Included

The repository includes workflows and files for the following benchmarked systems:

- `01_5FWJ_holo`
- `02_5FWJ_apo`
- `03_AlphaFold_PAF`
- `04_AlphaFold_CAF`


## Contents

The repository currently includes:

- molecular dynamics input files
- topology and structure files
- simulation parameter files (`.mdp`)
- replica-level simulation organization
- post-MD analysis scripts
- processed analysis outputs
- cross-system comparison tables and figures
- MM/GBSA workflow files


## Manuscript Status

The associated manuscript is currently under review.

Citation details will be added once the manuscript becomes publicly available.


## Notes

- This repository is intended to support reproducibility of the computational workflows described in the study.
- System-specific setup files are organized under `inputs/`, while downstream analyses are organized under `analysis/`.
- Summary-level comparisons across systems are provided in the cross-system analysis directories.
