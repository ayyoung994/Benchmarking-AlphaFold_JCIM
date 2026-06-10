# Analysis Directory

This directory contains post-MD analysis workflows for the KDM5C receptor-setup sensitivity study.

## Systems included

The following system folders are included:

- `01_5FWJ_holo` — internal workflow label corresponding to **5FWJ metal-retained**
- `02_5FWJ_apo` — internal workflow label corresponding to **5FWJ metal-depleted**
- `03_AlphaFold_PAF` — public AlphaFold-derived model (**PAF**)
- `04_AlphaFold_CAF` — custom AlphaFold-derived model (**CAF**)
- `05_MD_post_analyses_calculation_and_summary` — cross-system summary tables and final comparison figures

The terms `holo` and `apo` are retained in folder names for workflow continuity. In the manuscript, these systems are described as **5FWJ metal-retained** and **5FWJ metal-depleted**, respectively.

## Folder organization

Each system-specific folder is organized into analysis modules such as:

- `01_global_stability_analysis/` — global structural stability analyses, including RMSD, RMSF, radius of gyration, and SASA
- `02_pocket_analysis/` — pocket-focused analyses, including pocket RMSD, pocket radius of gyration, and pocket-related SASA metrics
- `03_ligand_behavior/` — ligand-focused analyses, including ligand RMSD, ligand–pocket COM distance, and hydrogen-bond metrics

Within each analysis module, the following subfolders or files may be included:

- `scripts/` — shell scripts or helper scripts used to run each analysis
- `processed_outputs/` — analysis output files and processed per-system summary tables used for downstream comparison and plotting
- `README.md` — documentation describing the analysis workflow and file contents

## Notes

- Not all analysis modules or output file types are necessarily present for every receptor setup.
- Ligand-focused analyses were performed for systems containing the representative ligand `DOL`.
- Cross-system comparison tables and final summary figures are organized separately under `05_MD_post_analyses_calculation_and_summary/`.
- Internal labels such as `holo` and `apo` are retained for workflow continuity and should be mapped to the manuscript terms **5FWJ metal-retained** and **5FWJ metal-depleted**.
- The outputs in this directory are intended to support reproducibility, traceability, downstream comparison, figure preparation, and manuscript reporting.
