# MDP Files — 02_5FWJ_apo

## Overview

This directory contains the GROMACS .mdp files used to prepare and run the `02_5FWJ_apo` molecular dynamics system.

The folder label `02_5FWJ_apo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-depleted** receptor setup.

These files define the simulation parameters for each major MD stage, including energy minimization, ion addition, equilibration, and production simulation.

---

## Contents

- `minim.mdp` — energy minimization parameters
- `ions.mdp` — parameters used for ion addition
- `nvt.mdp` — NVT equilibration parameters
- `npt.mdp` — NPT equilibration parameters
- `md.mdp` — production MD parameters

---

## Purpose

These `.mdp` files were used as simulation control files for building and running the **5FWJ metal-depleted** MD workflow in GROMACS.

---

## Notes

- These files define the simulation protocol but do not contain coordinates or topology information.
- Structure and topology files required for the full workflow are stored in the sibling `structures/` and `topology/` directories.
- The internal label `apo` is retained in folder and file names for workflow continuity.
- In the manuscript, this system is described as **5FWJ metal-depleted**, not as a fully characterized biochemical apo enzyme state.
