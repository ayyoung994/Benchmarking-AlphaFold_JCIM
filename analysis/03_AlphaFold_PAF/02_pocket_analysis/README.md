# Pocket Analysis

This directory contains the pocket-focused analysis workflow for the `03_AlphaFold_PAF` system in the KDM5C benchmarking study.

## Purpose

This folder stores analyses used to evaluate the structural behavior and local properties of the binding pocket during the MD trajectory.

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

- This directory contains only the pocket-focused analyses for `03_AlphaFold_PAF`.
- Replica-level source outputs and processed summary tables are organized in `processed_outputs/`.
- Files in `processed_outputs/` were used for downstream summary generation, cross-system comparison, and plotting.
- Other analysis categories are organized separately.

