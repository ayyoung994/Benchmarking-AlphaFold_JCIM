# Raw Outputs

This folder contains raw `.xvg` files generated directly from the `03_AlphaFold_PAF` ligand behavior analysis workflow.

## Current contents

At present, this directory includes raw output files for the three MD replicas from the following analyses:

- dolasetron RMSD after protein-fit alignment (`rmsd_DOL_fit_*`)
- center-of-mass distance between dolasetron and the pocket (`dist_COM_DOL_pocket_*`)
- hydrogen bonds between dolasetron and the JmjC region (`hb_DOL_JmjC_*`)

## File naming

Replica-specific outputs are stored using `rep1`, `rep2`, and `rep3` in the filenames.

## Note

These files are stored in their original analysis-output format and were used as the basis for downstream processing, summarization, and plotting.
