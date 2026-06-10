# Protein RMSF Summary

## Overview

This directory contains the final cross-system output for the protein RMSF analysis in the KDM5C receptor-setup sensitivity study.

The file in this folder provides comparison-ready visualization of residue-level flexibility across the four evaluated receptor setups

- `01_5FWJ_holo` — **5FWJ metal-retained**  
- `02_5FWJ_apo` — **5FWJ metal-depleted** 
- `03_AlphaFold_PAF` — **PAF**
- `04_AlphaFold_CAF` — **CAF**

The internal labels `holo` and `apo` are retained for workflow continuity. In the manuscript, these correspond to **5FWJ metal-retained** and **5FWJ metal-depleted**, respectively.

---

## Contents

- `protein_RMSF.png` — final comparative figure summarizing Cα RMSF profiles across the evaluated receptor setups
- `README.md` — documentation for this summary module

---

## Purpose

This folder was created to provide a clean location for the final cross-system RMSF comparison output derived from the individual system-level RMSF workflows.

This output is intended to support:

- comparison of residue-level flexibility across receptor setups
- interpretation of localized structural variation across the analyzed JmjC catalytic interval
- preparation of summary materials for reporting and manuscript development

---

## Notes

- This folder currently stores the final summary figure only.
- Per-system source outputs and intermediate analysis files are stored in the corresponding system-specific directories.
- The figure in this directory was used for cross-system structural comparison and downstream reporting.
- RMSF results should be interpreted as descriptive residue-level flexibility metrics over the selected analysis window and in combination with global stability, pocket-focused, and ligand-behavior analyses.
