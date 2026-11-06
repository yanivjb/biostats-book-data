# data3_bodylengths.csv

**Paper:** Clark & Ioannou 2025. Quantifying animal social behaviour with ecological field methods. Royal Society Open Science  
https://doi.org/10.1098/rsos.241299

**Data:** https://doi.org/10.5061/dryad.g79cnp5zw

This folder contains only `data3_bodylengths.csv` from the original deposit (downloaded 2026-11-05, unmodified). Please cite both the paper and the dataset.

_Below: the authors' README (README.md), trimmed to the section on this file_

---

# Quantifying animal social behaviour with ecological field methods

[https://doi.org/10.5061/dryad.g79cnp5zw](https://doi.org/10.5061/dryad.g79cnp5zw)

## Description of the data and file structure

### Overview

This project introduces a novel method to quantify animal social behaviour by comparing counts of individuals caught in traps across multiple locations sampled simultaneously. The method was applied to three-spined sticklebacks (*Gasterosteus aculeatus*) in freshwater ponds using minnow traps.

### Dataset

The dataset includes the number of fish caught per trap location including the number of males in breeding condition (red males), aggregation scores calculated using the index of dispersion, measurements of fish body length, and various environmental parameters. Data was collected from 4 pond sites over 13 weeks from May to November 2021. The associated script performs statistical analyses to explore the relationships between these variables.

### Key Analyses

1. **Aggregation of Fish**: This method assesses the distribution of individuals between traps to determine the extent of aggregation. This provides insights into social clustering and spatial distribution.
2. **Impact of Environmental Variables**: Investigates how environmental factors, including turbidity, temperature, light intensity, and dissolved oxygen, influence the number of fish caught.
3. **Proportion of Adults to Juveniles**: Analyses the ratio of adult fish to juvenile fish caught per trap and how environmental factors influence the proportion of adults to juveniles.
4. **Phenotypic Assortment**: Examines whether there is a non-random assortment of fish based on body length.

### Significance

This cost-effective approach utilizes widely-available ecological equipment to address social behaviour questions without the need for individual tagging or extended observer disturbance. It is applicable across various habitats and species, offering a practical solution for studying social dynamics in natural settings.

### Files and variables

## Code\Software and Tools Required

### Software

The analysis presented in this project was conducted using R, a free and open-source programming language and environment for statistical computing and graphics.

R Version: 4.1.2

### Required Packages

The following R packages were used for data analysis and visualization. You need to install these packages if they are not already available in your R environment:

* **`psych`**: For psychological and psychometric analysis.
* **`bbmle`**: For maximum likelihood estimation and model fitting.
* **`lme4`**: For fitting linear and generalized linear mixed-effects models.
* **`glmmTMB`**: For fitting generalized linear mixed models with various families.
* **`DHARMa`**: For residual diagnostics of generalized linear mixed models.
* **`MASS`**: For various statistical functions, including negative binomial models.
* **`ggplot2`**: For creating plots and visualizations.
* **`tidyr`**: For tidying and reshaping data.
* **`dplyr`**: For data manipulation and transformation.
* **`gatepoints`**: For spatial and geographical data analysis.
* **`sp`**: For handling and analyzing spatial data.

You can install these packages using the following R command:

```r
install.packages(c("psych", "bbmle", "lme4", "glmmTMB", "DHARMa", "MASS", "ggplot2", "tidyr", "dplyr", "gatepoints", "sp"))


Copy code
install.packages(c("glmmTMB", "dplyr", "tidyr", "ggplot2", "MASS", "DHARMa", "broom"))
Workflow
Data Preparation: The data files are prepared and cleaned as needed before analysis. The data1X and data2X datasets are used in the analysis.

```

### Workflow

#### Data Preparation

The datasets (`data1X` and `data2X`) are prepared and cleaned as needed before analysis.

#### Analysis Script

A single R script provided with this project includes all the analysis steps. This script contains:

1. Loading the necessary R packages.
2. Data preprocessing and cleaning.
3. Running statistical models, including generalized linear mixed models (GLMMs) using `glmmTMB`.
4. Generating predictions and creating plots.

To run the script, load it into your R environment and execute it. The script is designed to handle the datasets provided and produce all necessary outputs, including model results and visualizations.

#### Viewing Results

The analysis script produces statistical summaries and visual plots. Results are presented in the form of tables and graphs, which can be reviewed within the R environment.

For further assistance with running the script or interpreting the results, refer to the comments and instructions included within the script.
