# MD Extension

This directory contains replica-specific shell scripts and execution log files used to extend the production MD runs for the `04_AlphaFold_CAF` system from 20 ns to 60 ns before downstream analysis.

## Directory contents

- `scripts/` — shell scripts used to continue the production MD runs for each replica
- `logs/` — GROMACS log files generated during the extended production runs
- `README.md` — overview of the MD extension workflow and file organization

## Included scripts

- `scripts/extend_md_rep1.sh` — production extension workflow for Replica 1
- `scripts/extend_md_rep2.sh` — production extension workflow for Replica 2
- `scripts/extend_md_rep3.sh` — production extension workflow for Replica 3

## Included log files

- `logs/md_rep1.part0004.log` — execution log for the extended production run of Replica 1
- `logs/md_rep2.part0002.log` — execution log for the extended production run of Replica 2
- `logs/md_rep3.part0002.log` — execution log for the extended production run of Replica 3

## Purpose

These files document the checkpoint-based continuation workflow used to extend the original 20 ns production runs and generate the final 60 ns trajectories used for subsequent preprocessing and analysis.

## Notes

- The shell scripts preserve the exact command-line workflow used for each replica.
- The log files provide execution records for the extended MD runs.
- Part numbers in the log filenames reflect the original continuation history and may differ among replicas.
