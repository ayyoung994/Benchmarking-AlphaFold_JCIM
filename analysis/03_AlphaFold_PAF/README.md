# 03_AlphaFold_PAF Analysis

## Overview

This directory contains the post-simulation analysis workflows for the **03_AlphaFold_PAF** system in the KDM5C benchmarking study.

The `03_AlphaFold_PAF` system represents the **public AlphaFold-derived receptor model** used for molecular dynamics simulation and subsequent trajectory analysis. This analysis module is organized into multiple subdirectories corresponding to major post-MD evaluation categories, including MD extension handling, global structural stability, pocket behavior, and ligand behavior analysis.

---

## System Description

`03_AlphaFold_PAF` corresponds to the receptor model derived from the **public AlphaFold prediction** used in the benchmarking workflow. It was analyzed across independent MD replicas to assess structural stability, pocket behavior, ligand retention, and interaction features relevant to comparative model evaluation.

---

## Directory Structure

- `00_md_extension/` — files and documentation related to MD trajectory extension or extended simulation handling
- `01_global_stability_analysis/` — analyses of overall protein structural stability, such as RMSD, RMSF, radius of gyration, SASA, and related global metrics
- `02_pocket_analysis/` — analyses focused on binding-pocket structural behavior and local stability
- `03_ligand_behavior/` — analyses of ligand stability, ligand–pocket distance, and ligand–protein interaction persistence
- `README.md` — documentation for the `03_AlphaFold_PAF` analysis module

---

## Scope of Analysis

This directory contains the organized post-MD analysis workflows for the **03_AlphaFold_PAF** system. Depending on the specific submodule, analyses may include:

- global structural stability assessment,
- local binding-pocket behavior,
- ligand retention and interaction analysis,
- and summary outputs for comparison across replicas and benchmarked receptor models.

Because different analysis categories require different preprocessing steps, atom selections, and output formats, each workflow is documented separately within its corresponding subdirectory.

---

## Organization and Reproducibility

This system is organized as a standalone analysis module so that all post-simulation workflows for the **03_AlphaFold_PAF** condition can be tracked, documented, and reproduced independently from the other receptor models.

The analysis structure is divided by workflow type rather than by file format alone. Each subdirectory contains its own scripts, outputs, and README documentation as needed for reproducibility and downstream interpretation.

---

## Related Input Files

The corresponding simulation setup, preparation files, and MD input materials for this system are stored separately under:

`inputs/03_AlphaFold_PAF/`

These input files are conceptually linked to the present analysis directory but are maintained outside this module to keep simulation setup and post-MD analysis workflows clearly separated.
