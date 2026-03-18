# MDP Files — 03_AlphaFold_PAF

## Overview

This directory contains the GROMACS `.mdp` files used to prepare and run the **03_AlphaFold_PAF** molecular dynamics system.

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

These `.mdp` files were used as the simulation control files for building and running the **03_AlphaFold_PAF** MD workflow in GROMACS.

---

## Notes

- These files define the simulation protocol but do not contain coordinates or topology information.
- Structure and topology files required for the full workflow are stored in the sibling `structures/` and `topology/` directories.
