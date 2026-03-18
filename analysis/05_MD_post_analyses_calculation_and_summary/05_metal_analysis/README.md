# Metal Coordination Summary

## Overview

This directory contains the final outputs for the metal coordination analysis performed in the KDM5C benchmarking study.

Unlike the other post-MD summary folders, this analysis was conducted **only for the 5FWJ holo system**, because Mn²⁺ coordination was evaluated specifically in the metal-bound crystal-structure-based reference model.

---

## Directory Structure

- `raw_outputs/` — replica-level `.xvg` source output files for Mn²⁺ distance and contact analyses
- `metal_coordination.png` — final figure summarizing Mn²⁺ coordination behavior in the 5FWJ holo system
- `README.md` — documentation for this summary module

---

## Raw Outputs

The `raw_outputs/` directory contains replica-level source files used for metal coordination analysis, including:

- Mn–Glu516(OE2) distance traces  
  - `dist_MN_GLU516_OE2_rep1.xvg`
  - `dist_MN_GLU516_OE2_rep2.xvg`
  - `dist_MN_GLU516_OE2_rep3.xvg`

- Mn–His514(NE2) distance traces  
  - `dist_MN_HIS514_NE2_rep1.xvg`
  - `dist_MN_HIS514_NE2_rep2.xvg`
  - `dist_MN_HIS514_NE2_rep3.xvg`

- Mn–His602(NE2) distance traces  
  - `dist_MN_HIS602_NE2_rep1.xvg`
  - `dist_MN_HIS602_NE2_rep2.xvg`
  - `dist_MN_HIS602_NE2_rep3.xvg`

- Mn coordination contact traces  
  - `contact_MN_GLU516_OE2_rep1.xvg`
  - `contact_MN_GLU516_OE2_rep2.xvg`
  - `contact_MN_GLU516_OE2_rep3.xvg`
  - `contact_MN_HIS514_NE2_rep1.xvg`
  - `contact_MN_HIS514_NE2_rep2.xvg`
  - `contact_MN_HIS514_NE2_rep3.xvg`
  - `contact_MN_HIS602_NE2_rep1.xvg`
  - `contact_MN_HIS602_NE2_rep2.xvg`
  - `contact_MN_HIS602_NE2_rep3.xvg`

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
- The final figure summarizes Mn²⁺ distances to selected coordinating residues using replica-averaged trends shown as mean ± SD (`n = 3`).
- All replica-level `.xvg` source output files used in this analysis are stored in the `raw_outputs/` directory.
- These outputs are intended for downstream interpretation and reporting.
