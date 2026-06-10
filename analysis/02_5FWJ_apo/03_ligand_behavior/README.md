# Ligand Behavior Analysis — 02_5FWJ_apo

## Overview

This directory contains the ligand behavior analysis workflow for the `02_5FWJ_apo` molecular dynamics simulation set.

The folder label `02_5FWJ_apo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-depleted** receptor setup.

The analyses were performed to evaluate ligand positional behavior, pocket proximity, and interaction patterns across three independent MD replicas. Together, these metrics provide a focused assessment of whether the ligand remains close to the predefined pocket region, undergoes local pose rearrangement, or shows larger displacement during the simulation.

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
- ligand pose stability
- conformational rearrangement
- major deviations from the initial bound state

### 2. Ligand–Pocket Center-of-Mass Distance

The center-of-mass (COM) distance between the ligand and the selected binding-pocket reference group was calculated to assess ligand proximity to the pocket environment.

This metric helps identify:

- maintained proximity to the binding-site region
- gradual displacement from the predefined pocket
- larger-scale movement away from the pocket region

### 3. Ligand–Protein Hydrogen Bonds

Hydrogen bond analysis was performed to quantify polar interactions formed between the ligand and the protein during the trajectory.

This metric provides information on:

- persistence of ligand–protein polar contacts,
- changes in interaction patterns across replicas,
- and the degree of interaction support for the bound state.

---

## Interpretation

Ligand RMSD, ligand–pocket COM distance, and ligand–protein hydrogen-bond profiles were interpreted together to describe ligand behavior across replicas. These combined metrics help distinguish between:

- ligand retention near the binding-pocket region
- local pose rearrangement while remaining pocket-proximal
- weakening or loss of persistent ligand–protein interactions
- larger ligand displacement from the predefined pocket region

Because no single metric is sufficient on its own, these analyses were interpreted together to provide a more reliable description of ligand behavior across the three replicas.

---

## Outputs

The current workflow includes:

- replica-level ligand behavior output files in `.xvg` format
- processed summary tables in `.csv` format
- and analysis scripts used to generate the outputs

Representative processed outputs include:
- ligand heavy-atom RMSD
- ligand–pocket COM distance
- ligand–JmjC hydrogen bonds
- per-system summary statistics for the selected analysis window

---

## Reproducibility

The scripts required for trajectory preparation and ligand behavior analysis are provided in the `scripts/` directory.

Processed output files are provided in processed_outputs/, including both replica-level analysis outputs and summarized results for the **5FWJ metal-depleted** receptor setup.

These materials are intended to support reproducibility, downstream comparison across receptor setups, and generation of final summary figures and tables.
---

## Notes

- This module is specific to the `02_5FWJ_apo` system.
- In the manuscript, this system is described as **5FWJ metal-depleted**, not as a fully characterized biochemical apo enzyme state.
- All analyses were conducted across three independent replicas.
- File naming conventions use `rep1`, `rep2`, and `rep3` to distinguish replica-specific outputs.
- The ligand group analyzed in this workflow was `DOL`.
- The processed summary outputs were used for downstream cross-system comparison of ligand behavior metrics.
- The internal label `apo` is retained in file and folder names for workflow continuity.
