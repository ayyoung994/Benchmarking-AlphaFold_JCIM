# Metal Coordination Summary

## Overview

This directory contains the final outputs for the metal coordination analysis performed in the KDM5C benchmarking study.

Unlike the other post-MD summary folders, this analysis was conducted **only for the 5FWJ holo system**, because Mn²⁺ coordination was evaluated specifically in the metal-bound crystal-structure-based reference model.

---

## Contents

- `metal_coordination.png` — final figure summarizing Mn²⁺ coordination distances in the 5FWJ holo system
- `dist_MN_GLU516_OE2_rep1.xvg`, `dist_MN_GLU516_OE2_rep2.xvg`, `dist_MN_GLU516_OE2_rep3.xvg` — replica-level Mn–Glu516(OE2) distance traces
- `dist_MN_HIS514_NE2_rep1.xvg`, `dist_MN_HIS514_NE2_rep2.xvg`, `dist_MN_HIS514_NE2_rep3.xvg` — replica-level Mn–His514(NE2) distance traces
- `dist_MN_HIS602_NE2_rep1.xvg`, `dist_MN_HIS602_NE2_rep2.xvg`, `dist_MN_HIS602_NE2_rep3.xvg` — replica-level Mn–His602(NE2) distance traces
- `README.md` — documentation for this summary module

---

## Purpose

This folder was created to provide a clean location for the final metal coordination outputs derived from the **5FWJ holo** system.

These outputs are intended to support:
- evaluation of Mn²⁺ coordination behavior across replicas,
- interpretation of metal-site structural stability,
- and preparation of summary materials for reporting and manuscript development.

---

## Notes

- This analysis was performed **only for the 5FWJ holo system**.
- The comparative figure summarizes Mn²⁺ distances to selected coordinating residues using replica-averaged trends shown as mean ± SD (`n = 3`).
- All replica-level `.xvg` source output files are stored in the corresponding `raw_outputs/` directory.
- These outputs are intended for downstream interpretation and reporting.
