# KDM5C Catalytic-Site Simulations Across Distinct Receptor Setups

## Overview

This repository contains input files, molecular dynamics workflows, MM/GBSA-related files, and post-simulation analysis outputs used in a comparative receptor-setup study of KDM5C catalytic-site modeling.

The project compares an experimental 5FWJ-derived receptor with public and custom AlphaFold-derived KDM5C receptor representations. Pocket mapping and exploratory molecular docking were performed for the 5FWJ metal-depleted, PAF, and CAF receptor conditions. Replicate molecular dynamics simulations were subsequently performed for four receptor conditions: 5FWJ metal-retained, 5FWJ metal-depleted, PAF, and CAF.

The analyses focus on differences in catalytic-pocket definition, receptor-specific docking environments, and trajectory-based ligand-pose behavior across the evaluated receptor conditions. Because receptor coordinates, pocket definitions, docking configurations, and metal treatment were not independently varied, the results are interpreted as differences among complete receptor setups rather than isolated effects of individual preparation variables.

The analyses are intended to support comparative receptor-setup assessment and reproducibility. They are not intended to establish experimental ligand binding, KDM5C inhibitory activity, therapeutic relevance, or superiority of any receptor representation.


## Repository Structure

- `inputs/` — system-specific input files required to reproduce the molecular dynamics systems
- `analysis/` — system-level and cross-system post-MD analysis workflows, processed outputs, and summary figures
- `MMGBSA/` — files related to MM/GBSA endpoint energy calculations and associated workflows
- `README.md` — repository-level documentation
- `LICENSE` — repository license information


## Systems Included

The repository includes workflows and files for the following benchmarked systems:

- `01_5FWJ_holo`— internal workflow label corresponding to **5FWJ metal-retained**
- `02_5FWJ_apo `— internal workflow label corresponding to **5FWJ metal-depleted**
- `03_AlphaFold_PAF` — public AlphaFold-derived KDM5C model (**PAF**)
- `04_AlphaFold_CAF` — custom AlphaFold-derived KDM5C model (**CAF**)

The terms `holo` and `apo` are retained in folder names for workflow continuity. In the manuscript, these systems are described as **5FWJ metal-retained** and **5FWJ metal-depleted**, respectively.

## Contents

The repository currently includes:

- molecular dynamics input files for each receptor setup
- topology and structure files
- simulation parameter files (`.mdp`)
- replica-level simulation organization
- post-MD analysis scripts
- processed analysis outputs
- cross-system comparison tables and figures
- MM/GBSA endpoint-energy workflow files
- README files documenting folder-specific workflows


## Manuscript Status

The associated manuscript is currently under review.

Citation details, including the final article DOI, will be added once the manuscript becomes publicly available.


## Notes

- This repository is intended to support reproducibility and traceability of the computational workflows described in the study.
- System-specific setup files are organized under `inputs/`, while downstream post-MD analyses are organized under `analysis/`.
- MM/GBSA-related files and workflow materials are organized under `MMGBSA/`.
- Summary-level comparisons across receptor setups are provided in the cross-system analysis directories.
- Internal folder labels such as `holo` and `apo` are retained for workflow continuity; in the manuscript, these correspond to **5FWJ metal-retained** and **5FWJ metal-depleted**, respectively.
