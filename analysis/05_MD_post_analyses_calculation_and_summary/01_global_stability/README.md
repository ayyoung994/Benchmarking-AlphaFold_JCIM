# Global Stability Summary

## Overview

This directory contains the final cross-system outputs for the global stability analysis in the KDM5C receptor-setup sensitivity study.

The files in this folder integrate processed results from the individual system-level global stability analyses and provide comparison-ready summary outputs across the four evaluated receptor setups:

- `01_5FWJ_holo`— **5FWJ metal-retained**
- `02_5FWJ_apo`— **5FWJ metal-depleted**
- `03_AlphaFold_PAF` — **PAF**
- `04_AlphaFold_CAF` — **CAF**

The internal labels `holo` and `apo` are retained for workflow continuity. In the manuscript, these correspond to **5FWJ metal-retained** and **5FWJ metal-depleted**, respectively.

---

## Contents

- `Global_stability.png` — final comparison figure summarizing global stability metrics across all four receptor setups
- `global_debug_all_systems.csv` — combined debug table containing processed values collected from all receptor setups for traceability and quality checking
- `global_summary_all_systems.csv` — final summary table containing global stability statistics across all receptor setups
- `README.md` — documentation for this summary module

---

## Purpose

This folder was created to provide a clean location for final cross-system comparison outputs derived from the global stability workflows.

These outputs are intended to support:
- comparison of overall structural stability across receptor setups
- verification of merged analysis results
- preparation of summary materials for interpretation, reporting, and manuscript development

---

## Notes

- This folder contains only the integrated cross-system outputs.
- Per-system and per-replica intermediate files are stored in the corresponding system-specific analysis directories.
- The summary tables and figure in this directory are intended for downstream comparison and final reporting.
- Global stability metrics were used as descriptive trajectory-level summaries and should be interpreted together with pocket-focused and ligand-behavior analyses.
