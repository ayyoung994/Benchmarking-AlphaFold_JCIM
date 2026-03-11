# Raw Outputs

This folder contains raw `.xvg` files generated directly from the `04_AlphaFold_CAF` pocket analysis workflow.

## Current contents

At present, this directory includes raw output files for the three MD replicas from the following analyses:

- pocket Cα RMSD (`rmsd_pocket_CA_*`)
- pocket radius of gyration (`rg_pocket_*`)
- pocket-only SASA (`sasa_Pocketonly_*`)
- JmjC-and-pocket SASA (`sasa_jmjc_and_pocket_*`)

## File naming

Replica-specific outputs are stored using `rep1`, `rep2`, and `rep3` in the filenames.

## Note

These files are stored in their original analysis-output format and were used as the basis for downstream processing, summarization, and plotting.
