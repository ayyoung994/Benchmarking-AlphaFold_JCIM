# Ligand Behavior Summary

## Overview

This directory contains the final cross-system outputs for the ligand behavior analysis in the KDM5C receptor-setup sensitivity study.

The files in this folder integrate processed results from the individual system-level ligand behavior workflows and provide comparison-ready summary outputs across the four ligand-containing receptor setups:

- `01_5FWJ_holo` — **5FWJ metal-retained** 
- `02_5FWJ_apo` — **5FWJ metal-depleted** 
- `03_AlphaFold_PAF` — **PAF**
- `04_AlphaFold_CAF` — **CAF**

The internal labels `holo` and `apo` are retained for workflow continuity. In the manuscript, these correspond to **5FWJ metal-retained** and **5FWJ metal-depleted**, respectively.

---

## Contents

- `ligand_behavior_all_systems.png` — final comparison figure summarizing ligand behavior metrics across the analyzed receptor setups
- `ligand_summary_all_systems.csv` — summary table containing replica-level statistics and replica-averaged values for ligand behavior metrics across all receptor setups
- `README.md` — documentation for this summary module

---

## Metrics Included

The current summary table includes:

- ligand heavy-atom RMSD (nm)
- ligand–pocket center-of-mass distance (nm)

Metrics were summarized over the 20–60 ns analysis window.

---

## Purpose

This folder was created to provide a clean location for final cross-system comparison outputs derived from the ligand behavior analysis workflows.

These outputs are intended to support:
- comparison of ligand positional behavior across receptor setups
- interpretation of ligand–pocket proximity over the selected analysis window
- preparation of summary materials for reporting and manuscript development

---

## Notes

- This directory contains only integrated cross-system summary outputs.
- Per-system and per-replica source files are organized in the corresponding system-specific ligand behavior analysis directories.
- The values reported here were used for downstream comparison, interpretation, and plotting.
- Ligand behavior metrics should be interpreted descriptively and together with pocket-focused stability metrics, hydrogen-bond profiles, and visual trajectory inspection where available.
- These outputs are not intended to validate ligand potency, binding affinity, or therapeutic relevance.
