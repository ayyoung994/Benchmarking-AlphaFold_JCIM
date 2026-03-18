# Pocket Stability Summary

## Overview

This directory contains the final cross-system outputs for the pocket stability analysis in the KDM5C benchmarking study.

The files in this folder integrate processed results from the individual system-level pocket analysis workflows and provide comparison-ready summary outputs across the four benchmarked systems:

- `01_5FWJ_holo`
- `02_5FWJ_apo`
- `03_PAF`
- `04_CAF`

These outputs were generated from the processed pocket analysis results over the **20–60 ns** analysis window.

---

## Contents

- `pocket_analysis.png` — final comparison figure summarizing pocket stability behavior across the four systems
- `Table_Pocket_Stability_20-60ns_4systems.csv` — summary table containing pocket stability metrics for all four systems in the 20–60 ns time window
- `README.md` — documentation for this summary module

---

## Purpose

This folder was created to provide a clean location for the final cross-system comparison outputs derived from the pocket analysis workflows.

These outputs are intended to support:
- comparison of pocket stability across systems,
- interpretation of local structural behavior within the selected analysis window,
- and preparation of summary materials for reporting and manuscript development.

---

## Notes

- This folder contains only the integrated cross-system outputs for pocket analysis.
- Per-system and per-replica intermediate files are stored in the corresponding system-specific analysis directories.
- The summary table and figure in this directory are intended for downstream comparison and final reporting.
