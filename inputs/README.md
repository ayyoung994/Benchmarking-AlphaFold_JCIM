# MD Input Files

## Overview

This directory contains the system-specific input files required to reproduce the molecular dynamics (MD) systems used in the KDM5C receptor-setup sensitivity study.

Each subdirectory corresponds to one evaluated receptor setup and contains structural files, topology files, simulation parameter files, and replica organization used for MD setup and execution.

---

## Directory Structure

- `01_5FWJ_holo/` — input files for the **5FWJ metal-retained** receptor setup
- `02_5FWJ_apo/` — input files for the **5FWJ metal-depleted** receptor setup
- `03_AlphaFold_PAF/` — input files for the public AlphaFold-derived receptor setup (**PAF**)
- `04_AlphaFold_CAF/` — input files for the custom AlphaFold-derived receptor setup (**CAF**)

The internal labels holo and apo are retained for workflow continuity. In the manuscript, these correspond to **5FWJ metal-retained** and **5FWJ metal-depleted**, respectively.

---

## Purpose

This directory was created to organize the full set of MD preparation files for each receptor setup in a system-specific and reproducible format.

These files include:
- structural input files
- topology and parameter files
- simulation `.mdp` files
- replica-level organization for MD production runs.

---

## Notes

- Each system directory is organized independently because the MD setup was system-dependent.
- The corresponding post-MD analyses are stored separately under the `analysis/` directory.
- These files are intended to support reproducibility and traceability of the MD setup used in the manuscript.
- The receptor setups included in this study are **5FWJ metal-retained**, **5FWJ metal-depleted**, **PAF**, and **CAF**.
