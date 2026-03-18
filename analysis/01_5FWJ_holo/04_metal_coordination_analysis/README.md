# Metal Coordination Analysis

## Overview

This directory contains the metal coordination analysis for the **5FWJ holo system** in the KDM5C benchmarking study.

The purpose of this workflow is to evaluate the stability of **Mn²⁺ coordination** during the MD simulations by monitoring the minimum distances and contact persistence between the Mn²⁺ ion and three key coordinating residues in the JmjC pocket:

- **His514 (NE2)**
- **Glu516 (OE2)**
- **His602 (NE2)**

This analysis was performed specifically for the **crystal-structure-based holo reference system (5FWJ holo)**, where Mn²⁺ is present in the binding site.

---

## Directory Structure

- `scripts/`  
  Shell scripts used to generate the metal coordination index groups and run the distance/contact analysis.

- `raw_outputs/`  
  Raw `.xvg` files produced by `gmx mindist`, including per-replica minimum distance traces and contact-count traces for Mn²⁺ against each coordinating residue.

- `processed_tables/`  
  Processed summary tables derived from the raw outputs, such as replica-level and across-replica statistics for metal coordination distances and contacts.

- `README.md`  
  Description of the workflow, file organization, and output contents.

---

## Workflow Summary

### 1. Metal coordination index generation

The first script creates a dedicated index file for metal coordination analysis.  
The generated groups include:

- the **Mn²⁺ ion** located near the JmjC pocket
- **potential pocket donor atoms** (N/O/S atoms)
- **His514 NE2**
- **Glu516 OE2**
- **His602 NE2**

Script:
- `scripts/01_make_metal_coord_index.sh`

Output:
- `metal_coord_rep*.ndx`

---

### 2. Mn²⁺–residue distance and contact analysis

The second script calculates the minimum distance and contact persistence between Mn²⁺ and each coordinating residue using `gmx mindist`.

For each replica, the following residue pairs were analyzed:

- **Mn²⁺–His514 (NE2)**
- **Mn²⁺–Glu516 (OE2)**
- **Mn²⁺–His602 (NE2)**

Script:
- `scripts/02_metal_coordination_mindist.sh`

Outputs:
- `raw_outputs/dist_MN_HIS514_NE2_*.xvg`
- `raw_outputs/contact_MN_HIS514_NE2_*.xvg`
- `raw_outputs/dist_MN_GLU516_OE2_*.xvg`
- `raw_outputs/contact_MN_GLU516_OE2_*.xvg`
- `raw_outputs/dist_MN_HIS602_NE2_*.xvg`
- `raw_outputs/contact_MN_HIS602_NE2_*.xvg`

---

## Replicas

This workflow was applied to **three independent replicas** of the 5FWJ holo system.

Replica-specific outputs are labeled using the corresponding replica tag, for example:

- `EXPB1`
- `EXPB2`
- `EXPB3`

---

## Notes

- Distance traces report the **minimum Mn²⁺–atom distance** over time.
- Contact traces report whether the selected Mn²⁺–residue pair falls within the specified cutoff used in the `gmx mindist` calculation.
- This analysis was limited to the **5FWJ holo system** because explicit Mn²⁺ coordination was only evaluated for the metal-bound crystal-structure-based reference model.

---

## Expected Outputs

### Raw outputs
Per-replica `.xvg` files for:

- Mn²⁺–His514 distance and contacts
- Mn²⁺–Glu516 distance and contacts
- Mn²⁺–His602 distance and contacts

### Processed outputs
Summary tables may include:

- per-replica mean distance
- per-replica standard deviation
- minimum observed distance
- across-replica summary statistics

---

## Scripts

- `scripts/01_make_metal_coord_index.sh`  
  Creates replica-specific index groups for Mn²⁺ coordination analysis.

- `scripts/02_metal_coordination_mindist.sh`  
  Runs `gmx mindist` to calculate distance and contact traces for Mn²⁺ against the coordinating residues.

---

## System Scope

This folder corresponds to:

- **Project:** Benchmarking-AlphaFold-JCIM
- **Analysis branch:** `analysis/01_5FWJ_holo/04_metal_coordination_analysis/`

The analysis focuses only on the **metal-bound holo reference system** and is not applied to the apo, PAF, or CAF systems.
