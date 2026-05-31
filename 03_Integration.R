# 03_Integration.R
# Integration of multiple Seurat objects
# Author: Nikhil Kirtipal
# Description: Prepares a list of datasets and integrates them for combined analysis.

library(Seurat)
library(tidyverse)

# Load multiple Seurat objects
# Replace with your actual file paths
seu1 <- readRDS("data/seurat_normalized1.rds")
seu2 <- readRDS("data/seurat_normalized2.rds")

# Create list of objects
seu_list <- list(seu1, seu2)

# Select highly variable features for integration
# Note: nfeatures = 3000 is recommended for large datasets
# Reduce to 2000 if memory or computation is limited
features <- SelectIntegrationFeatures(object.list = seu_list, nfeatures = 3000)

# Prepare objects for SCT integration
seu_list <- PrepSCTIntegration(object.list = seu_list, anchor.features = features)

# Find integration anchors across datasets
anchors <- FindIntegrationAnchors(object.list = seu_list, 
                                   normalization.method = "SCT", 
                                   anchor.features = features)

# Integrate datasets into single object
seu_integrated <- IntegrateData(anchorset = anchors, 
                                 normalization.method = "SCT")

# Save integrated object
saveRDS(seu_integrated, file = "data/seurat_integrated.rds")
