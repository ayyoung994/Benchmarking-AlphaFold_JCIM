# 01_5FWJ_holo Analysis

## Overview

This directory contains the post-simulation analysis workflows for the 01_5FWJ_holo system in the KDM5C receptor-setup comparison study.

The folder name `01_5FWJ_holo` is retained as an internal workflow label. In the manuscript, this system is referred to as **5FWJ metal-retained**. This system represents the experimental crystal-structure-based receptor setup in which crystallographic metal ions were retained during protein preparation for molecular dynamics simulation and subsequent trajectory analysis.

This analysis module is organized into multiple subdirectories corresponding to major post-MD evaluation categories, including global structural stability, pocket behavior, ligand behavior, and metal-coordination analysis.

## System Description

`01_5FWJ_holo` corresponds to the 5FWJ metal-retained experimental receptor setup. It was used as one of the MD receptor setups in the comparative workflow and analyzed across independent MD replicas to assess structural stability, ligand retention, binding-site behavior, and metal-associated distance changes relevant to receptor-setup sensitivity analysis.

In the manuscript, this system should be described as 5FWJ metal-retained, not as a biochemical holo enzyme state. The term holo is used only as an internal folder and file-naming label for workflow continuity.

---

## Directory Structure

- `00_md_extension/` — files and documentation related to MD trajectory extension or extended simulation handling
- `01_global_stability_analysis/` — analyses of overall protein structural stability, such as RMSD, RMSF, radius of gyration, and related global metrics
- `02_pocket_analysis/` — analyses focused on binding-pocket structural behavior and local stability
- `03_ligand_behavior/` — analyses of ligand stability, ligand–pocket distance, and ligand–protein interaction persistence
- `04_metal_coordination_analysis/` — analyses related to metal coordination geometry and coordination-site behavior
- `README.md` — documentation for the `01_5FWJ_holo` analysis module

---

## Scope of Analysis

This directory contains the organized post-MD analysis workflows for the **5FWJ holo** system. Depending on the specific submodule, analyses may include:

- global structural stability assessment,
- local binding-pocket behavior,
- ligand retention and interaction analysis,
- metal coordination monitoring,
- and summary outputs for comparison across replicas and benchmarked receptor models.

Because different analysis categories require different preprocessing steps, atom selections, and output formats, each workflow is documented separately within its corresponding subdirectory.

---

## Organization and Reproducibility

This system was organized as a standalone analysis module so that all post-simulation workflows for the **01_5FWJ_holo** condition could be tracked, documented, and reproduced independently from the other receptor models.

The analysis structure is divided by workflow type rather than by file format alone. Each subdirectory contains its own scripts, outputs, and README documentation as needed for reproducibility and downstream interpretation.

---

## Related Input Files

The corresponding simulation setup, preparation files, and MD input materials for this system are stored separately under:

`inputs/01_5FWJ_holo/`

These input files are linked conceptually to the present analysis directory but are maintained outside this module to keep simulation setup and post-MD analysis workflows clearly separated.
