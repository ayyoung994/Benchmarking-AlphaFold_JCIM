# Processed Outputs

This directory contains output files for the `02_5FWJ_apo` ligand behavior analysis workflow.

## Current contents

This folder includes both replica-level raw analysis outputs and a processed summary table for the 5FWJ_apo system.

### Raw analysis outputs

Replica-level raw output files are stored in `.xvg` format and were generated directly from the ligand behavior analysis workflow.

The current `.xvg` files include the following metrics:

- ligand heavy-atom RMSD
- ligand–pocket center-of-mass distance
- ligand–JmjC hydrogen bonds

Replica-specific source files are identified using `rep1`, `rep2`, and `rep3` in the filenames.

### Processed summary output

- `ligand_summary_5FWJ_apo.csv`  
  Summary table containing the 20–60 ns ligand behavior statistics for the 5FWJ_apo system. The current table includes:
  - ligand heavy-atom RMSD
  - ligand–pocket center-of-mass distance

## Notes

- `.xvg` files represent raw or intermediate analysis outputs generated directly from the analysis workflow.
- `.csv` files represent processed per-system summary outputs used for downstream comparison, summary generation, and plotting.
- Not all raw metrics are necessarily included in the current processed summary table.
- These processed outputs were used for cross-system ligand behavior comparison in the final summary directory.
