# Ligand Behavior Summary

This directory contains the final cross-system outputs for the ligand behavior analysis of the benchmarked ligand-bound systems.

## Systems included

- `5FWJ_holo`
- `5FWJ_apo`
- `PAF`
- `CAF`

## Contents

- `ligand_analysis.png`  
  Final comparison figure showing ligand behavior metrics across the analyzed systems.

- `ligand_summary_all_systems.csv`  
  Summary table containing replica-level statistics (20–60 ns mean ± SD) and replica-averaged values for the ligand behavior metrics across all systems.

## Metrics included

The current summary table includes:

- ligand heavy-atom RMSD (nm)
- ligand–pocket center-of-mass distance (nm)

## Notes

- This directory contains only integrated cross-system summary outputs.
- Per-system and per-replica source files are organized in the corresponding system-specific ligand behavior analysis directories.
- The values reported here were used for downstream comparison, interpretation, and plotting.
