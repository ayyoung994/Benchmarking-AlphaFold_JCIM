# Processed Outputs

This directory contains output files for the `04_AlphaFold_CAF` pocket analysis workflow.

## Current contents

This folder includes both replica-level raw analysis outputs and a processed summary table for the AlphaFold_CAF system.

### Raw analysis outputs

Replica-level raw output files are stored in `.xvg` format and were generated directly from the pocket analysis workflow.

The current `.xvg` files include the following metrics:

- pocket Cα RMSD
- pocket radius of gyration
- pocket-only SASA
- JmjC-and-pocket SASA

Replica-specific source files are identified using `rep1`, `rep2`, and `rep3` in the filenames.

### Processed summary output

- `Table_Pocket_Stability_20-60ns_CAF.csv`  
  Summary table containing the pocket stability metrics for the AlphaFold_CAF system over the 20–60 ns analysis window.

## Notes

- `.xvg` files represent raw or intermediate analysis outputs generated directly from the analysis workflow.
- `.csv` files represent processed per-system summary outputs used for downstream comparison, summary generation, and plotting.
- These processed outputs were used for cross-system pocket stability comparison in the final summary directory.
