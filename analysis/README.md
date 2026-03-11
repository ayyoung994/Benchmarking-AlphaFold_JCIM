# Analysis Directory

This directory contains post-MD analysis workflows for the KDM5C benchmarking systems evaluated in this study.

## Systems included

- `01_5FWJ_holo` — crystal-structure-based holo system
- `02_5FWJ_apo` — crystal-structure-based apo system
- `03_AlphaFold_PAF` — public AlphaFold-derived model
- `04_AlphaFold_CAF` — custom AlphaFold-derived model

## Folder organization

Each system-specific folder contains:

- `scripts/`  
  Analysis scripts used for calculations such as RMSD, RMSF, ligand behavior, COM distance, and related post-processing

- `raw_outputs/`  
  Raw files produced during analysis (for example `.xvg`, `.dat`, or other intermediate outputs)

- `processed_tables/`  
  Cleaned summary tables and exported values used for comparison across replicas and receptor models

- `README.md`  
  A brief description of the workflow and any system-specific analysis considerations

## Rationale

The analysis workflows were organized by system because the post-simulation analyses were not completely identical for all receptor models.  
This structure preserves the exact workflow used for each system and improves reproducibility.

## Related directories

The corresponding MD preparation and simulation input files are stored in the `inputs/` directory.
