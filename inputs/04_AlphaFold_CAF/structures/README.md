# Structure Files — 04_AlphaFold_CAF

## Overview

This directory contains the structural input files used to prepare the `04_AlphaFold_CAF` molecular dynamics system.

The folder label `04_AlphaFold_CAF` corresponds to the **custom AlphaFold-derived KDM5C receptor setup** used in the manuscript. This receptor setup is referred to as **CAF**.

These files represent key coordinate states generated during MD system setup, along with the receptor and ligand structure files required for system construction.

---

## Contents

- `5FWJ_holo_receptor.pdb` — receptor structure used as the starting protein input for the **CAF** receptor setup
- `dolasetron.mol` — ligand structure file used for the `DOL` ligand
- `5FWJ_holo_complex.gro` — protein–ligand complex coordinate file
- `5FWJ_holo_boxed.gro` — boxed system coordinates
- `5FWJ_holo_solvated.gro` — solvated system coordinates
- `5FWJ_holo_ionized.gro` — ionized system coordinates

---

## Purpose

This directory provides the coordinate and structural input files used during preparation of the **CAF** MD system.

---

## Notes

- The `.gro` files represent intermediate setup stages of the MD system preparation workflow.
- Topology and parameter files required for simulation are stored separately in the sibling `topology/` directory.
- In the manuscript, this system is described as the **CAF** receptor setup.
- CAF denotes the custom AlphaFold-derived KDM5C receptor model used in this study.
