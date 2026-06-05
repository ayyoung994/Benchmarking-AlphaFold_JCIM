# 02_5FWJ_apo Analysis

## Overview

This directory contains the post-simulation analysis workflows for the `02_5FWJ_apo` system in the KDM5C receptor-setup comparison study.

The folder name `02_5FWJ_apo` is retained as an internal workflow label. In the manuscript, this system is referred to as **5FWJ metal-depleted**. This system represents the experimental crystal-structure-based receptor setup in which crystallographic metal ions were removed during receptor preparation.

This analysis module is organized into multiple subdirectories corresponding to major post-MD evaluation categories, including global structural stability, pocket behavior, and ligand behavior analysis.
---

## System Description

`02_5FWJ_apo` corresponds to the **5FWJ metal-depleted** experimental receptor setup. In this workflow, the internal label `apo` indicates that crystallographic metal ions were removed from the 5FWJ receptor structure; it should not be interpreted as a fully characterized biochemical apo enzyme state.

This system was used as one of the MD receptor setups in the comparative workflow and analyzed across independent MD replicas to assess structural stability, pocket behavior, ligand retention, and interaction features relevant to receptor-setup sensitivity analysis.

In the manuscript, this system should be described as **5FWJ metal-depleted**, not as a cofactor-free or metal-free biochemical state. The term apo is used only as an internal folder and file-naming label for workflow continuity.

---

## Directory Structure

- `01_global_stability_analysis/` — analyses of overall protein structural stability, such as RMSD, RMSF, radius of gyration, SASA, and related global metrics
- `02_pocket_analysis/` — analyses focused on binding-pocket structural behavior and local stability
- `03_ligand_behavior/` — analyses of ligand stability, ligand–pocket distance, and ligand–protein interaction persistence
- `README.md` — documentation for the `02_5FWJ_apo` analysis module

---

## Scope of Analysis

This directory contains the organized post-MD analysis workflows for the **5FWJ apo** system. Depending on the specific submodule, analyses may include:

- global structural stability assessment,
- local binding-pocket behavior,
- ligand retention and interaction analysis,
- and summary outputs for comparison across replicas and benchmarked receptor models.

Because different analysis categories require different preprocessing steps, atom selections, and output formats, each workflow is documented separately within its corresponding subdirectory.

---

## Organization and Reproducibility

This system is organized as a standalone analysis module so that all post-simulation workflows for the **02_5FWJ_apo** condition can be tracked, documented, and reproduced independently from the other receptor models.

The analysis structure is divided by workflow type rather than by file format alone. Each subdirectory contains its own scripts, outputs, and README documentation as needed for reproducibility and downstream interpretation.

---

## Related Input Files

The corresponding simulation setup, preparation files, and MD input materials for this system are stored separately under:

`inputs/02_5FWJ_apo/`

These input files are conceptually linked to the present analysis directory but are maintained outside this module to keep simulation setup and post-MD analysis workflows clearly separated.
