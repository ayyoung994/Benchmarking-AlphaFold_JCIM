# Ligand Binding Analysis

## Overview

This workflow prepares the MD trajectory for ligand-centered binding analysis in the CAF system. Trajectory preprocessing was performed to remove periodic boundary artifacts, center the system on the AF JmjC region, and align the trajectory to the JmjC Cα atoms before downstream ligand-behavior analysis.

## Trajectory Preparation

### 1. Removal of PBC jumps

Periodic boundary condition (PBC) jumps were removed from the full system trajectory using `gmx trjconv -pbc nojump` to generate a continuous ligand trajectory.

- Input: `md_0_60.xtc`
- Output: `md_nojump_ligand.xtc`
- Output group: `System`

### 2. Centering on AF JmjC and reconstruction of whole molecules

The no-jump trajectory was centered on `JmjC_all` and written with whole molecules using `gmx trjconv -center -pbc mol -ur compact`. This step placed the AF JmjC region at the center of the simulation box while keeping molecular coordinates compact for visualization and downstream analysis.

- Input: `md_nojump_ligand.xtc`
- Output: `md_center_ligand.xtc`
- Centering group: `JmjC_all`
- Output group: `System`

### 3. Alignment to AF JmjC Cα

The centered trajectory was least-squares fitted to `JmjC_CA` using `gmx trjconv -fit rot+trans` to provide a rigid reference frame for ligand binding analysis.

- Input: `md_center_ligand.xtc`
- Output: `md_fit_ligand.xtc`
- Fit group: `JmjC_CA`
- Output group: `System`

Together, these preprocessing steps generated a cleaned, centered, and structurally aligned trajectory suitable for downstream ligand binding analysis.

## Ligand Behavior Analysis

### 4. Ligand RMSD

Ligand RMSD was calculated for `DOL_heavy` using the fitted trajectory (`md_fit_ligand.xtc`). During `gmx rms`, `JmjC_CA` was used as the least-squares fit group and `DOL_heavy` was used as the RMSD calculation group.

This analysis was used to monitor the positional stability of the ligand heavy atoms relative to the AF JmjC reference frame over the simulation.

### 5. Ligand–pocket COM distance

The center-of-mass (COM) distance between `DOL_heavy` and `Pocket_JmjC_all` was calculated using `gmx distance` on the fitted trajectory (`md_fit_ligand.xtc`).

This analysis was used to monitor the relative position of the ligand with respect to the consensus pocket over the simulation.

### 6. Ligand–pocket hydrogen bonds

Hydrogen bonds were calculated between `DOL_heavy` and `Pocket_JmjC_all` using `gmx hbond` on the fitted trajectory (`md_fit_ligand.xtc`). During the analysis, `DOL_heavy` was used as the reference selection and `Pocket_JmjC_all` was used as the target selection.

This analysis was used to monitor hydrogen-bonding interactions between the ligand and the consensus pocket region over the simulation.

## Scripts

The following shell scripts were used in this workflow:

- `ligand_nojump.sh` — removes PBC jumps from the full system trajectory
- `ligand_center.sh` — centers the trajectory on `JmjC_all` and reconstructs whole molecules
- `ligand_fit.sh` — aligns the trajectory to `JmjC_CA` for ligand binding analysis
- `ligand_rmsd.sh` — calculates ligand RMSD for `DOL_heavy` after alignment to `JmjC_CA`
- `ligand_com_distance.sh` — calculates the COM distance between `DOL_heavy` and `Pocket_JmjC_all`
- `ligand_hbond.sh` — calculates hydrogen bonds between `DOL_heavy` and `Pocket_JmjC_all`
