# Ligand Binding Analysis

## Overview

This workflow prepares the MD trajectory for ligand-centered binding analysis in the 5FWJ holo system. Trajectory preprocessing was performed to remove periodic boundary artifacts, center the system on chain B, and align the trajectory to the JmjC region of chain B before downstream ligand-behavior analysis.

## Trajectory Preparation

### 1. Removal of PBC jumps

Periodic boundary condition (PBC) jumps were removed from the full system trajectory using `gmx trjconv -pbc nojump` to generate a continuous ligand trajectory.

- Input: `md_repX.xtc`
- Output: `md_nojump_ligand.xtc`
- Output group: `System`

### 2. Centering on chain B and reconstruction of whole molecules

The no-jump trajectory was centered on `Chain_B` and written with whole molecules using `gmx trjconv -center -pbc mol -ur compact`. This step placed the protein of interest at the center of the simulation box while keeping molecular coordinates compact for visualization and downstream analysis.

- Input: `md_nojump_ligand.xtc`
- Output: `md_center_ligand.xtc`
- Centering group: `Chain_B`
- Output group: `System`

### 3. Alignment to the JmjC region of chain B

The centered trajectory was least-squares fitted to `JmjC_ChainB_CA` using `gmx trjconv -fit rot+trans` to provide a rigid reference frame for ligand binding analysis.

- Input: `md_center_ligand.xtc`
- Output: `md_fit_ligand.xtc`
- Fit group: `JmjC_ChainB_CA`
- Output group: `System`

Together, these preprocessing steps generated a cleaned, centered, and structurally aligned trajectory suitable for downstream ligand binding analysis.

## Scripts

The following shell scripts were used in this workflow:

- `ligand_nojump.sh` — removes PBC jumps from the full system trajectory
- `ligand_center.sh` — centers the trajectory on chain B and reconstructs whole molecules
- `ligand_fit.sh` — aligns the trajectory to `JmjC_ChainB_CA` for ligand binding analysis
