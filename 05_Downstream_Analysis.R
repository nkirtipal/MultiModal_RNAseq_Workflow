# 05_Downstream_Analysis.R
# Downstream analysis including marker genes, WGCNA, and CellChat
# Author: Nikhil Kirtipal
# Description: Identifies marker genes and provides framework for 
# network and cell communication analyses.

library(Seurat)
library(tidyverse)

# Load clustered Seurat object
seu <- readRDS("data/seurat_clustered.rds")

# Identify marker genes per cluster
# Note: min.pct = 0.25 means gene expressed in 25% of cells
# logfc.threshold = 0.25 filters low fold-change genes
markers <- FindAllMarkers(seu, 
                          only.pos = TRUE, 
                          min.pct = 0.25, 
                          logfc.threshold = 0.25)
head(markers)

# Save marker genes
write.csv(markers, file = "results/marker_genes.csv")

# Optional: WGCNA for gene co-expression network analysis
# See: https://horvath.genetics.ucla.edu/html/CoexpressionNetwork/Rpackages/WGCNA/

# Optional: CellChat for cell-cell communication analysis
# See: https://github.com/sqjin/CellChat
