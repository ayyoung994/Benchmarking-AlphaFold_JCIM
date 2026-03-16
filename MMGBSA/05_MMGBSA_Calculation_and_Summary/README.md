# MM/GBSA Calculation and Summary

This folder contains the Jupyter notebooks and summary CSV files used for MM/GBSA result processing across all four systems.

## Included systems
- 5fwj_holo
- 5fwj_apo
- PAF
- CAF

## Included files
- system-specific notebooks and summary outputs
- `MMGBSA_per_replica_all_systems.csv`
- `MMGBSA_across_replicas_all_systems.csv`

## Description
The notebooks were used to extract MM/GBSA energy terms from replica outputs, generate per-replica summaries, calculate across-replica statistics, and combine all systems into overall summary tables.

## Reported terms
- VDWAALS
- EEL
- EGB
- ESURF
- GGAS
- GSOLV
- ΔGBind (ΔTOTAL)

Because the outputs contain `EGB`, these results correspond to MM/GBSA calculations.
