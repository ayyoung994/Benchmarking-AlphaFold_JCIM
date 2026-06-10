# Replica Organization — 03_AlphaFold_PAF

## Overview

This directory contains the replica-level organization for the `03_AlphaFold_PAF` molecular dynamics workflow.

The folder label `03_AlphaFold_PAF` corresponds to the **public AlphaFold-derived KDM5C receptor setup** used in the manuscript. This receptor setup is referred to as **PAF**.

Each subdirectory corresponds to one independent replica generated from the same prepared system and shared MD protocol, with replica-specific initialization introduced during the NVT stage through different `gen_seed` values.

---

## Directory Structure

- `rep1/` — replica 1
- `rep2/` — replica 2
- `rep3/` — replica 3

---

## Purpose

This folder was created to keep independent replicas organized separately while preserving a consistent structure for reproducibility and downstream analysis.

All replicas use the same system setup, topology, and simulation protocol, while differing in replica-specific velocity generation during the NVT stage.

---

## Notes

- Replica directories correspond to independent simulation branches of the same `03_AlphaFold_PAF` system.
- In the manuscript, this system is described as the **PAF** receptor setup.
- The primary difference between replicas is the `gen_seed` used for velocity generation during the NVT stage.
- Shared setup files, including topology, coordinates, and common MD parameter files, are stored in the parent directories.
- The corresponding analysis outputs for each replica are stored separately under the `analysis/` directory.
