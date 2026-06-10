# Analysis Scripts

## Overview

This directory contains notebook-based and script-based workflows used for final cross-system post-MD calculations, summary generation, and figure preparation in the KDM5C receptor-setup sensitivity study.

These files were used to integrate processed outputs from the individual system-level analysis folders and to generate consolidated tables, comparative plots, and final summary figures across the evaluated receptor setups.

---

## Purpose

The scripts in this directory support:

- cross-system aggregation of processed analysis outputs
- calculation of summary statistics
- generation of merged summary tables
- preparation of comparative figures
- reproducibility of the final integrated analyses

---

## Inputs

The workflows in this directory use processed outputs generated from the individual system-specific analysis modules, including:

- global stability outputs
- pocket analysis outputs
- ligand behavior outputs
- protein RMSF outputs
- and metal analysis outputs where applicable.metal-associated distance outputs, where applicable
  
---

## Outputs

The scripts in this directory were used to generate summary files and figures stored in the sibling directories of this module, including:

- `01_global_stability/`
- `02_pocket_analysis/`
- `03_ligand_behavior_analysis/`
- `04_protein_rmsf/`
- `05_metal_coordination_analysis/`

---

## File Types

This folder may contain:

- Jupyter notebooks (`.ipynb`) for integrated analysis workflows,
- helper scripts used for data processing and plotting,
- and supporting files required for summary generation.

---

## Notes

- These workflows are intended for cross-system post-processing rather than replica-level raw analysis.
- Input files for these scripts are derived from the processed outputs of the individual system-level analysis directories.
- The notebooks and scripts in this folder were used to support reproducibility of the final comparative analyses and manuscript-ready figures.
- The receptor setups compared in the integrated analyses include **5FWJ metal-retained**, **5FWJ metal-depleted**, **PAF**, and **CAF**.
- Metal-related outputs are interpreted as metal-associated distance analyses under the applied nonbonded metal treatment, not as definitive validation of native catalytic metal coordination.
