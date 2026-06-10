# MM/GBSA Results

This directory contains MM/GBSA endpoint-energy output files for the `04_AlphaFold_CAF system`.

The folder label `04_AlphaFold_CAF` corresponds to the **custom AlphaFold-derived KDM5C receptor model** used in the manuscript. This receptor setup is referred to as **CAF**.

## Folder organization

MM/GBSA results are organized by replica:

- `rep1/` — output files from the MM/GBSA calculation for replica 1
- `rep2/` — output files from the MM/GBSA calculation for replica 2
- `rep3/` — output files from the MM/GBSA calculation for replica 3
- `summary/` — cleaned summary tables for comparison across replicas

## Typical files in each replica folder

Replica-specific result folders may contain:

- `gmx_MMPBSA_CAF_rep*.log` — execution log with command-line details, selected groups, processed frames, and run status
- `FINAL_RESULTS_MMPBSA_CAF_rep*.dat` — final MM/GBSA endpoint-energy summary files
- `FINAL_RESULTS_PER_FRAME_CAF_rep*.dat` — per-frame MM/GBSA energy values
- `README.md` — short description of the files in that replica folder

## Summary files

The `summary/` folder may include cleaned tables such as:

- combined MM/GBSA binding energy summary across replicas
- per-replica comparison tables
- processed tables used for cross-system comparison

## Notes

- The same MM/GBSA workflow and parameter settings were applied across replicas unless otherwise noted.
- Only the MM/GBSA result files generated in this workflow are included in this directory.
- No crystallographic metal-ion groups were included in the MM/GBSA receptor definition for this AlphaFold-derived system.
- MM/GBSA values are provided as protocol-dependent endpoint-energy descriptors and should not be interpreted as absolute binding affinities or evidence of ligand potency.
