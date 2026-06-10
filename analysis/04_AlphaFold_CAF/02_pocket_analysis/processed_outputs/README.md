# Processed Outputs

This directory contains output files for the `04_AlphaFold_CAF` pocket analysis workflow.

The folder label `04_AlphaFold_CAF` corresponds to the **custom AlphaFold-derived KDM5C receptor setup** used in the manuscript. This receptor setup is referred to as **CAF**.

## Current contents

This folder includes replica-level raw analysis outputs and a processed summary table for the **CAF** receptor setup.

### Raw analysis outputs

Replica-level raw output files are stored in `.xvg` format and were generated directly from the pocket analysis workflow.

The current `.xvg` files include the following metrics:

- pocket Cα RMSD
- pocket radius of gyration
- SASA calculated for the isolated pocket-residue subset
- SASA calculated in the JmjC-domain context
- 
Replica-specific source files are identified using `rep1`, `rep2`, and `rep3` in the filenames.

### Processed summary output

- `Table_Pocket_Stability_20-60ns_CAF.csv`  
  Summary table containing pocket stability metrics for the **CAF** receptor setup over the 20–60 ns analysis window.

## Notes

- `.xvg` files represent raw or intermediate analysis outputs generated directly from the analysis workflow.
- `.csv` files represent processed per-system summary outputs used for downstream comparison, summary generation, and plotting.
- SASA-related outputs are provided for structural-context comparison and should be interpreted cautiously because solvent exposure depends on the selected atom group and calculation context.
- These processed outputs were used for cross-system pocket stability comparison in the final summary directory.
- In the manuscript, this system is described as the **CAF** receptor setup.
