# Analysis Directory

This directory contains post-MD analysis workflows for the KDM5C benchmarking systems evaluated in this study.

## Systems included

- `01_5FWJ_holo` — crystal-structure-based holo system
- `02_5FWJ_apo` — crystal-structure-based apo system
- `03_AlphaFold_PAF` — public AlphaFold-derived model
- `04_AlphaFold_CAF` — custom AlphaFold-derived model

## Folder organization

Each system-specific folder is organized into analysis modules such as:

- `01_global_stability_analysis/` — global structural stability analyses, including RMSD, RMSF, radius of gyration, and SASA
- `02_pocket_analysis/` — pocket-focused analyses, including pocket RMSD, pocket radius of gyration, and pocket-related SASA metrics
- `03_ligand_behavior/` — ligand-focused analyses, including ligand RMSD, COM distance, and hydrogen bonds metrics

Within each analysis module, the following subfolders may be included:

- `scripts/` — shell scripts or helper scripts used to run each analysis
- `raw_outputs/` — raw files generated directly from analysis tools such as GROMACS
- `README.md` — brief documentation describing the analysis workflow and file contents

## Notes

Not all analysis modules apply to every system. For example, ligand behavior analysis may not be applicable to apo systems unless otherwise noted.
