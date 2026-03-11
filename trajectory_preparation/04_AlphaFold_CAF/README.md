# 04_AlphaFold_CAF Trajectory Preparation

This directory contains the trajectory preprocessing workflow for the `04_AlphaFold_CAF` system in the KDM5C benchmarking study.

## System overview

`04_AlphaFold_CAF` represents the custom AlphaFold-derived receptor system used for molecular dynamics simulation.

## Purpose

This folder stores the steps performed to generate analysis-ready trajectories and related files for the custom AlphaFold-derived system after MD simulation.

## Directory structure

- `scripts/`  
  Scripts or command records used for trajectory preprocessing

- `raw_outputs/`  
  Intermediate files generated during preprocessing

- `README.md`  
  Notes describing the preprocessing workflow for this system

## Scope of preprocessing

Depending on the workflow, preprocessing steps may include:

- trajectory concatenation or extension
- correction of periodic boundary condition artifacts
- centering and fitting
- generation of index groups
- extraction of selected time windows
- conversion of topology or trajectory files for downstream analysis

## Reproducibility note

This folder is organized separately from `analysis/` because it contains preprocessing steps used to prepare standardized, analysis-ready trajectories rather than final scientific analyses.

## Related input files

The corresponding simulation preparation and input files are stored in:

`inputs/04_AlphaFold_CAF/`
