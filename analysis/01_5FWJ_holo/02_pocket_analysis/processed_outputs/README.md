# Processed Outputs

This directory contains output files for the `01_5FWJ_holo pocket` analysis workflow.

The folder label `01_5FWJ_holo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-retained** receptor setup.

## Current contents

This folder includes replica-level raw analysis outputs and a processed summary table for the **5FWJ metal-retained** system.

### Raw analysis outputs

Replica-level raw output files are stored in `.xvg` format and were generated directly from the pocket analysis workflow.

The current `.xvg` files include metrics such as:

- pocket Cα RMSD
- pocket radius of gyration

Replica-specific source files are identified using `rep1`, `rep2`, and `rep3` in the filenames.

### Processed summary output

- `Table_Pocket_Stability_20-60ns_5FWJ metal-retained.csv`  
  Summary table containing pocket stability metrics for the **5FWJ metal-retained** receptor setup over the 20–60 ns analysis window.

## Notes

- `.xvg` files represent raw or intermediate analysis outputs generated directly from the analysis workflow.
- `.csv` files represent processed per-system summary outputs used for downstream comparison, summary generation, and plotting.
- These processed outputs were used for cross-system pocket stability comparison in the final summary directory.
- The internal label `holo` is retained in some source filenames for workflow continuity. In the manuscript, this system is described as **5FWJ metal-retained**.
