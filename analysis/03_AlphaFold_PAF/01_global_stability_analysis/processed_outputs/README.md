# Processed Outputs

This directory contains processed output files for the `03_AlphaFold_PAF` global stability analysis workflow.

The folder label `03_AlphaFold_PAF` corresponds to the **public AlphaFold-derived KDM5C receptor setup** used in the manuscript. This receptor setup is referred to as **PAF**.

## Current contents

- `global_debug_PAF.csv`  
  Debug table containing processed values extracted from replica-level `.xvg` analysis outputs for inspection and quality control.

- `global_summary_PAF.csv`  
  Summary table containing the final global stability statistics for the **PAF** receptor setup.

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
- In the manuscript, this system is described as the **PAF** receptor setup.
