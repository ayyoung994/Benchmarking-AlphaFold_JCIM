# Ligand Behavior Analysis

This directory contains the ligand behavior analyses for the `01_5FWJ_holo` simulation set.  
These analyses were performed to characterize ligand stability, positional retention, and interaction persistence within the binding pocket across three independent MD replicas.

## Directory structure

- `raw_outputs/` — raw GROMACS output files (`.xvg`) for ligand RMSD, ligand–pocket COM distance, and hydrogen bond analyses
- `scripts/` — analysis scripts used to calculate, process, and plot ligand behavior metrics
- `README.md` — documentation for this analysis module

## Metrics included

### 1. Ligand RMSD
Ligand RMSD was used to monitor deviations of the ligand conformation and pose relative to the initial reference structure during the simulation.

### 2. Ligand–pocket COM distance
The center-of-mass distance between the ligand and the binding pocket was calculated to assess spatial retention of the ligand within the pocket.

### 3. Ligand–protein hydrogen bonds
Hydrogen bond analysis was performed to evaluate the persistence of ligand–receptor polar contacts over time.

## Purpose

The combined interpretation of these metrics allows discrimination between:
- stable ligand retention,
- pose rearrangement within the pocket,
- and partial or complete ligand dissociation.

## Reproducibility

All raw outputs required for this analysis are provided in `raw_outputs/`, and the scripts required to reproduce the processed results are provided in `scripts/`.
