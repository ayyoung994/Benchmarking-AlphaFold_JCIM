# MD Extension

This directory contains replica-specific shell scripts used to extend the production MD runs for the `04_AlphaFold_CAF` system from 20 ns to 60 ns before downstream analysis.

## Included scripts

- `extend_md_rep1.sh` — production extension workflow for Replica 1
- `extend_md_rep2.sh` — production extension workflow for Replica 2
- `extend_md_rep3.sh` — production extension workflow for Replica 3

## Purpose

These scripts document the checkpoint-based continuation workflow used to extend the original 20 ns production runs and generate the final 60 ns trajectories used for subsequent preprocessing and analysis.

## Notes

- Each script is replica-specific and preserves the exact filenames used during the extension step.
- The extended trajectories generated from these runs were used as inputs for downstream global stability, pocket, and ligand-behavior analyses.
