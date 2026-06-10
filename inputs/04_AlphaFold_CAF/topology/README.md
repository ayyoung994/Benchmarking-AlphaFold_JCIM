# Topology Files — 04_AlphaFold_CAF

## Overview

This directory contains the topology and parameter files required to reproduce the `04_AlphaFold_CAF` molecular dynamics system.

The folder label `04_AlphaFold_CAF` corresponds to the **custom AlphaFold-derived KDM5C receptor setup used** in the manuscript. This receptor setup is referred to as **CAF**.

This directory includes the main topology file, ligand parameter files, ligand restraint files, and the local CHARMM36 force-field directory used during MD setup and simulation.

---

## Contents

- `CAF_topol.top` — main GROMACS topology file for the system
- `dol.itp` — ligand topology include file
- `dol.prm` — ligand parameter file
- `posre_DOL.itp` — position restraints for the ligand
- `charmm36-jul2022.ff/` — local CHARMM36 force-field include directory
- `README.md` — documentation for this topology module

---

## Purpose

This directory was created to provide the topology, parameter, and restraint files required to build and simulate the **CAF** MD system in a reproducible manner.

---

## Notes

- The files in this directory are used together with the structure files in `../structures/` and the simulation parameter files in `../mdp/`.
- This topology folder includes ligand-specific topology and restraint files for the `DOL` ligand used in the MD system.
- Compared with the crystal-structure-derived 5FWJ systems, this folder contains a simplified topology organization specific to the CAF receptor setup.
- In the manuscript, this system is described as the **CAF** receptor setup.
