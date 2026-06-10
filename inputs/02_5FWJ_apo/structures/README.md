# Structure Files — 02_5FWJ_apo

## Overview

This directory contains the structural input files used to prepare the `02_5FWJ_apo` molecular dynamics system.

The folder label `02_5FWJ_apo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-depleted** receptor setup.

These files represent key coordinate states generated during MD system setup, along with the receptor and ligand structure files required for system construction.

---

## Contents

- `5FWJ_apo_receptor.pdb` — receptor structure used as the starting protein input for the **5FWJ metal-depleted** setup
- `dolasetron.mol` — ligand structure file used for the `DOL` ligand
- `5FWJ_apo_complex.gro` — protein–ligand complex coordinate file
- `5FWJ_apo_boxed.gro` — boxed system coordinates
- `5FWJ_apo_solvated.gro` — solvated system coordinates
- `5FWJ_apo_ionized.gro` — ionized system coordinates

---

## Purpose

This directory provides the coordinate and structural input files used during preparation of the **5FWJ metal-depleted** MD system.

---

## Notes

- The `.gro` files represent intermediate setup stages of the MD system preparation workflow.
- Topology and parameter files required for simulation are stored separately in the sibling `topology/` directory.
- The internal label `apo` is retained in file names for workflow continuity.
- In the manuscript, this system is described as **5FWJ metal-depleted**, not as a fully characterized biochemical apo enzyme state.
- Crystallographic metal ions were removed during receptor preparation according to the MD setup described in the manuscript.
