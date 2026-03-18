# Ligand Behavior Analysis — 03_AlphaFold_PAF

## Overview

This directory contains the ligand behavior analysis workflow for the **03_AlphaFold_PAF** molecular dynamics simulation set.

The analyses were performed to evaluate ligand stability, positional retention, and interaction persistence within the binding pocket across **three independent MD replicas**. Together, these metrics provide a focused assessment of whether the ligand remains stably associated with the binding region, undergoes pose rearrangement, or shows signs of partial or complete dissociation.

---

## Directory Structure

- `processed_outputs/` — processed ligand behavior output files, including replica-level `.xvg` files and per-system summary tables
- `scripts/` — shell scripts used for trajectory preparation and ligand behavior analysis
- `README.md` — documentation for this ligand behavior analysis module

---

## Analysis Components

### 1. Ligand RMSD

Ligand heavy-atom RMSD was calculated to monitor changes in ligand position and conformation relative to the reference structure over the course of the simulation.

This metric is useful for evaluating:
- ligand pose stability,
- conformational rearrangement,
- and major deviations from the initial bound state.

### 2. Ligand–Pocket Center-of-Mass Distance

The center-of-mass (COM) distance between the ligand and the selected binding-pocket reference group was calculated to assess positional retention of the ligand within the pocket environment.

This metric helps identify:
- stable residence within the binding site,
- gradual displacement,
- or larger-scale movement away from the pocket.

### 3. Ligand–Protein Hydrogen Bonds

Hydrogen bond analysis was performed to quantify polar interactions formed between the ligand and the protein during the trajectory.

This metric provides information on:
- persistence of ligand–protein polar contacts,
- changes in interaction patterns across replicas,
- and the degree of interaction support for the bound state.

---

## Interpretation

The combined interpretation of ligand RMSD, ligand–pocket COM distance, and ligand–protein hydrogen bond profiles allows discrimination between different ligand behaviors, including:

- stable ligand retention within the binding pocket,
- local pose rearrangement while remaining pocket-associated,
- weakening of ligand–protein interactions,
- and partial or complete ligand dissociation.

Because no single metric is sufficient on its own, these analyses were interpreted together to provide a more reliable description of ligand behavior across the three replicas.

---

## Outputs

The current workflow includes:

- replica-level ligand behavior output files in `.xvg` format,
- processed summary tables in `.csv` format,
- and analysis scripts used to generate the outputs.

Representative processed outputs include:
- ligand heavy-atom RMSD
- ligand–pocket COM distance
- ligand–JmjC hydrogen bonds
- per-system summary statistics for the selected analysis window

---

## Reproducibility

The scripts required for trajectory preparation and ligand behavior analysis are provided in the `scripts/` directory.

Processed output files are provided in `processed_outputs/`, including both replica-level analysis outputs and summarized results for the **03_AlphaFold_PAF** system.

These materials are intended to support reproducibility, downstream comparison across systems, and generation of final summary figures and tables.

---

## Notes

- This module is specific to the **03_AlphaFold_PAF** system.
- All analyses were conducted across **three independent replicas**.
- File naming conventions use `rep1`, `rep2`, and `rep3` to distinguish replica-specific outputs.
- The processed summary outputs were used for downstream cross-system comparison of ligand behavior metrics.
