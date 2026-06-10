# Summary of MM/GBSA Results for 03_AlphaFold_PAF

This directory contains summarized MM/GBSA endpoint-energy results for the `03_AlphaFold_PAF system`, derived from three independent replicas.

The folder label `03_AlphaFold_PAF` corresponds to the **public AlphaFold-derived KDM5C receptor model** used in the manuscript. This receptor setup is referred to as **PAF**.

## Contents

- **`MMGBSA_per_replica_PAF_summary.csv`**  
  Contains MM/GBSA energy terms for each replica separately, enabling evaluation of inter-replica consistency and variability.

- **`MMGBSA_across_replicas_PAF_summary.csv`**  
  Contains aggregated MM/GBSA endpoint-energy results across all replicas, including summary statistics used for comparative interpretation and reporting.

## Purpose
These summary tables provide a compact overview of the MM/GBSA energy-decomposition results for the **PAF receptor setup** and support:

1. replica-level inspection
2. system-level interpretation across replicas
3. downstream comparison with other receptor setups

## Notes
- System folder: `03_AlphaFold_PAF`
- Manuscript terminology: **PAF**
- Method: MM/GBSA endpoint-energy estimation
- Number of replicas: 3
- These files are intended as summary outputs for downstream comparison and manuscript preparation.
- No crystallographic metal-ion groups were included in the MM/GBSA receptor definition for this AlphaFold-derived system.
- MM/GBSA values are protocol-dependent endpoint-energy descriptors and should not be interpreted as absolute binding affinities or evidence of ligand potency.
