# 02_5FWJ_apo Analysis

This directory contains the post-simulation analysis workflow for the `02_5FWJ_apo` system in the KDM5C benchmarking study.

## System overview

`02_5FWJ_apo` represents the crystal-structure-based apo receptor system used for molecular dynamics simulation and subsequent trajectory analysis.

## Directory structure

- `scripts/`  
  Analysis scripts used for this system

- `raw_outputs/`  
  Raw outputs produced directly during trajectory analysis, including intermediate files and software-generated results

- `processed_tables/`  
  Cleaned summary tables derived from the raw outputs and used for comparison across replicas and receptor models

## Scope of analysis

This folder contains the workflow used to analyze the holo system after MD simulation.  
Depending on the script set, analyses may include RMSD, RMSF, ligand stability, distance-based measurements, and other post-processing steps relevant to this receptor condition.

## Reproducibility note

This folder is organized separately from the other systems because the post-MD analyses were system-dependent and not fully identical across all receptor models.

## Related input files

The corresponding simulation preparation and input files are stored in:

`inputs/02_5FWJ_apo/`
