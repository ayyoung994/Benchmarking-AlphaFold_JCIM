# Processed Outputs

This directory contains output files for the `03_AlphaFold_PAF` pocket analysis workflow.

The folder label `03_AlphaFold_PAF` corresponds to the **public AlphaFold-derived KDM5C receptor setup** used in the manuscript. This receptor setup is referred to as **PAF**.

## Current contents

This folder includes replica-level raw analysis outputs and a processed summary table for the **PAF** receptor setup.

### Raw analysis outputs

Replica-level raw output files are stored in `.xvg` format and were generated directly from the pocket analysis workflow.

The current `.xvg` files include the following metrics:

- pocket Cα RMSD
- pocket radius of gyration


Replica-specific source files are identified using `rep1`, `rep2`, and `rep3` in the filenames.

### Processed summary output

- `Table_Pocket_Stability_20-60ns_PAF.csv`  
  Summary table containing pocket stability metrics for the **PAF** receptor setup over the 20–60 ns analysis window.

## Notes

- `.xvg` files represent raw or intermediate analysis outputs generated directly from the analysis workflow.
- `.csv` files represent processed per-system summary outputs used for downstream comparison, summary generation, and plotting.
- These processed outputs were used for cross-system pocket stability comparison in the final summary directory.
- In the manuscript, this system is described as the **PAF** receptor setup.
