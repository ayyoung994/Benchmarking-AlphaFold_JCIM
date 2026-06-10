# 04_AlpaFold_CAF Inputs

## Overview

This directory contains the input files required to reproduce the `04_AlphaFold_CAF` molecular dynamics system used in the KDM5C receptor-setup sensitivity study.

The folder label `04_AlphaFold_CAF` corresponds to the **custom AlphaFold-derived KDM5C receptor setup** used in the manuscript. This receptor setup is referred to as **CAF**.

This directory includes simulation parameter files, structural input files, topology files, and replica organization used for MD setup and production.

---

## Directory Structure

- `mdp/` — GROMACS simulation parameter files used for minimization, equilibration, ion addition, and production MD
- `replicas/` — organization of replica-specific simulation runs
- `structures/` — structural input files used during system preparation
- `topology/` — topology, force-field, ligand parameter, and restraint files required for the MD system

---

## Purpose

This directory was created to provide a reproducible and organized record of the files used to prepare and run the **CAF** MD system.

---

## Notes

- This folder contains MD setup inputs rather than post-simulation analysis outputs.
- Downstream analyses for this system are stored separately under `analysis/04_AlphaFold_CAF/`.
- In the manuscript, this system is described as the **CAF** receptor setup.
- CAF denotes the custom AlphaFold-derived KDM5C receptor model used in this study.
