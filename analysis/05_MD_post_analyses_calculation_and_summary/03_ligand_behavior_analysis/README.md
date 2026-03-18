# Ligand Behavior Summary

## Overview

This directory contains the final cross-system outputs for the ligand behavior analysis in the KDM5C benchmarking study.

The files in this folder integrate processed results from the individual system-level ligand behavior workflows and provide comparison-ready summary outputs across the benchmarked ligand-bound systems:

- `01_5FWJ_holo`
- `02_5FWJ_apo`
- `03_PAF`
- `04_CAF`

---

## Contents

- `ligand_behavior_all_systems.png` — final comparison figure summarizing ligand behavior metrics across the analyzed systems
- `ligand_summary_all_systems.csv` — summary table containing replica-level statistics (20–60 ns mean ± SD) and replica-averaged values for ligand behavior metrics across all systems
- `README.md` — documentation for this summary module

---

## Metrics Included

The current summary table includes:

- ligand heavy-atom RMSD (nm)
- ligand–pocket center-of-mass distance (nm)

---

## Purpose

This folder was created to provide a clean location for the final cross-system comparison outputs derived from the ligand behavior analysis workflows.

These outputs are intended to support:
- comparison of ligand stability and positional retention across systems,
- interpretation of ligand behavior over the selected analysis window,
- and preparation of summary materials for reporting and manuscript development.

---

## Notes

- This directory contains only integrated cross-system summary outputs.
- Per-system and per-replica source files are organized in the corresponding system-specific ligand behavior analysis directories.
- The values reported here were used for downstream comparison, interpretation, and plotting.
