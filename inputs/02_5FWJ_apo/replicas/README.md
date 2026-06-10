# Replica Organization — 02_5FWJ_apo

## Overview

This directory contains the replica-level organization for the `02_5FWJ_apo` molecular dynamics workflow.

The folder label `02_5FWJ_apo` is retained for workflow continuity. In the manuscript, this system corresponds to the **5FWJ metal-depleted** receptor setup.

Each subdirectory corresponds to one independent replica generated from the same prepared system and shared MD protocol, with replica-specific initialization introduced during the NVT stage through different `gen_seed` values

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

- Replica directories correspond to independent simulation branches of the same `02_5FWJ_apo` system.
- In the manuscript, this system is described as **5FWJ metal-depleted**, not as a fully characterized biochemical apo enzyme state.
- The primary difference between replicas is the `gen_seed` used for velocity generation during the NVT stage.
- Shared setup files, including topology, coordinates, and common MD parameter files, are stored in the parent directories.
- The corresponding analysis outputs for each replica are stored separately under the `analysis/` directory.
- The internal label `apo` is retained in folder and file names for workflow continuity.
