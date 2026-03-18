# Replica 1 — 01_5FWJ_holo

## Overview

This directory contains the files associated with **Replica 1** of the **01_5FWJ_holo** molecular dynamics workflow.

This replica was generated using the shared system setup and MD protocol, with replica-specific initialization introduced during the **NVT stage**.

---

## Simulation Details

- System: `01_5FWJ_holo`
- Replica: `rep1`
- Total simulation length: `60 ns`
- Initial velocities: generated during the NVT stage
- `gen_seed`: `11111`

---

## Purpose

This directory was created to store the files specific to **Replica 1** only.

Replica-specific files in this folder correspond exclusively to this independent simulation branch, while shared system setup files are stored in the parent directories.

---

## Notes

- This directory contains replica-specific simulation files for **Replica 1** of the **5FWJ holo** system.
- The defining replica-specific parameter is the `gen_seed` used during the NVT stage.
- Shared setup files, including topology, coordinates, and common MD parameter files, are stored in the parent directories.
- Downstream analyses derived from this replica are stored separately under the corresponding `analysis/` directories.
