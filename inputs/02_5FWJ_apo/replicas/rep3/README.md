# Replica 3 — 02_5FWJ_apo

## Overview

This directory contains the files associated with **Replica 3** of the **02_5FWJ_apo** molecular dynamics workflow.

This replica was generated using the shared system setup and MD protocol, with replica-specific initialization introduced during the **NVT stage**.

---

## Simulation Details

- System: `03_5FWJ_apo`
- Replica: `rep3`
- Total simulation length: `60 ns`
- Initial velocities: generated during the NVT stage
- `gen_seed`: `33333`

---

## Purpose

This directory was created to store the files specific to **Replica 3** only.

Replica-specific files in this folder correspond exclusively to this independent simulation branch, while shared system setup files are stored in the parent directories.

---

## Notes

- This directory contains replica-specific simulation files for **Replica 3** of the **5FWJ apo** system.
- The defining replica-specific parameter is the `gen_seed` used during the NVT stage.
- Shared setup files, including topology, coordinates, and common MD parameter files, are stored in the parent directories.
- Downstream analyses derived from this replica are stored separately under the corresponding `analysis/` directories.
