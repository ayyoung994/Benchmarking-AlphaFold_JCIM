# Topology Files — 01_5FWJ_holo

## Overview

This directory contains the topology and parameter files required to reproduce the `01_5FWJ_holo` molecular dynamics system.

The folder label `01_5FWJ_holo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-retained** receptor setup.

This directory includes the main topology file, ligand parameter files, protein topology include files, position restraint files, and the local CHARMM36 force-field directory used during MD setup and simulation.

---

## Contents

- `5fwj_holo_topol.top` — main GROMACS topology file for the system
- `dol.itp` — ligand topology include file
- `dol.prm` — ligand parameter file
- `topol_Protein_chain_A.itp` — topology include for protein chain A
- `topol_Protein_chain_B.itp` — topology include for protein chain B
- `posre_Protein_chain_A.itp` — position restraints for protein chain A
- `posre_Protein_chain_B.itp` — position restraints for protein chain B
- `posre_ligand.itp` — position restraints for the ligand
- `posre_MG.itp` — position restraints for Mg
- `posre_MN2P.itp` — position restraints for Mn
- `posre_ZN.itp` — position restraints for Zn
- `charmm36-jul2022.ff/` — local CHARMM36 force-field include directory
- `README.md` — documentation for this topology module

---

## Purpose

This directory was created to provide the topology, parameter, and restraint files required to build and simulate the **5FWJ metal-retained** MD system in a reproducible manner.

---

## Notes

- The files in this directory are used together with the structure files in `../structures/` and the simulation parameter files in `../mdp/`.
- Position restraint files are included for system preparation and equilibration stages where applicable.
- The internal label `holo` is retained in file names for workflow continuity.
- In the manuscript, this system is described as **5FWJ metal-retained**, not as a fully characterized biochemical holo enzyme state.
- The retained crystallographic metal ions were included according to the MD setup described in the manuscript
