# 03_clustering.R
# Clustering Analysis

library(ggplot2)
library(ggfortify)

ivs_reds <- readRDS(file.path(base_path, "data", "ivs_reds.rds"))
ivs_reds_scaled <- scale(ivs_reds)

set.seed(123)
kmeans_res <- kmeans(ivs_reds_scaled, centers = 6)
autoplot(kmeans_res, data = as.data.frame(ivs_reds_scaled), frame = TRUE)

d <- dist(ivs_reds_scaled)
hc <- hclust(d, method = "ward.D")
plot(hc, main = "Hierarchical Clustering (Ward.D)")
