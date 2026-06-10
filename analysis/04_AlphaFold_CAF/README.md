# 04_AlphaFold_CAF Analysis

## Overview

This directory contains the post-simulation analysis workflows for the `04_AlphaFold_CAF` system in the KDM5C receptor-setup sensitivity study.

The `04_AlphaFold_CAF` system represents the custom AlphaFold-derived KDM5C receptor model used for molecular dynamics simulation and subsequent trajectory analysis. In the manuscript, this receptor setup is referred to as **CAF**.

This analysis module is organized into multiple subdirectories corresponding to major post-MD evaluation categories, including global structural stability, pocket behavior, and ligand behavior analysis.
---

## System Description

`04_AlphaFold_CAF` corresponds to the **custom AlphaFold-derived receptor setup** used in the comparative workflow. It was analyzed across independent MD replicas to assess structural stability, pocket behavior, ligand behavior, and interaction features relevant to receptor-setup sensitivity analysis.

---

## Directory Structure

- `00_md_extension/` — files and documentation related to MD trajectory extension or extended simulation handling
- `01_global_stability_analysis/` — analyses of overall protein structural stability, including RMSD, RMSF, radius of gyration, SASA, and related global metrics
- `02_pocket_analysis/` — analyses focused on binding-pocket structural behavior and local stability
- `03_ligand_behavior/` — analyses of ligand behavior, ligand–pocket distance, and ligand–protein interaction persistence
- `README.md` — documentation for the `04_AlphaFold_CAF` analysis module

---

## Scope of Analysis

This directory contains the organized post-MD analysis workflows for the **CAF receptor setup**. Depending on the specific submodule, analyses may include:

- global structural stability assessment
- local binding-pocket behavior
- ligand retention and interaction analysis
- summary outputs for comparison across replicas and benchmarked receptor models.

Because different analysis categories require different preprocessing steps, atom selections, and output formats, each workflow is documented separately within its corresponding subdirectory.

---

## Organization and Reproducibility

This system is organized as a standalone analysis module so that all post-simulation workflows for the `04_AlphaFold_CAF` condition can be tracked, documented, and reproduced independently from the other receptor setups.

The analysis structure is divided by workflow type rather than by file format alone. Each subdirectory contains its own scripts, outputs, and README documentation as needed for reproducibility and downstream interpretation.

---

## Related Input Files

The corresponding simulation setup, preparation files, and MD input materials for this system are stored separately under:

`inputs/04_AlphaFold_CAF/`

These input files are conceptually linked to the present analysis directory but are maintained outside this module to keep simulation setup and post-MD analysis workflows clearly separated.

## Notes

- In the manuscript, `04_AlphaFold_CAF` corresponds to the **CAF** receptor setup.
- CAF denotes the custom AlphaFold-derived KDM5C receptor model used in this study.
- This directory is intended to support reproducibility, traceability, downstream comparison, and manuscript reporting.
