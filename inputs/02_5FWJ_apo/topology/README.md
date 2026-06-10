# Topology Files — 02_5FWJ_apo

## Overview

This directory contains the topology and parameter files required to reproduce the `02_5FWJ_apo` molecular dynamics system.

The folder label `02_5FWJ_apo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-depleted** receptor setup.

This directory includes the main topology file, ligand parameter files, protein topology include files, position restraint files, and the local CHARMM36 force-field directory used during MD setup and simulation.

---

## Contents

- `5fwj_apo_topol.top` — main GROMACS topology file for the system
- `dol.itp` — ligand topology include file
- `dol.prm` — ligand parameter file
- `topol_Protein_chain_A.itp` — topology include for protein chain A
- `topol_Protein_chain_B.itp` — topology include for protein chain B
- `posre_DOL.itp` — position restraints for the ligand
- `posre_Protein_chain_A.itp` — position restraints for protein chain A
- `posre_Protein_chain_B.itp` — position restraints for protein chain B
- `charmm36-jul2022.ff/` — local CHARMM36 force-field include directory
- `README.md` — documentation for this topology module

---

## Purpose

This directory was created to provide the topology, parameter, and restraint files required to build and simulate the **5FWJ metal-depleted** MD system in a reproducible manner.

---

## Notes

- The files in this directory are used together with the structure files in `../structures/` and the simulation parameter files in `../mdp/`.
- Position restraint files are included for system preparation and equilibration stages where applicable.
- The internal label `apo` is retained in file names for workflow continuity.
- In the manuscript, this system is described as **5FWJ metal-depleted**, not as a fully characterized biochemical apo enzyme state.
- Unlike the **5FWJ metal-retained** setup, this topology folder does not include crystallographic metal-ion restraint files.
