# 05_MD_post_analyses_calculation_and_summary

## Overview

This directory contains the cross-system post-MD calculation, summary, and visualization workflows used in the KDM5C benchmarking study.

It is organized to collect processed outputs from the individual system-level analysis modules and to generate unified comparisons, summary tables, and figures across the benchmarked receptor models.

---

## Directory Structure

- `01_global_stability/` — cross-system summaries and comparative outputs for global stability analyses
- `02_pocket_analysis/` — cross-system summaries and comparative outputs for pocket-focused analyses
- `03_ligand_behavior_analysis/` — cross-system summaries and comparative outputs for ligand behavior analyses
- `04_protein_rmsf/` — comparative RMSF outputs across systems
- `05_metal_analysis/` — final outputs related to metal coordination analysis
- `06_analysis_scripts/` — Jupyter notebook (`.ipynb`) and related scripts used to perform integrated analyses across directories
- `README.md` — documentation for this post-MD calculation and summary module

---

## Purpose

This module was created to integrate outputs generated from the individual system-specific analysis folders and to support:

- cross-system comparison of MD-derived metrics,
- preparation of processed summary tables,
- generation of comparative plots and figures,
- and organization of final outputs used for interpretation, reporting, and manuscript preparation.

---

## Reproducibility

The `06_analysis_scripts/` directory contains the notebook-based and script-based workflows used to process outputs from multiple directories and generate consolidated summaries.

These workflows are intended to support reproducibility of the final comparative analyses and downstream visualization steps.

---

## Notes

- This directory is intended for post-processing across systems rather than replica-level raw analysis.
- Inputs to this module are derived from the processed outputs of the individual analysis folders for each system.
- Most subdirectories contain final summary tables and figures, while `06_analysis_scripts/` contains the workflows used to generate them.
