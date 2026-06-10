# MM/GBSA Calculation and Summary

This folder contains Jupyter notebooks and summary CSV files used for cross-system MM/GBSA endpoint-energy result processing across all four KDM5C receptor setups.

## Included systems
- 5fwj_holo — corresponds to **5FWJ metal-retained**
- 5fwj_apo — corresponds to **5FWJ metal-depleted**
- PAF — public AlphaFold-derived receptor setup
- CAF — custom AlphaFold-derived receptor setup

The labels `holo` and `apo` are retained for workflow continuity. In the manuscript, these systems are described as **5FWJ metal-retained** and **5FWJ metal-depleted**, respectively.

## Included files
- system-specific notebooks and summary outputs
- `MMGBSA_per_replica_all_systems.csv`
- `MMGBSA_across_replicas_all_systems.csv`
- README files documenting the cross-system MM/GBSA post-processing workflow

## Description
The notebooks were used to extract MM/GBSA energy terms from replica-level output files, generate per-replica summaries, calculate across-replica statistics, and combine all receptor setups into overall summary tables for downstream comparison and manuscript reporting.

## Reported terms

The summary tables may include the following MM/GBSA energy terms:

- `VDWAALS` — van der Waals contribution
- `EEL` — electrostatic contribution
- `EGB` — polar solvation contribution from the generalized Born model
- `ESURF` — nonpolar solvation contribution
- `GGAS` — gas-phase energy contribution
- `GSOLV` — solvation energy contribution
- `ΔGBind` or `ΔTOTAL` — total MM/GBSA endpoint-energy estimate

Because the outputs contain `EGB`, these results correspond to MM/GBSA calculations.

## Notes

- MM/GBSA values are provided as protocol-dependent endpoint-energy descriptors.
- These values should not be interpreted as absolute binding affinities or evidence of ligand potency.
- Cross-system summaries are intended for comparison with trajectory-based ligand-pose metrics and for reproducibility of the manuscript analyses.
- File naming may vary slightly across systems depending on internal workflow labels and replica-specific naming conventions.
