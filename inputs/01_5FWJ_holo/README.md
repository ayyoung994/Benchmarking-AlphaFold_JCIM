# 01_5FWJ_holo Inputs

## Overview

This directory contains the input files required to reproduce the `01_5FWJ_holo` molecular dynamics system used in the KDM5C receptor-setup sensitivity study.

The folder label `01_5FWJ_holo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-retained** receptor setup. This system was derived from the experimental 5FWJ structure, with crystallographic metal ions retained during protein preparation for MD simulation.

This directory includes simulation parameter files, structural input files, topology files, and replica organization used for MD setup and production.

---

## Directory Structure

- `mdp/` — GROMACS simulation parameter files used for minimization, equilibration, ion addition, and production MD
- `replicas/` — organization of replica-specific simulation runs
- `structures/` — structural input files used during system preparation
- `topology/` — topology, force-field, ligand parameter, and restraint files required for the MD system

---

## Purpose

This directory was created to provide a reproducible and organized record of the files used to prepare and run the **5FWJ metal-retained** MD system.

---

## Notes

- This folder contains MD setup inputs rather than post-simulation analysis outputs.
- Downstream analyses for this system are stored separately under `analysis/01_5FWJ_holo/`.
- The internal label `holo` is retained in folder and file names for workflow continuity.
- In the manuscript, this system should be described as **5FWJ metal-retained**, not as a fully characterized biochemical holo enzyme state.
- The retained crystallographic metal ions were treated according to the MD setup described in the manuscript.
