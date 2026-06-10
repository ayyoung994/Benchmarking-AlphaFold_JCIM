# MM/GBSA Results

This directory contains MM/GBSA endpoint-energy output files for the `01_5FWJ_holo system`.

The folder label `01_5FWJ_holo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-retained** receptor setup.

## Folder organization

MM/GBSA results are organized by replica:

- `rep1/` — output files from the MM/GBSA calculation for replica 1
- `rep2/` — output files from the MM/GBSA calculation for replica 2
- `rep3/` — output files from the MM/GBSA calculation for replica 3
- `summary/` — cleaned summary tables for comparison across replicas

## Typical files in each replica folder

Replica-specific result folders may contain:

- `gmx_MMPBSA_holo_rep*.log` — execution log with command-line details, selected groups, processed frames, and run status
- `FINAL_RESULTS_MMPBSA_holo_rep*.dat` — final MM/GBSA endpoint-energy summary files
- `FINAL_RESULTS_PER_FRAME_holo_rep*.dat` — per-frame MM/GBSA energy values
- `README.md` — short description of the files in that replica folder

## Summary files

The `summary/` folder may include cleaned tables such as:

- combined MM/GBSA endpoint-energy summary across replicas
- per-replica comparison tables
- processed tables used for cross-system comparison

## Notes

- The same MM/GBSA workflow and parameter settings were applied across replicas unless otherwise noted.
- Only the MM/GBSA result files generated in this workflow are included in this directory.
- The internal label `holo` is retained in file and folder names for workflow continuity. In the manuscript, this system is described as **5FWJ metal-retained**.
- MM/GBSA values are provided as protocol-dependent endpoint-energy descriptors and should not be interpreted as absolute binding affinities or evidence of ligand potency.
