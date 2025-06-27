# 02_pca_analysis.R
# Principal Component Analysis (PCA)

ivs_reds <- readRDS(file.path(base_path, "data", "ivs_reds.rds"))

pca_var <- princomp(ivs_reds)
summary(pca_var)
biplot(pca_var, cex = 0.5, main = "Variance-Covariance PCA")

pca_cor <- princomp(ivs_reds, cor = TRUE)
summary(pca_cor)
biplot(pca_cor, cex = 0.5, main = "Correlation PCA")
