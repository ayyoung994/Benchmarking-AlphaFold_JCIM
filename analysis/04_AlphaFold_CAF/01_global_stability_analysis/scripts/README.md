# Global Stability Analysis Scripts

This directory contains shell scripts used for preprocessing and global stability analysis of the `04_AlphaFold_CAF` system.

## Script organization

The scripts are arranged in workflow order.

### Template preprocessing scripts
These scripts use `repX` as a placeholder and should be edited to match the replica-specific filenames before use.

- `01_prepare_0_60ns_trajectory.sh` — template for preparing a continuous 0–60 ns trajectory when reconstruction from split trajectory parts is required
- `02_make_jmjc_index.sh` — template for generating JmjC-related index groups
- `03_center_trajectory.sh` — template for centering the trajectory and making molecules whole
- `04_fit_to_core.sh` — template for fitting the trajectory to the JmjC core C-alpha atoms
- `05_extract_protein_tpr.sh` — template for generating a protein-only TPR for downstream analyses

### Analysis scripts
These scripts were used for the final global stability calculations.

- `06_rmsd_ca.sh` — RMSD calculation
- `07_rmsf_ca.sh` — RMSF calculation
- `08_rg.sh` — radius of gyration calculation
- `09_sasa_protein.sh` — protein SASA calculation

## Workflow order

The scripts follow this general workflow:

1. prepare a continuous 0–60 ns trajectory when needed
2. generate index groups
3. center and compact the trajectory
4. fit the trajectory to the JmjC core
5. extract a protein-only TPR
6. calculate RMSD
7. calculate RMSF
8. calculate radius of gyration
9. calculate SASA

## Replica note

- The template preprocessing scripts in this directory use `repX` as a placeholder. Replace `repX` with the appropriate replica identifier (for example, `rep1`, `rep2`, or `rep3`) and adjust trajectory part filenames as needed before running the commands.
- The `04_AlphaFold_CAF` system was extended to 60 ns before downstream analysis.
- `01_prepare_0_60ns_trajectory.sh` documents the reconstruction of a continuous 0–60 ns trajectory from split trajectory files after MD extension.

## Notes

- The template scripts are provided to document the common preprocessing workflow used before global stability analysis.
- Unlike the crystal-structure-based systems, the AlphaFold-based system used JmjC index groups defined directly from the residue range corresponding to the JmjC region, without chain-specific subdivision.
- Interactive GROMACS selections are recorded as comments inside each script.
