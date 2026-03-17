# Global Stability Summary

This directory contains the final cross-system outputs for the global stability analysis of the four benchmarked systems:

- 5FWJ_holo
- 5FWJ_apo
- PAF
- CAF

The files in this folder are comparison-ready summary outputs generated after processing the per-system and per-replica analysis results.

## Contents

- `Global_stability.png`  
  Final comparison figure showing the global stability metrics across all four systems.

- `global_debug_all_systems.csv`  
  Combined debug table containing processed values collected from all systems. This file is intended for traceability and quality checking of the merged analysis outputs.

- `global_summary_all_systems.csv`  
  Final summary table containing the global stability statistics across all systems.

## Notes

- This folder contains only the integrated cross-system outputs.
- Per-system and per-replica intermediate files are stored in the corresponding system-specific analysis directories.
- The purpose of this directory is to provide a clean location for the final comparison figure and merged summary tables used for interpretation, reporting, and manuscript preparation.
