# Bottle Shock: Red Wine Quality Analysis in R

This repository contains a series of R scripts and supporting files used to clean, analyze, and visualize red wine quality data. It demonstrates data wrangling, statistical modeling, dimensionality reduction, and unsupervised learning techniques using tidyverse and base R workflows.

------------------------------------------------------------------------

## Repository Structure

```         
bottle-shock-gh/
│
├── data/                       # Input dataset (included)
│   └── red_wine_data.csv
├── 01_data_cleaning.R         # Data cleaning and preparation
├── 02_pca_analysis.R          # Principal Component Analysis (PCA)
├── 03_clustering.R            # K-means and other clustering techniques
├── 04_regression.R            # Linear regression and model fitting
├── bottle_shock_main_gh.R     # Script that generates the other scripts above
└── README.md                  # You're here!
```

------------------------------------------------------------------------

## Project Overview

This project was inspired by the *"Bottle Shock"* concept of hidden quality. It explores the physicochemical properties of red wine and how they relate to sensory quality ratings using a combination of:

-   **Data wrangling** with `dplyr`
-   **Dimensionality reduction** via PCA
-   **Unsupervised learning** with clustering algorithms
-   **Predictive modeling** through regression

------------------------------------------------------------------------

## Data Source

The dataset used here is the [Red Wine Quality dataset](https://archive.ics.uci.edu/ml/datasets/wine+quality) from the UCI Machine Learning Repository. It contains physicochemical attributes (e.g., acidity, pH, alcohol) and quality scores assigned by human tasters.

> **Note**: The raw dataset (`red_wine_data.csv`) is included in the `data/` folder for immediate use.

------------------------------------------------------------------------

## How to Use This Project

### 1. Clone the repository

``` bash
git clone https://github.com/efriedma/bottle-shock-gh.git
cd bottle-shock-gh
```

### 2. Open in RStudio (recommended)

Either open the folder as an R Project or open individual files as needed.

### 3. Install required packages

Install the required R packages (if not already installed):

``` r
install.packages(c("dplyr", "ggplot2", "cluster", "factoextra", "readr", "tidyr"))
```

### 4. Generate or run scripts

You can either: - Run `bottle_shock_main_gh.R` to generate the individual script files, or - Run the numbered scripts (`01_` through `04_`) directly in order.

------------------------------------------------------------------------

## Script Descriptions

| Script | Purpose |
|-------------------|-----------------------------------------------------|
| `01_data_cleaning.R` | Loads and cleans the dataset, renaming variables, and saving objects |
| `02_pca_analysis.R` | Performs PCA and visualizes the principal components |
| `03_clustering.R` | Applies k-means and visualizes clusters in reduced space |
| `04_regression.R` | Fits linear models to predict wine quality and interprets coefficients |
| `bottle_shock_main_gh.R` | Programmatically generates the above scripts |

------------------------------------------------------------------------

## License

This project is licensed under the [MIT License](LICENSE).

------------------------------------------------------------------------

## About

www.linkedin.com/in/efrie

------------------------------------------------------------------------

## Future Enhancements

-   Add cross-validation and model diagnostics
-   Create RMarkdown report or Shiny dashboard

------------------------------------------------------------------------
