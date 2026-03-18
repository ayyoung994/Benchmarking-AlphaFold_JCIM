# Ligand Binding Analysis — 5FWJ_holo, Replicate 1

## Overview

This directory contains the ligand-centered MD analysis workflow for the **5FWJ holo, replicate 1** system.

The workflow includes:
1. preparation of a ligand heavy-atom index group,
2. trajectory preprocessing to remove periodic boundary artifacts,
3. centering and fitting of the trajectory to a stable protein reference frame, and
4. downstream ligand-behavior analyses, including ligand RMSD, ligand center-of-mass (COM) distance, and ligand–protein hydrogen bond analysis.

This directory was created specifically for **`01_5FWJ_holo/03_ligand_behavior/scripts/rep1/`** and should be interpreted as a **replicate-specific workflow** for the 5FWJ holo system.

---

## Workflow Summary

### 1. Creation of ligand heavy-atom index

A ligand heavy-atom index group was generated for DOL to enable heavy-atom-based ligand RMSD analysis.

- Script: `01_make_DOL_heavy_index.sh`
- Purpose: creates a ligand heavy-atom group for downstream RMSD calculation

### 2. Removal of PBC jumps

Periodic boundary condition (PBC) jumps were removed from the full system trajectory using `gmx trjconv -pbc nojump` to generate a continuous trajectory for ligand analysis.

- Input: `md_rep1.xtc`
- Output: `md_nojump_ligand_2.xtc`
- Output group: `System`
- Script: `02_ligand_nojump.sh`

### 3. Centering on chain B and reconstruction of whole molecules

The no-jump trajectory was centered on `Chain_B` and rewritten using `-pbc mol -ur compact` to reconstruct whole molecules and keep the system compact.

- Input: `md_nojump_ligand_2.xtc`
- Output: `md_center_ligand_2.xtc`
- Centering group: `Chain_B`
- Output group: `System`
- Script: `03_ligand_center.sh`

### 4. Alignment to JmjC_ChainB_CA

The centered trajectory was aligned using `gmx trjconv -fit rot+trans`, with `JmjC_ChainB_CA` used as the least-squares fitting group. This produced a consistent structural reference frame for ligand-behavior analysis.

- Input: `md_center_ligand_2.xtc`
- Output: `md_fit_ligand_2.xtc`
- Fit group: `JmjC_ChainB_CA`
- Centering group: `System`
- Output group: `System`
- Script: `04_ligand_fit.sh`

Together, these preprocessing steps generated a cleaned, centered, and structurally aligned trajectory suitable for downstream ligand analysis.

---

## Downstream Analyses

### 5. Ligand RMSD

Ligand heavy-atom RMSD was calculated from the fitted trajectory to evaluate ligand positional stability over time.

- Script: `05_ligand_rmsd.sh`
- Purpose: calculates ligand heavy-atom RMSD

### 6. Ligand center-of-mass distance

The distance between the ligand center of mass and the selected protein reference group was calculated to monitor ligand positional behavior relative to the binding region.

- Script: `06_ligand_com_distance.sh`
- Purpose: calculates ligand COM distance

### 7. Ligand–protein hydrogen bonds

Hydrogen bonds formed between the ligand and protein were quantified across the trajectory.

- Script: `07_ligand_hbond.sh`
- Purpose: calculates ligand–protein hydrogen bond counts

---

## Scripts Included

- `01_make_DOL_heavy_index.sh` — creates the DOL heavy-atom index group
- `02_ligand_nojump.sh` — removes PBC jumps from the full system trajectory
- `03_ligand_center.sh` — centers the trajectory on `Chain_B` and reconstructs whole molecules
- `04_ligand_fit.sh` — aligns the trajectory using `JmjC_ChainB_CA`
- `05_ligand_rmsd.sh` — calculates ligand heavy-atom RMSD
- `06_ligand_com_distance.sh` — calculates ligand center-of-mass distance
- `07_ligand_hbond.sh` — calculates ligand–protein hydrogen bonds

---

## Notes

- This workflow is **specific to the 5FWJ holo system, replicate 1**.
- File names, group selections, and index groups may need to be adjusted before reusing these scripts for other systems or replicas.
- The fitted trajectory generated in the preprocessing steps serves as the main input for downstream ligand-behavior analyses.
