# Metal Coordination Summary

## Overview

This directory contains the final outputs for the metal-associated distance analysis performed in the KDM5C receptor-setup sensitivity study.

Unlike the other post-MD summary folders, this analysis was conducted only for the `01_5FWJ_holo` system. In the manuscript, this system corresponds to the **5FWJ metal-retained** receptor setup. The analysis was limited to this system because crystallographic Mn²⁺ was explicitly retained only in the metal-retained experimental receptor setup.

---

## Directory Structure

- `raw_outputs/` — replica-level `.xvg` source output files for Mn²⁺ distance and contact analyses
- `metal_coordination.png` — final figure summarizing Mn²⁺–residue distance behavior in the 5FWJ metal-retained setup
- `metal_contact_replica_summary_angstrom.csv` — replica-level summary table for metal-associated distance/contact metrics
- `metal_contact_across_replicas_summary_angstrom.csv` — across-replica summary table used for integrated comparison and figure generation
- `README.md` — documentation for this summary module

---

## Raw Outputs

The `raw_outputs/` directory contains replica-level source files used for metal-associated distance analysis, including:

- Mn²⁺–Glu516(OE2) distance traces
- Mn²⁺–His514(NE2) distance traces
- Mn²⁺–His602(NE2) distance traces
- Mn²⁺–residue contact traces for the same residue-atom selections across replicas

These files are stored as `.xvg` outputs for each replica and were used to generate the processed summaries and final figure.

---

## Purpose

This folder was created to provide a clean location for the final metal-associated distance outputs derived from the 5FWJ metal-retained receptor setup.

These outputs are intended to support:
- evaluation of Mn²⁺ coordination behavior across replicas
- interpretation of metal-associated structural changes under the applied simulation protocol
- preparation of processed summary tables
- generation of summary materials for reporting and manuscript development

---

## Notes

- This analysis was performed only for the **5FWJ metal-retained** receptor setup.
- The final figure summarizes Mn²⁺ distances to selected residue atoms using replica-averaged trends shown as mean ± SD across three replicas.
- All replica-level `.xvg` source output files used in this analysis are stored in the `raw_outputs/` directory.
- The CSV files in this directory contain processed summary outputs derived from the replica-level source data.
- These outputs are intended for downstream interpretation and reporting.
- Because no bonded metal–residue coordination restraints were applied during production MD, these results should be interpreted as metal-associated distance behavior under the applied nonbonded metal treatment, not as definitive validation of native catalytic metal coordination.
- The internal label `holo` is retained in file and folder names for workflow continuity. In the manuscript, this system is described as **5FWJ metal-retained**.
