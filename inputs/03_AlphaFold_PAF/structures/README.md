# Structure Files — 03_AlphaFold_PAF

## Overview

This directory contains the structural input files used to prepare the **03_AlphaFold_PAF** molecular dynamics system.

These files represent key coordinate states generated during MD system setup, along with the receptor and ligand structure files required for system construction.

---

## Contents

- `5FWJ_holo_receptor.pdb` — receptor structure used as the starting protein input
- `dolasetron.mol` — ligand structure file used for the bound ligand
- `5FWJ_holo_complex.gro` — complex coordinate file
- `5FWJ_holo_boxed.gro` — boxed system coordinates
- `5FWJ_holo_solvated.gro` — solvated system coordinates
- `5FWJ_holo_ionized.gro` — ionized system coordinates

---

## Purpose

This directory provides the coordinate and structural input files used during preparation of the **03_AlphaFold_PAF** MD system.

---

## Notes

- The `.gro` files represent intermediate setup stages of the MD system preparation workflow.
- Topology and parameter files required for simulation are stored separately in the sibling `topology/` directory.
