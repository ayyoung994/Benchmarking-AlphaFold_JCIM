# Replica 2 — 03_AlphaFold_PAF

## Overview

This directory contains the files associated with **Replica 2** of the **03_AlphaFold_PAF** molecular dynamics workflow.

This replica was generated using the shared system setup and MD protocol, with replica-specific initialization introduced during the **NVT stage**.

---

## Simulation Details

- System: `03_AlphaFold_PAF`
- Replica: `rep2`
- Initial velocities: generated during the NVT stage
- `gen_seed`: `22222`
- Initial production length: `20 ns`
- Extension production length: `40 ns`
- Total production length: `60 ns`

---

## Purpose

This directory was created to store the files specific to **Replica 2** only.

Replica-specific files in this folder correspond exclusively to this independent simulation branch, while shared system setup files are stored in the parent directories.

---

## Notes

- This directory contains replica-specific simulation files for **Replica 2** of the **03_AlphaFold_PAF** system.
- The defining replica-specific parameter is the `gen_seed` used during the NVT stage.
- This replica includes an initial 20 ns production run followed by a 40 ns extension, giving a total simulation length of 60 ns.
- Shared setup files, including topology, coordinates, and common MD parameter files, are stored in the parent directories.
- Downstream analyses derived from this replica are stored separately under the corresponding `analysis/` directories.
