# Summary of MM/GBSA Results for 01_5FWJ_holo

This directory contains summarized MM/GBSA endpoint-energy results for the `01_5FWJ_holo system`, derived from three independent replicas.

The folder label `01_5FWJ_holo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-retained** receptor setup.

## Contents

- **`MMGBSA_per_replica_5FWJ metal-retained_summary.csv`**  
  Contains MM/GBSA energy terms for each replica separately, enabling evaluation of inter-replica consistency and variability.

- **`MMGBSA_across_replicas_5FWJ metal-retained_summary.csv`**  
  Contains aggregated MM/GBSA endpoint-energy results across all replicas, including summary statistics used for comparative interpretation and reporting.

## Purpose
These summary tables provide a compact overview of the MM/GBSA energy-decomposition results for the **5FWJ metal-retained** system and support:

1. replica-level inspection
2. system-level interpretation across replicas
3. downstream comparison with other receptor setups

## Notes
- System: `01_5FWJ_holo`
- Manuscript terminology: **5FWJ metal-retained**
- Method: MM/GBSA endpoint-energy estimation
- Number of replicas: 3
- These files are intended as summary outputs for downstream comparison and manuscript preparation.
- MM/GBSA values are protocol-dependent endpoint-energy descriptors and should not be interpreted as absolute binding affinities or evidence of ligand potency.
