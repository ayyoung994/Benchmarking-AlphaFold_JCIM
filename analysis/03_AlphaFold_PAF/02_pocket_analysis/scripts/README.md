# Pocket Analysis Scripts

This directory contains shell scripts used for preprocessing and pocket-focused analysis of the `03_AlphaFold_PAF` system.

## Script organization

The scripts are arranged in workflow order.

### Template preprocessing scripts

These scripts use `repX` as a placeholder and should be edited to match the replica-specific filenames before use.

- `01_make_pocket_consensus_template.sh` — template for creating the pocket-related index groups used for downstream pocket analysis
- `02_center_pocket_trajectory_template.sh` — template for centering the trajectory and making molecules whole for pocket analysis
- `03_fit_pocket_core_template.sh` — template for fitting the trajectory to the JmjC core before pocket RMSD and related comparisons

### Analysis scripts

These scripts were used for the final pocket-focused calculations.

- `04_pocket_rmsd.sh` — pocket RMSD calculation
- `05_pocket_rg.sh` — pocket radius of gyration calculation
- `06_pocket_sasa.sh` — pocket SASA calculation
- `07_pocket_sasa_only.sh` — pocket-only SASA calculation

## Workflow order

The scripts follow this general workflow:

1. create pocket-related index groups
2. center and compact the trajectory
3. fit the trajectory to the JmjC core
4. calculate pocket RMSD
5. calculate pocket radius of gyration
6. calculate pocket SASA
7. calculate pocket-only SASA

## Replica note

- The template preprocessing scripts in this directory use `repX` as a placeholder. Replace `repX` with the appropriate replica identifier (for example, `rep1`, `rep2`, or `rep3`) before running the commands.
- The `03_AlphaFold_PAF` system was extended to 60 ns before downstream pocket analysis.
- Pocket preprocessing for this system used AlphaFold-based JmjC and pocket index groups defined directly from the residue range corresponding to the JmjC region, without chain-specific subdivision.

## Notes

- The template scripts are provided to document the common preprocessing workflow used before pocket-focused analysis.
- Interactive GROMACS selections are recorded as comments inside the relevant scripts.
- Pocket-related index groups were generated from the prepared `jmjc.ndx` workflow for this system.
