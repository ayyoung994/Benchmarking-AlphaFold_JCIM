# Processed Outputs

This directory contains output files for the `01_5FWJ_holo` ligand behavior analysis workflow.

The folder label `01_5FWJ_holo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-retained** receptor setup.

## Current contents

This folder includes replica-level raw analysis outputs and a processed summary table for the **5FWJ metal-retained** receptor setup.

### Raw analysis outputs

Replica-level raw output files are stored in `.xvg` format and were generated directly from the ligand behavior analysis workflow.

The current `.xvg` files include the following metrics:

- ligand heavy-atom RMSD
- ligand–pocket center-of-mass distance
- ligand–JmjC hydrogen bonds

Replica-specific source files are identified using `rep1`, `rep2`, and `rep3` in the filenames.

### Processed summary output

- `ligand_summary_5FWJ metal-retained.csv`  
 Summary table containing the 20–60 ns ligand behavior statistics for the **5FWJ metal-retained** receptor setup.

  The current table includes:
  - ligand heavy-atom RMSD
  - ligand–pocket center-of-mass distance

## Notes

- `.xvg` files represent raw or intermediate analysis outputs generated directly from the analysis workflow.
- `.csv` files represent processed per-system summary outputs used for downstream comparison, summary generation, and plotting.
- Not all raw metrics are necessarily included in the current processed summary table.
- These processed outputs were used for cross-system ligand behavior comparison in the final summary directory.
- The ligand group analyzed in this workflow was `DOL`.
- The internal label `holo` is retained in some source filenames for workflow continuity. In the manuscript, this system is described as **5FWJ metal-retained**.
