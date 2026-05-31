# scRNAseq_Seurat_Workflow
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Status](https://img.shields.io/badge/Status-In_Development-orange)
---

A reproducible workflow for single-cell RNA-seq analysis using Seurat.

---
## Overview
This repository provides an end-to-end scRNA-seq analysis pipeline including:
- Quality control and filtering
- SCTransform normalization
- Dataset integration
- Dimensionality reduction and clustering
- Cell type annotation
- Optional downstream analyses (e.g., WGCNA, CellChat)
---
## Example use case
The workflow is demonstrated using public scRNA-seq datasets from GEO, 
including lung-related and disease-associated samples. 
However, the pipeline is general and can be applied to any scRNA-seq dataset.

---
## Requirements
- R (>= 4.5)
- Seurat (v5)
- tidyverse
---
## Data availability
Raw sequencing data are not included in this repository.
Public datasets can be obtained from GEO (see data/README.md).

---
## Author
Nikhil Kirtipal  

## Contact
Nikhil Kirtipal — github.com/nkirtipal
