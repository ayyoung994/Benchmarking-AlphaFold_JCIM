# Global Stability Analysis

This directory contains the global stability analysis workflow for the `03_AlphaFold_PAF` system.

## Included analyses

- Cα RMSD
- Cα RMSF
- radius of gyration
- protein SASA

## Folder contents

- `scripts/` — shell scripts used for preprocessing and global stability analysis
- `raw_outputs/` — raw output files generated directly from GROMACS during the analysis workflow
- `README.md` — overview of the analysis workflow and file organization

## Workflow overview

The global stability analysis workflow includes:

1. preparation of a continuous 0–60 ns trajectory when needed
2. generation of JmjC-related index groups
3. centering and compacting the trajectory
4. fitting the trajectory to the JmjC core
5. extraction of a protein-only TPR
6. calculation of RMSD
7. calculation of RMSF
8. calculation of radius of gyration
9. calculation of protein SASA

## Notes

- The `03_AlphaFold_PAF` system was extended to 60 ns before downstream analysis.
- The preprocessing templates in `scripts/` use `repX` as a placeholder and should be edited to match replica-specific filenames before use.
- For the AlphaFold-based system, JmjC index groups were defined directly from the residue range corresponding to the JmjC region, without chain-specific subdivision.
- Interactive GROMACS selections are recorded as comments inside the relevant scripts.
- Raw `.xvg` files in `raw_outputs/` were used for downstream comparison and plotting.
