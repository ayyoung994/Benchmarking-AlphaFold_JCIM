# Ligand Behavior Analysis — 02_5FWJ_apo

## Overview

This directory contains the trajectory preprocessing and downstream analyses used for ligand-centered behavior analysis in the **02_5FWJ_apo** system.

The workflow includes:
1. creation of a ligand heavy-atom index group,
2. trajectory preprocessing to remove periodic boundary condition (PBC) artifacts,
3. centering and fitting of the trajectory to a stable protein reference frame, and
4. downstream ligand-focused analyses, including ligand RMSD, ligand center-of-mass (COM) distance, and ligand–protein hydrogen bond analysis.

Together, these steps were used to evaluate ligand stability, positional retention, and interaction persistence in the **5FWJ apo** system.

---

## Trajectory Preparation

### 1. Creation of ligand heavy-atom index

A ligand heavy-atom index group was generated for `DOL` to support heavy-atom-based ligand RMSD analysis and related ligand-focused measurements.

- Script: `01_make_DOL_heavy_index.sh`
- Purpose: creates the `DOL_heavy` index group for downstream analysis

### 2. Centering on chain B and reconstruction of whole molecules

The trajectory was centered on `Chain_B` and written with whole molecules using `gmx trjconv -center -pbc mol -ur compact`. This step places chain B at the center of the simulation box while keeping molecular coordinates compact for visualization and downstream analysis.

- Typical input: `md_repX.xtc`
- Typical output: `md_center_ligand.xtc`
- Centering group: `Chain_B`
- Output group: `System`
- Script: `02_ligand_center.sh`

### 3. Removal of PBC jumps

Periodic boundary condition (PBC) jumps were removed from the centered full-system trajectory using `gmx trjconv -pbc nojump` to generate a continuous ligand trajectory suitable for downstream analysis.

- Typical input: `md_center_ligand.xtc`
- Typical output: `md_nojump_ligand.xtc`
- Output group: `System`
- Script: `03_ligand_nojump.sh`

### 4. Alignment to `JmjC_ChainB_CA`

The processed trajectory was least-squares fitted to `JmjC_ChainB_CA` using `gmx trjconv -fit rot+trans` to generate a consistent structural reference frame for ligand behavior analysis.

- Typical input: `md_nojump_ligand.xtc`
- Typical output: `md_fit_ligand.xtc`
- Fit group: `JmjC_ChainB_CA`
- Output group: `System`
- Script: `04_ligand_fit.sh`

Together, these preprocessing steps generated a cleaned, centered, and aligned trajectory suitable for downstream ligand behavior analysis.

---

## Ligand Behavior Analyses

### 5. Ligand RMSD

Ligand heavy-atom RMSD was calculated for `DOL_heavy` using the fitted trajectory (`md_fit_ligand.xtc`). During `gmx rms`, `JmjC_ChainB_CA` was used as the least-squares fit group and `DOL_heavy` was used as the RMSD calculation group.

This analysis was used to monitor the positional stability of the ligand heavy atoms relative to the JmjC region of chain B over the simulation.

- Script: `05_ligand_rmsd.sh`

### 6. Ligand center-of-mass distance

The center-of-mass (COM) distance between `DOL_heavy` and `Pocket_JmjCB` was calculated using `gmx distance` on the fitted trajectory (`md_fit_ligand.xtc`).

This analysis was used to monitor the relative position of the ligand with respect to the consensus pocket over the simulation.

- Script: `06_ligand_com_distance.sh`

### 7. Ligand–protein hydrogen bonds

Hydrogen bonds were calculated between `DOL_heavy` and `Pocket_JmjCB` using `gmx hbond` on the fitted trajectory (`md_fit_ligand.xtc`). During the analysis, `DOL_heavy` was used as the reference selection and `Pocket_JmjCB` was used as the target selection.

This analysis was used to monitor hydrogen-bonding interactions between the ligand and the consensus pocket region over the simulation.

- Script: `07_ligand_hbond.sh`

---

## Scripts Included

- `01_make_DOL_heavy_index.sh` — creates the `DOL_heavy` index group
- `02_ligand_center.sh` — centers the trajectory on `Chain_B` and reconstructs whole molecules
- `03_ligand_nojump.sh` — removes PBC jumps from the centered trajectory
- `04_ligand_fit.sh` — aligns the trajectory to `JmjC_ChainB_CA`
- `05_ligand_rmsd.sh` — calculates ligand heavy-atom RMSD for `DOL_heavy`
- `06_ligand_com_distance.sh` — calculates the COM distance between `DOL_heavy` and `Pocket_JmjCB`
- `07_ligand_hbond.sh` — calculates hydrogen bonds between `DOL_heavy` and `Pocket_JmjCB`

---

## Notes

- This workflow is specific to the **02_5FWJ_apo** system.
- Replica-specific filenames should be adjusted within each script before execution.
- The fitted trajectory generated during preprocessing serves as the main input for downstream ligand behavior analyses.
- The combined interpretation of ligand RMSD, COM distance, and hydrogen-bond profiles supports assessment of ligand retention, rearrangement, and possible dissociation behavior.
