# Trajectory Preparation Directory

This directory contains the trajectory preprocessing workflows used to generate analysis-ready files for the four receptor systems included in this study:

- `01_5FWJ_holo`
- `02_5FWJ_apo`
- `03_AlphaFold_PAF`
- `04_AlphaFold_CAF`

## Purpose

These folders store the steps performed after MD simulation but before the final analyses.  
They include preparation of cleaned, fitted, centered, merged, or otherwise analysis-ready trajectories and related files.

## Typical contents

Each system-specific folder may contain:

- `scripts/`  
  Scripts or command records used for trajectory preprocessing

- `raw_outputs/`  
  Intermediate files generated during preprocessing

- `README.md`  
  Notes describing the preprocessing workflow for that system

## Typical preprocessing steps

Depending on the system, trajectory preparation may include:

- trajectory extension or concatenation
- removal of periodic boundary condition artifacts
- centering and fitting
- generation of index groups
- extraction of specific time windows
- conversion of topology or trajectory files for downstream analysis

## Notes

Trajectory preparation is organized separately from `analysis/` because these steps are intended to generate standardized, analysis-ready trajectories rather than final scientific results.

The corresponding MD setup and simulation input files are stored under the `inputs/` directory.
