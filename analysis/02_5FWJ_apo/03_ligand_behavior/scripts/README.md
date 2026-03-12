# Ligand Binding Analysis

## Overview

This workflow prepares the MD trajectory for ligand-centered binding analysis in the apo system. Trajectory preprocessing was performed to remove periodic boundary artifacts, center the system on chain B, and align the trajectory to the JmjC region of chain B before downstream ligand-behavior analysis.

## Trajectory Preparation

### 1. Removal of PBC jumps

Periodic boundary condition (PBC) jumps were removed from the full system trajectory using `gmx trjconv -pbc nojump` to generate a continuous ligand trajectory.

- Input: `md_repX.xtc`
- Output: `md_nojump_ligand.xtc`
- Output group: `System`

### 2. Centering on chain B and reconstruction of whole molecules

The no-jump trajectory was centered on `Chain_B` and written with whole molecules using `gmx trjconv -center -pbc mol -ur compact`. This step placed chain B at the center of the simulation box while keeping molecular coordinates compact for visualization and downstream analysis.

- Input: `md_nojump_ligand.xtc`
- Output: `md_center_ligand.xtc`
- Centering group: `Chain_B`
- Output group: `System`

### 3. Alignment to JmjC_ChainB_CA

The centered trajectory was least-squares fitted to `JmjC_ChainB_CA` using `gmx trjconv -fit rot+trans` to provide a rigid reference frame for ligand binding analysis.

- Input: `md_center_ligand.xtc`
- Output: `md_fit_ligand.xtc`
- Fit group: `JmjC_ChainB_CA`
- Output group: `System`

Together, these preprocessing steps generated a cleaned, centered, and structurally aligned trajectory suitable for downstream ligand binding analysis.

## Ligand Behavior Analysis

### 4. Ligand RMSD

Ligand RMSD was calculated for `DOL_heavy` using the fitted trajectory (`md_fit_ligand.xtc`). During `gmx rms`, `JmjC_ChainB_CA` was used as the least-squares fit group and `DOL_heavy` was used as the RMSD calculation group.

This analysis was used to monitor the positional stability of the ligand heavy atoms relative to the JmjC region of chain B over the simulation.

### 5. Ligand–pocket COM distance

The center-of-mass (COM) distance between `DOL_heavy` and `Pocket_JmjCB` was calculated using `gmx distance` on the fitted trajectory (`md_fit_ligand.xtc`).

This analysis was used to monitor the relative position of the ligand with respect to the consensus pocket over the simulation.

### 6. Ligand–pocket hydrogen bonds

Hydrogen bonds were calculated between `DOL_heavy` and `Pocket_JmjCB` using `gmx hbond` on the fitted trajectory (`md_fit_ligand.xtc`). During the analysis, `DOL_heavy` was used as the reference selection and `Pocket_JmjCB` was used as the target selection.

This analysis was used to monitor hydrogen-bonding interactions between the ligand and the consensus pocket region over the simulation.

## Scripts

The following shell scripts were used in this workflow:

- `01_ligand_nojump.sh` — removes PBC jumps from the full system trajectory
- `02_ligand_center.sh` — centers the trajectory on `Chain_B` and reconstructs whole molecules
- `03_ligand_fit.sh` — aligns the trajectory to `JmjC_ChainB_CA` for ligand binding analysis
- `04_ligand_rmsd.sh` — calculates ligand RMSD for `DOL_heavy` after alignment to `JmjC_ChainB_CA`
- `05_ligand_com_distance.sh` — calculates the COM distance between `DOL_heavy` and `Pocket_JmjCB`
- `06_ligand_hbond.sh` — calculates hydrogen bonds between `DOL_heavy` and `Pocket_JmjCB`
