# Pocket Stability Summary

## Overview

This directory contains the final cross-system outputs for the pocket-focused stability analysis in the KDM5C receptor-setup sensitivity study.

The files in this folder integrate processed results from the individual system-level pocket analysis workflows and provide comparison-ready summary outputs across the four evaluated receptor setups:

- `01_5FWJ_holo`— **5FWJ metal-retained**
- `02_5FWJ_apo` — **5FWJ metal-depleted**
- `03_AlphaFold_PAF` — **PAF**
- `04_AlphaFold_CAF `— **CAF**

The internal labels `holo` and `apo` are retained for workflow continuity. In the manuscript, these correspond to **5FWJ metal-retained** and **5FWJ metal-depleted**, respectively.

These outputs were generated from processed pocket analysis results over the 20–60 ns analysis window.

---

## Contents

- `pocket_analysis.png` — final comparison figure summarizing pocket-focused stability metrics across the four receptor setups
- `pocket_summary_all_systems.csv` — summary table containing pocket stability metrics for all four receptor setups in the 20–60 ns analysis window
- `README.md` — documentation for this summary module

---

## Purpose

This folder was created to provide a clean location for final cross-system comparison outputs derived from the pocket analysis workflows.

These outputs are intended to support:
- comparison of pocket-focused stability metrics across receptor setups
- interpretation of local structural behavior within the selected analysis window
- preparation of summary materials for reporting and manuscript development

---

## Notes

- This folder contains only the integrated cross-system outputs for pocket analysis.
- Per-system and per-replica intermediate files are stored in the corresponding system-specific analysis directories.
- The summary table and figure in this directory are intended for downstream comparison and final reporting.
- SASA-related outputs are provided for structural-context comparison and should be interpreted cautiously because solvent exposure depends on the selected atom group and calculation context.
- Pocket-focused metrics should be interpreted together with global stability and ligand-behavior analyses.
