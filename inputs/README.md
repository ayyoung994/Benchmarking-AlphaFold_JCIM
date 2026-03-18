# MD Input Files

## Overview

This directory contains the system-specific input files required to reproduce the molecular dynamics (MD) systems used in the KDM5C benchmarking study.

Each subdirectory corresponds to one benchmarked receptor model and contains the structural files, topology files, simulation parameter files, and replica organization used for MD setup and execution.

---

## Directory Structure

- `01_5FWJ_holo/` — input files for the crystal-structure-based holo system
- `02_5FWJ_apo/` — input files for the crystal-structure-based apo system
- `03_AlphaFold_PAF/` — input files for the public AlphaFold-derived system
- `04_AlphaFold_CAF/` — input files for the custom AlphaFold-derived system

---

## Purpose

This directory was created to organize the full set of MD preparation files for each benchmarked system in a system-specific and reproducible format.

These files include:
- structural input files,
- topology and parameter files,
- simulation `.mdp` files,
- and replica-level organization for MD production runs.

---

## Notes

- Each system directory is organized independently because the MD setup was system-dependent.
- The corresponding post-MD analyses are stored separately under the `analysis/` directory.
