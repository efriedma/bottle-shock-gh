# 04_regression.R
# Multiple Linear Regression

ivs_reds <- readRDS(file.path(base_path, "data", "ivs_reds.rds"))
dv_reds <- readRDS(file.path(base_path, "data", "dv_reds.rds"))

model <- lm(dv_reds ~ ., data = as.data.frame(ivs_reds))
summary(model)

plot(predict(model), dv_reds, xlab = "Predicted", ylab = "Actual",
     main = "Predicted vs Actual Quality")
abline(0, 1, col = "red")
