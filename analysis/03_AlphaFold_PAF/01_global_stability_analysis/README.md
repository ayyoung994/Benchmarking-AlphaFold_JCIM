# Global Stability Analysis

This folder contains global stability analyses for the `03_AlphaFold_PAF` system.

## Included analyses

- Cα RMSD
- Cα RMSF
- radius of gyration
- protein SASA

## Folder contents

- `scripts/` — GROMACS command scripts used for each analysis
- `raw_outputs/` — raw `.xvg` files generated directly from GROMACS
- `processed_tables/` — cleaned summary tables for comparison and plotting

## Notes

Trajectory files and topology files used for these analyses were prepared during the trajectory preprocessing stage.
