# 02_5FWJ_apo Inputs

## Overview

This directory contains the input files required to reproduce the `02_5FWJ_apo` molecular dynamics system used in the KDM5C receptor-setup sensitivity study.

The folder label `02_5FWJ_apo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-depleted** receptor setup. This system was derived from the experimental 5FWJ structure, with crystallographic metal ions removed during receptor preparation for MD simulation.

This directory includes simulation parameter files, structural input files, topology files, and replica organization used for MD setup and production.

---

## Directory Structure

- `mdp/` — GROMACS simulation parameter files used for minimization, equilibration, ion addition, and production MD
- `replicas/` — organization of replica-specific simulation runs
- `structures/` — structural input files used during system preparation
- `topology/` — topology, force-field, ligand parameter, and restraint files required for the MD system

---

## Purpose

This directory was created to provide a reproducible and organized record of the files used to prepare and run the **5FWJ metal-depleted** MD system.

---

## Notes

- This folder contains MD setup inputs rather than post-simulation analysis outputs.
- Downstream analyses for this system are stored separately under `analysis/02_5FWJ_apo/`.
- The internal label `apo` is retained in folder and file names for workflow continuity.
- In the manuscript, this system should be described as **5FWJ metal-depleted**, not as a fully characterized biochemical apo enzyme state.
- The crystallographic metal ions were removed during receptor preparation according to the MD setup described in the manuscript.
