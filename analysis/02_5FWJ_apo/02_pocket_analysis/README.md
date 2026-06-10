# Pocket Analysis

This directory contains the pocket-focused analysis workflow for the `02_5FWJ_apo` system in the KDM5C receptor-setup sensitivity study.

The folder label `02_5FWJ_apo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-depleted** receptor setup.

## Purpose

This folder stores analyses used to evaluate local binding-pocket behavior during the MD trajectory. These analyses were used to support comparison of pocket-level stability metrics across receptor setups.

## Contents

- `scripts/` — scripts used for pocket-focused calculations
- `processed_outputs/` — replica-level analysis outputs and processed per-system summary tables
- `README.md` — overview of the pocket analysis workflow and file organization

## Typical analyses

These analyses may include:

- pocket Cα RMSD
- pocket radius of gyration
- pocket-only SASA
- JmjC-and-pocket SASA
- other pocket-centered metrics relevant to local structural stability

## Notes

- This directory contains only the pocket-focused analyses for the `02_5FWJ_apo` system.
- Replica-level source outputs and processed summary tables are organized in `processed_outputs/`.
- Files in `processed_outputs/` were used for downstream summary generation, cross-system comparison, and plotting.
- SASA-related outputs are provided for structural-context comparison and should be interpreted cautiously because solvent exposure depends on the selected atom group and calculation context.
- The internal label `apo` is retained in file and folder names for workflow continuity. In the manuscript, this system is described as **5FWJ metal-depleted**, not as a fully characterized biochemical apo enzyme state.
- Other analysis categories are organized separately.
