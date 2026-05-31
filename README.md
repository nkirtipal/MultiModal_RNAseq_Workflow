# MultiModal_RNAseq_Workflow
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Status](https://img.shields.io/badge/Status-In_Development-orange)
---
A reproducible workflow integrating bulk RNA-seq and single-cell 
RNA-seq analysis using Seurat.

---
## Overview
This repository provides an end-to-end integration workflow 
combining bulk RNA-seq and single-cell RNA-seq analysis including:
- Quality control and filtering
- SCTransform normalization
- Bulk + single-cell data integration
- Dimensionality reduction and clustering
- Cell type annotation
- Optional downstream analyses (e.g., WGCNA, CellChat)
---
## Example use case
The workflow is demonstrated using public bulk RNA-seq and 
scRNA-seq datasets from GEO, including disease-associated samples. 
However, the pipeline is general and can be applied to any 
bulk or single-cell RNA-seq dataset.

---
## Requirements
- R (>= 4.4)
- Seurat (v5)
- tidyverse
---
## Data Availability
Raw sequencing data are not included in this repository.
Public datasets can be obtained from NCBI GEO: 
https://www.ncbi.nlm.nih.gov/geo/

---
## Author
Nikhil Kirtipal  
