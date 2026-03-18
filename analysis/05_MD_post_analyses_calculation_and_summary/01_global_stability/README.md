# Global Stability Summary

## Overview

This directory contains the final cross-system outputs for the global stability analysis in the KDM5C benchmarking study.

The files in this folder integrate processed results from the individual system-level global stability analyses and provide comparison-ready summary outputs across the four benchmarked systems:

- `01_5FWJ_holo`
- `02_5FWJ_apo`
- `03_PAF`
- `04_CAF`

---

## Contents

- `Global_stability.png` — final comparison figure summarizing global stability metrics across all four systems
- `global_debug_all_systems.csv` — combined debug table containing processed values collected from all systems for traceability and quality checking
- `global_summary_all_systems.csv` — final summary table containing global stability statistics across all systems
- `README.md` — documentation for this summary module

---

## Purpose

This folder was created to provide a clean location for the final cross-system comparison outputs derived from the global stability workflows.

These outputs are intended to support:
- comparison of overall structural stability across systems,
- verification of merged analysis results,
- and preparation of summary materials for interpretation, reporting, and manuscript development.

---

## Notes

- This folder contains only the integrated cross-system outputs.
- Per-system and per-replica intermediate files are stored in the corresponding system-specific analysis directories.
- The summary tables and figure in this directory are intended for downstream comparison and final reporting.
