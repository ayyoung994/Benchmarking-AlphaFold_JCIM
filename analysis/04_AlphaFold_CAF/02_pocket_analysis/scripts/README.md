# Pocket Analysis

## Overview

`Pocket_Consensus` denotes the consensus binding-site residue set shared across multiple receptor models and used as a common reference pocket for local JmjC domain analysis.

## Analysis Steps

### 1. Pocket consensus definition

A consensus binding-site residue set (`Pocket_Consensus`) was defined from residues shared across multiple receptor models. The following derived index groups were then generated for downstream analyses:

- `Pocket_JmjC_all`
- `Pocket_JmjC_CA`
- `Pocket_JmjC_BB`

These groups were used to evaluate local pocket dynamics and structural compactness within the JmjC domain.

### 2. Pocket RMSD

Pocket RMSD was computed for the `Pocket_JmjC_CA` group using the pre-aligned core-fitted trajectory (`md_0_60_fit_core_4.xtc`). No additional fitting was applied during RMSD calculation (`-fit none`).

### 3. Pocket radius of gyration (Rg)

Pocket radius of gyration (Rg) was computed for the `Pocket_JmjC_BB` group using the centered trajectory (`md_0_60_center_4.xtc`).

For pocket-level dynamics, RMSD was evaluated using `Pocket_JmjC_CA`, whereas Rg was evaluated using `Pocket_JmjC_BB` to monitor local backbone compactness within the consensus pocket region.

### 4. SASA of JmjC and pocket

Solvent-accessible surface area (SASA) was calculated using `JmjC_all` as the reference molecular surface and `Pocket_JmjC_all` as the output selection, based on the centered trajectory (`md_0_60_center_4.xtc`). This analysis was used to monitor solvent exposure of the consensus pocket region within the JmjC domain context.

### 5. SASA of the pocket only

SASA was also calculated for the consensus pocket region alone using `Pocket_JmjC_all` as both the surface selection and the output selection, based on the centered trajectory (`md_0_60_center_4.xtc`).

Together, these two SASA calculations distinguish solvent exposure of the pocket within the full JmjC domain environment from solvent exposure of the pocket region alone.

## Scripts

The following shell scripts were used in this workflow:

- `make_pocket_consensus.sh` — defines the consensus pocket and derived index groups
- `pocket_rmsd.sh` — calculates pocket RMSD
- `pocket_rg.sh` — calculates pocket radius of gyration (Rg)
- `pocket_sasa.sh` — calculates SASA for JmjC and the consensus pocket
- `pocket_sasa_only.sh` — calculates SASA for the consensus pocket only
