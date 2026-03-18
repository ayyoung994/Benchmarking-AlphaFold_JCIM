# 02_5FWJ_apo Inputs

## Overview

This directory contains the input files required to reproduce the **02_5FWJ_apo** molecular dynamics system in the KDM5C benchmarking study.

The `02_5FWJ_apo` system corresponds to the crystal-structure-based cofactor-free receptor model and includes the simulation parameter files, structural input files, topology files, and replica organization used for MD setup and production.

---

## Directory Structure

- `mdp/` — GROMACS simulation parameter files used for minimization, equilibration, ion addition, and production MD
- `replicas/` — organization of replica-specific simulation runs
- `structures/` — structural input files used during system preparation
- `topology/` — topology, force-field, ligand parameter, and restraint files required for the MD system

---

## Purpose

This directory was created to provide a reproducible and organized record of the files used to prepare and run the **02_5FWJ_apo** MD system.

---

## Notes

- This folder contains MD setup inputs rather than post-simulation analysis outputs.
- Downstream analyses for this system are stored separately under `analysis/02_5FWJ_apo/`.
