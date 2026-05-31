# 04_Clustering_Annotation.R
# Dimensionality reduction, clustering, and annotation
# Author: Nikhil Kirtipal
# Description: Performs PCA, UMAP, clustering, and annotates cell types.

library(Seurat)
library(tidyverse)

# Load integrated object
seu <- readRDS("data/seurat_integrated.rds")

# Run PCA for dimensionality reduction
seu <- RunPCA(seu, verbose = FALSE)

# Run UMAP for visualization
# Note: dims = 1:30 uses top 30 PCs; adjust based on ElbowPlot
seu <- RunUMAP(seu, dims = 1:30)

# Find neighbors and clusters
# Note: resolution controls cluster granularity
# Higher resolution = more clusters; lower = fewer clusters
seu <- FindNeighbors(seu, dims = 1:30)
seu <- FindClusters(seu, resolution = 0.5)

# Visualize clusters
DimPlot(seu, reduction = "umap", label = TRUE)

# Annotate clusters manually or using reference-based tools
# Example: seu$celltype <- c("T cells", "B cells", ...) 
# Or use automated tools like SingleR or CellTypist
seu$celltype <- seu$seurat_clusters

# Save annotated object
saveRDS(seu, file = "data/seurat_clustered.rds")
