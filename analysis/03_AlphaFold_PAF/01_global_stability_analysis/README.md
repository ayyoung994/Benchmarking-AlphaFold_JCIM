# Global Stability Analysis

This directory contains the global stability analysis workflow for the `03_AlphaFold_PAF` system.

The folder label `03_AlphaFold_PAF` corresponds to the **public AlphaFold-derived KDM5C receptor setup** used in the manuscript. This receptor setup is referred to as **PAF**.

## Included analyses

- Cα RMSD
- Cα RMSF
- radius of gyration
- protein SASA

## Folder contents

- `scripts/` — shell scripts used for preprocessing and global stability analysis
- `processed_outputs/` — processed per-system summary tables used for downstream comparison and plotting
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
- For this AlphaFold-based system, JmjC index groups were defined directly from the residue range corresponding to the JmjC region, without chain-specific subdivision.
- Interactive GROMACS selections are recorded as comments inside the relevant scripts.
- Files in `processed_outputs/` were used for downstream summary generation, cross-system comparison, and plotting.
- In the manuscript, this system is described as the **PAF** receptor setup.

