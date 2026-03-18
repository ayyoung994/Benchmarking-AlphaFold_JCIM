# Topology Files — 01_5FWJ_holo

## Overview

This directory contains the topology and parameter files required to reproduce the **01_5FWJ_holo** molecular dynamics system.

It includes the main topology file, ligand parameter files, protein topology includes, position restraint files, and the local CHARMM36 force-field directory used during MD setup and simulation.

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

This directory was created to provide the topology, parameter, and restraint files required to build and simulate the **01_5FWJ_holo** MD system in a reproducible manner.

---

## Notes

- The files in this directory are used together with the structure files in `../structures/` and the simulation parameter files in `../mdp/`.
- Position restraint files are included for system preparation and equilibration stages where applicable.
