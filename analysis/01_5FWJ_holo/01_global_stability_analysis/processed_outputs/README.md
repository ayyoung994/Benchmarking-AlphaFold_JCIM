# Processed Outputs

This directory contains processed output files for the `01_5FWJ_holo` global stability analysis workflow.

The folder label `01_5FWJ_holo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-retained** receptor setup.

## Current contents

- `global_debug_5FWJ metal-retained.csv`  
  Debug table containing processed values extracted from replica-level `.xvg` analysis outputs for inspection and quality control.

- `global_summary_5FWJ metal-retained.csv`  
  Summary table containing the final global stability statistics for the **5FWJ metal-retained** receptor setup.

## Source data

The processed CSV files in this directory were generated from replica-level raw or intermediate analysis outputs in `.xvg` format, including metrics such as:

- Cα RMSD
- Cα RMSF
- radius of gyration
- total SASA
- per-residue SASA

Replica-specific source files are identified using `rep1`, `rep2`, and `rep3` in the filenames.

## Notes

- `.xvg` files represent raw or intermediate GROMACS analysis outputs.
- `.csv` files represent processed per-system outputs used for downstream comparison, summary generation, and plotting.
- The internal label `holo` is retained in some source filenames for workflow continuity. In the manuscript, this system is described as **5FWJ metal-retained**.
