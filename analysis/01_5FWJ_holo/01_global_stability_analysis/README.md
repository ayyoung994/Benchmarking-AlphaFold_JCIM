# Global Stability Analysis

This directory contains the global stability analysis workflow for the `01_5FWJ_holo` system.

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

- For the `01_5FWJ_holo` system, Replicas 2 and 3 were extended to 60 ns before downstream analysis.
- Replica 1 followed a different recovery workflow because the original MD production files were unavailable and the production run was regenerated.
- The preprocessing templates in `scripts/` use `repX` as a placeholder and should be edited to match replica-specific filenames before use.
- For the crystal-structure-based holo system, JmjC index groups were defined using chain-specific subdivision and the corresponding JmjC residue range.
- Interactive GROMACS selections are recorded as comments inside the relevant scripts.
- Files in `processed_outputs/` were used for downstream summary generation, cross-system comparison, and plotting.
