# Metal Coordination Summary

## Overview

This directory contains the final outputs for the metal coordination analysis performed in the KDM5C benchmarking study.

Unlike the other post-MD summary folders, this analysis was conducted **only for the 5FWJ holo system**, because Mn²⁺ coordination was evaluated specifically in the metal-bound crystal-structure-based reference model.

---

## Directory Structure

- `raw_outputs/` — replica-level `.xvg` source output files for Mn²⁺ distance and contact analyses
- `metal_coordination.png` — final figure summarizing Mn²⁺ coordination behavior in the 5FWJ holo system
- `metal_contact_replica_summary_angstrom.csv` — replica-level summary table for metal contact or distance-related metrics
- `metal_contact_across_replicas_summary_angstrom.csv` — across-replica summary table used for integrated comparison and figure generation
- `README.md` — documentation for this summary module

---

## Raw Outputs

The `raw_outputs/` directory contains replica-level source files used for metal coordination analysis, including:

- Mn–Glu516(OE2) distance traces
- Mn–His514(NE2) distance traces
- Mn–His602(NE2) distance traces
- Mn coordination contact traces for the same residue sets across replicates

These files are stored as `.xvg` outputs for each replicate and were used to generate the processed summaries and final figure.

---

## Purpose

This folder was created to provide a clean location for the final metal coordination outputs derived from the **5FWJ holo** system.

These outputs are intended to support:
- evaluation of Mn²⁺ coordination behavior across replicas,
- interpretation of metal-site structural stability,
- preparation of processed summary tables,
- and generation of summary materials for reporting and manuscript development.

---

## Notes

- This analysis was performed **only for the 5FWJ holo system**.
- The final figure summarizes Mn²⁺ distances to selected coordinating residues using replica-averaged trends shown as mean ± SD (`n = 3`).
- All replica-level `.xvg` source output files used in this analysis are stored in the `raw_outputs/` directory.
- The CSV files in this directory contain processed summary outputs derived from the replica-level source data.
- These outputs are intended for downstream interpretation and reporting.
