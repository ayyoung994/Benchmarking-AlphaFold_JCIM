# Global Stability Analysis

This directory contains the global stability analysis workflow for the `02_5FWJ_apo` system.

The folder label `02_5FWJ_apo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-depleted** receptor setup.

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

1. generation of JmjC-related index groups
2. centering and compacting the trajectory
3. fitting the trajectory to the JmjC core
4. extraction of a protein-only TPR
5. calculation of RMSD
6. calculation of RMSF
7. calculation of radius of gyration
8. calculation of protein SASA

## Notes

- The `02_5FWJ_apo` system was analyzed directly from the available 60 ns production trajectory files.
- The preprocessing templates in `scripts/` use `repX` as a placeholder and should be edited to match replica-specific filenames before use.
- For the **5FWJ metal-depleted** receptor setup, JmjC index groups were defined using chain-specific subdivision and the corresponding JmjC residue range.
- Interactive GROMACS selections are recorded as comments inside the relevant scripts.
- Files in `processed_outputs/` were used for downstream summary generation, cross-system comparison, and plotting.
- The internal label `apo` is retained in file and folder names for workflow continuity. In the manuscript, this system is described as **5FWJ metal-depleted**, not as a fully characterized biochemical apo enzyme state.
