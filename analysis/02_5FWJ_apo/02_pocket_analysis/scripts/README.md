# Pocket Analysis Scripts

This directory contains shell scripts used for preprocessing and pocket-focused analysis of the `02_5FWJ_apo` system.

## Script organization

The scripts are arranged in workflow order.

### Preprocessing and setup scripts

- `01_make_pocket_consensus.sh` — creates the pocket-related index groups used for downstream pocket analysis
- `02_center_pocket_trajectory.sh` — template for centering the trajectory and making molecules whole for pocket analysis
- `03_fit_pocket_core.sh` — template for fitting the trajectory to the JmjC core before pocket RMSD and related comparisons

### Analysis scripts

These scripts were used for the final pocket-focused calculations.

- `03_pocket_rmsd.sh` — pocket RMSD calculation
- `04_pocket_rg.sh` — pocket radius of gyration calculation
- `05_pocket_sasa.sh` — pocket SASA calculation
- `06_pocket_sasa_only.sh` — pocket-only SASA calculation

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
- The `02_5FWJ_apo` system was analyzed directly from the available 60 ns production trajectory files and did not require a trajectory-reconstruction step before pocket analysis.

## Notes

- The template scripts are provided to document the common preprocessing workflow used before pocket-focused analysis.
- Interactive GROMACS selections are recorded as comments inside the relevant scripts.
- Pocket-related index groups were defined using the prepared `jmjc.ndx` workflow for this system.
