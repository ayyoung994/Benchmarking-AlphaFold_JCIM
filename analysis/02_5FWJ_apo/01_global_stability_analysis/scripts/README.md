# Global Stability Analysis Scripts

This directory contains shell scripts used for preprocessing and global stability analysis of the `02_5FWJ_apo system`.

The folder label `02_5FWJ_apo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-depleted** receptor setup.

## Script organization

The scripts are arranged in workflow order.

### Template preprocessing scripts
These scripts use `repX` as a placeholder and should be edited to match the replica-specific filenames before use.

- `01_make_jmjc_index.sh` — template for generating JmjC- and pocket-related index groups
- `02_center_trajectory.sh` — template for centering the trajectory and making molecules whole
- `03_fit_to_core.sh` — template for fitting the trajectory to the JmjC core Cα atoms
- `04_extract_protein_tpr.sh` — template for generating a protein-only TPR for downstream analyses

### Analysis scripts
These scripts were used for the final global stability calculations.

- `05_rmsd_ca.sh` — RMSD calculation
- `06_rmsf_ca.sh` — RMSF calculation
- `07_rg.sh` — radius of gyration calculation
- `08_sasa_protein.sh` — protein SASA calculation

## Workflow order

The scripts follow this general workflow:

1. generate index groups
2. center and compact the trajectory
3. fit the trajectory to the JmjC core
4. extract a protein-only TPR
5. calculate RMSD
6. calculate RMSF
7. calculate radius of gyration
8. calculate SASA

## Replica note

- The template preprocessing scripts in this directory use `repX` as a placeholder. Replace `repX` with the appropriate replica identifier, such as `rep1`, `rep2`, or `rep3` before running the commands.
- Unlike the `01_5FWJ_holo` workflow, the `02_5FWJ_apo` workflow did not require a trajectory-reconstruction step before preprocessing.
- The **5FWJ metal-depleted** system was analyzed directly from the available 60 ns production trajectory files.

## Notes

- The template scripts are provided to document the common preprocessing workflow used before global stability analysis.
- Interactive GROMACS selections are recorded as comments inside each script.
- The internal label `apo` is retained in script and file names for workflow continuity. In the manuscript, this system is described as **5FWJ metal-depleted**, not as a fully characterized biochemical apo enzyme state.
