# Ligand Binding Analysis

## Overview

This workflow prepares the MD trajectory for ligand-centered binding analysis in the 5FWJ holo rep1 system. Trajectory preprocessing was performed to remove periodic boundary artifacts, center the system on chain B, and align the trajectory to the JmjC region of chain B before downstream ligand-behavior analysis.

## Trajectory Preparation

### 1. Removal of PBC jumps

Periodic boundary condition (PBC) jumps were removed from the full system trajectory using `gmx trjconv -pbc nojump` to generate a continuous ligand trajectory.

- Input: `md_rep1.xtc`
- Output: `md_nojump_ligand_2.xtc`
- Output group: `System`

### 2. Centering on chain B and reconstruction of whole molecules

The no-jump trajectory was centered on `Chain_B` and written with whole molecules using `gmx trjconv -center -pbc mol -ur compact`. This step placed chain B at the center of the simulation box while keeping molecular coordinates compact for visualization and downstream analysis.

- Input: `md_nojump_ligand_2.xtc`
- Output: `md_center_ligand_2.xtc`
- Centering group: `Chain_B`
- Output group: `System`

### 3. Centering and alignment to JmjC_ChainB_CA

The centered trajectory was processed using `gmx trjconv -center -fit rot+trans`, with `JmjC_ChainB_CA` used as the least-squares fit group and `System` used for both centering and output. This step generated a rigid reference frame for downstream ligand binding analysis.

- Input: `md_center_ligand_2.xtc`
- Output: `md_fit_ligand_2.xtc`
- Fit group: `JmjC_ChainB_CA`
- Centering group: `System`
- Output group: `System`

Together, these preprocessing steps generated a cleaned, centered, and structurally aligned trajectory suitable for downstream ligand binding analysis.

## Scripts

The following shell scripts were used in this workflow:

- `01_ligand_nojump.sh` — removes PBC jumps from the full system trajectory
- `02_ligand_center.sh` — centers the trajectory on `Chain_B` and reconstructs whole molecules
- `03_ligand_fit.sh` — centers and aligns the trajectory using `JmjC_ChainB_CA`
