# Set base path
base_path <- ""

# Create scripts directory, if it doesn't exist
scripts_dir <- file.path(base_path, "scripts")
if (!dir.exists(scripts_dir)) dir.create(scripts_dir, recursive = TRUE)

# Write each R script manually
writeLines(
  c(
    "# 01_data_cleaning.R",
    "# Data import and preparation",
    "",
    "library(dplyr)",
    "",
    "# Set relative path to data",
    "data_path <- file.path(base_path, \"data\", \"red wine data.csv\")",
    "",
    "reds <- read.csv(data_path, stringsAsFactors = FALSE)",
    "names(reds) <- tolower(gsub(\"\\\\.\", \"_\", names(reds)))",
    "ivs_reds <- reds %>% select(-quality)",
    "dv_reds <- reds$quality",
    "",
    "saveRDS(ivs_reds, file = file.path(base_path, \"data\", \"ivs_reds.rds\"))",
    "saveRDS(dv_reds, file = file.path(base_path, \"data\", \"dv_reds.rds\"))"
  ),
  file.path(scripts_dir, "01_data_cleaning.R")
)

writeLines(
  c(
    "# 02_pca_analysis.R",
    "# Principal Component Analysis (PCA)",
    "",
    "ivs_reds <- readRDS(file.path(base_path, \"data\", \"ivs_reds.rds\"))",
    "",
    "pca_var <- princomp(ivs_reds)",
    "summary(pca_var)",
    "biplot(pca_var, cex = 0.5, main = \"Variance-Covariance PCA\")",
    "",
    "pca_cor <- princomp(ivs_reds, cor = TRUE)",
    "summary(pca_cor)",
    "biplot(pca_cor, cex = 0.5, main = \"Correlation PCA\")"
  ),
  file.path(scripts_dir, "02_pca_analysis.R")
)

writeLines(
  c(
    "# 03_clustering.R",
    "# Clustering Analysis",
    "",
    "library(ggplot2)",
    "library(ggfortify)",
    "",
    "ivs_reds <- readRDS(file.path(base_path, \"data\", \"ivs_reds.rds\"))",
    "ivs_reds_scaled <- scale(ivs_reds)",
    "",
    "set.seed(123)",
    "kmeans_res <- kmeans(ivs_reds_scaled, centers = 6)",
    "autoplot(kmeans_res, data = as.data.frame(ivs_reds_scaled), frame = TRUE)",
    "",
    "d <- dist(ivs_reds_scaled)",
    "hc <- hclust(d, method = \"ward.D\")",
    "plot(hc, main = \"Hierarchical Clustering (Ward.D)\")"
  ),
  file.path(scripts_dir, "03_clustering.R")
)

writeLines(
  c(
    "# 04_regression.R",
    "# Multiple Linear Regression",
    "",
    "ivs_reds <- readRDS(file.path(base_path, \"data\", \"ivs_reds.rds\"))",
    "dv_reds <- readRDS(file.path(base_path, \"data\", \"dv_reds.rds\"))",
    "",
    "model <- lm(dv_reds ~ ., data = as.data.frame(ivs_reds))",
    "summary(model)",
    "",
    "plot(predict(model), dv_reds, xlab = \"Predicted\", ylab = \"Actual\",",
    "     main = \"Predicted vs Actual Quality\")",
    "abline(0, 1, col = \"red\")"
  ),
  file.path(scripts_dir, "04_regression.R")
)

# Optional: show the path
print(normalizePath(scripts_dir))
