# Ligand Binding Analysis — AlphaFold CAF

## Overview

This directory contains shell scripts used for ligand-centered molecular dynamics (MD) trajectory preparation and downstream ligand-behavior analysis for the `04_AlphaFold_CAF` system.

The folder label `04_AlphaFold_CAF` corresponds to the **custom AlphaFold-derived KDM5C receptor setup** used in the manuscript. This receptor setup is referred to as **CAF**.

The workflow includes:
1. creation of a ligand heavy-atom index group,
2. removal of periodic boundary condition (PBC) artifacts,
3. trajectory centering and structural fitting, and
4. downstream analyses of ligand stability and interaction behavior.

These scripts were prepared for the `04_AlphaFold_CAF` system and can be adapted for individual replicas by modifying the relevant input and output filenames as needed.

---

## Workflow Summary

### 1. Creation of ligand heavy-atom index

A heavy-atom index group was generated for the ligand `DOL` to support heavy-atom-based ligand RMSD analysis.

- Script: `01_make_DOL_heavy_index.sh`
- Purpose: creates the ligand heavy-atom index group for downstream analysis

### 2. Removal of PBC jumps

Periodic boundary condition jumps were removed from the full-system trajectory using `gmx trjconv -pbc nojump` to generate a continuous trajectory suitable for ligand analysis.

- Typical input: `md_0_60.xtc`
- Typical output: `md_nojump_ligand.xtc`
- Output group: `System`
- Script: `02_ligand_nojump.sh`

### 3. Centering on AF JmjC and reconstruction of whole molecules

The no-jump trajectory was centered on `JmjC_all` and rewritten using `-center -pbc mol -ur compact`. This step places the AF JmjC region at the center of the simulation box while reconstructing whole molecules and keeping coordinates compact.

- Typical input: `md_nojump_ligand.xtc`
- Typical output: `md_center_ligand.xtc`
- Centering group: `JmjC_all`
- Output group: `System`
- Script: `03_ligand_center.sh`

### 4. Alignment to AF JmjC Cα

The centered trajectory was least-squares fitted to `JmjC_CA` using `gmx trjconv -fit rot+trans` to provide a stable structural reference frame for downstream ligand-behavior analysis.

- Typical input: `md_center_ligand.xtc`
- Typical output: `md_fit_ligand.xtc`
- Fit group: `JmjC_CA`
- Output group: `System`
- Script: `04_ligand_fit.sh`

Together, these preprocessing steps generate a cleaned, centered, and structurally aligned trajectory suitable for ligand-centered analysis.

---

## Downstream Analyses

### 5. Ligand RMSD

Ligand heavy-atom RMSD was calculated to evaluate ligand positional and conformational changes during the simulation.

- Script: `05_ligand_rmsd.sh`
- Purpose: calculates ligand heavy-atom RMSD from the fitted trajectory

### 6. Ligand center-of-mass distance

The distance between the ligand center of mass and the selected pocket reference region was calculated to monitor ligand proximity to the predefined pocket environment.

- Script: `06_ligand_com_distance.sh`
- Purpose: calculates ligand center-of-mass (COM) distance

### 7. Ligand–protein hydrogen bonds

Hydrogen bonds formed between the ligand and the protein were quantified across the trajectory.

- Script: `07_ligand_hbond.sh`
- Purpose: calculates ligand–protein hydrogen bond counts

---

## Scripts Included

- `01_make_DOL_heavy_index.sh` — creates the `DOL` heavy-atom index group
- `02_ligand_nojump.sh` — removes PBC jumps from the trajectory
- `03_ligand_center.sh` — centers the trajectory on `JmjC_all` and reconstructs whole molecules
- `04_ligand_fit.sh` — aligns the trajectory to `JmjC_CA`
- `05_ligand_rmsd.sh` — calculates ligand heavy-atom RMSD
- `06_ligand_com_distance.sh` — calculates ligand center-of-mass distance
- `07_ligand_hbond.sh` — calculates ligand–protein hydrogen bonds

---

## Notes

- This workflow is intended for the `04_AlphaFold_CAF` system.
- In the manuscript, this system is described as the **CAF** receptor setup.
- Replica-specific filenames may differ and should be adjusted within each script before execution.
- The fitted trajectory generated during preprocessing is used as the main input for downstream ligand-behavior analyses.
- Pocket-based analyses in this workflow use CAF-specific reference groups such as `Pocket_JmjC_all`.
- The ligand group analyzed in this workflow was `DOL`.
