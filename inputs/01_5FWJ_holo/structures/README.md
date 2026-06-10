# Structure Files — 01_5FWJ_holo

## Overview

This directory contains the structural input files used to prepare the 01_5FWJ_holo molecular dynamics system.

The folder label `01_5FWJ_holo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-retained** receptor setup.

These files represent key coordinate states generated during MD system setup, along with the receptor and ligand structure files required for system construction.

---

## Contents

- `5FWJ_holo_receptor.pdb` — receptor structure used as the starting protein input for the 5FWJ metal-retained setup
- `dolasetron.mol` — ligand structure file used for the `DOL` ligand
- `5FWJ_holo_complex.gro` — protein–ligand complex coordinate file
- `5FWJ_holo_boxed.gro` — boxed system coordinates
- `5FWJ_holo_solvated.gro` — solvated system coordinates
- `5FWJ_holo_ionized.gro` — ionized system coordinates

---

## Purpose

This directory provides the coordinate and structural input files used during preparation of the **5FWJ metal-retained** MD system.

---

## Notes

- The `.gro` files represent intermediate coordinate states generated during the MD system preparation workflow.
- Topology and parameter files required for simulation are stored separately in the sibling `topology/` directory.
- The internal label `holo` is retained in file names for workflow continuity.
- In the manuscript, this system is described as **5FWJ metal-retained**, not as a fully characterized biochemical holo enzyme state.
- The retained crystallographic metal ions were included according to the MD setup described in the manuscript.
