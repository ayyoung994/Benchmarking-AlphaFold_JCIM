# MM/GBSA Results

This directory contains MM/GBSA output files for the `02_5FWJ_apo` system.

## Folder organization

MM/GBSA results are organized by replica:

- `rep1/` — output files from the MM/GBSA calculation for replica 1
- `rep2/` — output files from the MM/GBSA calculation for replica 2
- `rep3/` — output files from the MM/GBSA calculation for replica 3
- `summary/` — cleaned summary tables for comparison across replicas

## Typical files in each replica folder

Replica-specific result folders may contain:

- `gmx_MMPBSA_apo_rep*.log` — execution log with command, selected groups, processed frames, and run status
- `FINAL_RESULTS_MMPBSA_apo_rep*.dat` — final MM/GBSA energy summary
- `FINAL_RESULTS_PER_FRAME_apo_rep*.dat` — per-frame MM/GBSA energy values
- `README.md` — short description of the files in that replica folder

## Summary files

The `summary/` folder may include cleaned tables such as:

- combined MM/GBSA binding energy summary across replicas
- per-replica comparison tables
- selected decomposition summary tables, where applicable

## Notes

- The same MM/GBSA workflow and parameter settings were applied across replicas unless otherwise noted.
- Not all result types may be present for every replica. For example, decomposition output files are included only when decomposition analysis was performed.
