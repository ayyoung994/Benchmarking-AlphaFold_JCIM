# Processed Outputs

This directory contains processed output files for the `04_AlphaFold_CAF` global stability analysis workflow.

The folder label `04_AlphaFold_CAF` corresponds to the **custom AlphaFold-derived KDM5C receptor setup** used in the manuscript. This receptor setup is referred to as **CAF**.

## Current contents

- `global_debug_CAF.csv`  
  Debug table containing processed values extracted from replica-level `.xvg` analysis outputs for inspection and quality control.

- `global_summary_CAF.csv`  
  Summary table containing the final global stability statistics for the **CAF** receptor setup.

## Source data

The processed CSV files in this directory were generated from replica-level raw analysis outputs in `.xvg` format, including metrics such as:

- Cα RMSD
- Cα RMSF
- radius of gyration
- total SASA
- per-residue SASA

Replica-specific source files are identified using `rep1`, `rep2`, and `rep3` in the filenames.

## Notes

- `.xvg` files represent raw or intermediate GROMACS analysis outputs.
- `.csv` files represent processed per-system outputs used for downstream comparison, summary generation, and plotting.
- In the manuscript, this system is described as the **CAF** receptor setup.
