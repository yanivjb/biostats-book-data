# Data_ExpertTactileSuppression.csv

**Paper:** Tom, Manzone & Chen. Rethinking predictive suppression (manuscript; supplement on Zenodo)  
https://zenodo.org/records/20275716

**Data:** https://doi.org/10.5061/dryad.c59zw3rqz

This folder contains only `Data_ExpertTactileSuppression.csv` from the original deposit (downloaded 2026-11-05, unmodified). Please cite both the paper and the dataset.

_Below: the authors' README (README.md), trimmed to the section on this file_

---

# Data from: Rethinking predictive suppression: expert pianists tend to show less, not more, tactile suppression than musical novices

Dataset DOI: [10.5061/dryad.c59zw3rqz](https://doi.org/10.5061/dryad.c59zw3rqz)

## **GENERAL INFORMATION**

**Author Information:**

Corresponding Author: Julia Tom (University of Toronto): [j.tom@utoronto.ca](mailto:j.tom@utoronto.ca)

Co-authors: Joseph X. Manzone (University of Toronto), Joyce L. Chen (University of Toronto)

**Funding Information:**

Natural Sciences and Engineering Council of Canada Discovery Grant (to J.L. Chen).

## **SHARING/ACCESS INFORMATION**

**Recommended citation for this dataset:** Tom, J., Manzone, J. X., & Chen, J. L. (2026). Data from: Rethinking predictive suppression: expert pianists do not show greater tactile suppression than musical novices.

## **DATA & FILE OVERVIEW**

**Data_ExpertTactileSuppression.csv**: Main experimental trial data, including tactile thresholds in different movement conditions, tactile suppression in different movement conditions, and fine motor performance.

**METHODOLOGICAL INFORMATION**

**Methods used for data collection:** See Methods section of the associated manuscript for full experimental design.

**Human Subjects & Privacy Compliance:**  All participants provided explicit consent for their de-identified data to be published. Direct personal identifiers (such as names or participant IDs) were removed, and indirect identifiers were aggregated to ensure anonymity.

### Files and variables

#### File: Data_ExpertTactileSuppression.csv

##### Variables

* P#: Unique numerical identifier assigned to each participant (e.g., 1, 2, 3...).
* Group: Expertise group assignment: 1 == Expert; 2 == Novice
* CE.30: slow velocity accuracy (Musical Instrument Digital Interface: MIDI)
* CE.70: fast velocity accuracy (MIDI)
* avg_peak_velocity: mean peak velocity (millimeters/second: mm/s)
* ve_peak_velocity: variable error (consistency) peak velocity (mm/s)
* avg_onset: mean movement onset timing (second: s)
* ve_onset: variable error (consistency) movement onset timing (s)
* Zero: zero value
* Baseline1: tactile perceptual threshold from Baseline 1 trials (pre-test rest; milliamperes: mA)
* planning: tactile perceptual threshold from movement planning trials (mA)
* execution: tactile perceptual threshold from movement execution block (mA)
* Baseline2: tactile perceptual threshold from Baseline 2 trials (post-test rest; mA)
* BaselineAverage: mean Baseline1 and Baseline2 (mA)
* P-Bavg: planning suppression (planning - BaselineAverage: mA)
* E-Bavg: execution suppression (execution - BaselineAverage: mA)
* P-B1: planning suppression (planning - Baseline1: mA)
* E-B1: execution suppression (execution - Baseline1: mA)
* Age: age on date of testing (years)
* Sex: female == 1; male == 2
* Catch B1: count of false positive catch trials during Baseline 1 block
* Catch PE: count of false positive catch trials during joint planning and execution block
* Catch B2: count of false positive catch trials during Baseline 2 block

<br />

## Code/software

**Required Software for Viewing Data**

The primary dataset is provided in a standard, open format (.csv) to ensure long-term accessibility. It can be viewed using:

* **Spreadsheet Software:** Microsoft Excel, Google Sheets, or LibreOffice Calc.
* **Text/Code Editors:** VS Code, Notepad++, or TextEdit (for raw text inspection).

### Statistical Analysis Environment

All data processing, statistical analysis, and data visualizations were executed using the following environment:

* **Software:** RStudio (Version 2024.04.2.764)

### Loaded R Packages

The data analysis was performed in R 4.4.1 using CRAN packages. Statistical tests  use base R (`t.test`, `wilcox.test`, `cor.test`, `p.adjust`). The packages below supply the models, effect sizes and figures.

* **Data manipulation:** `dplyr`, `tidyr`
* **Models:** `nlme` 3.1-166 (`gls()` with unstructured within-subject covariance, for the tactile threshold model); `afex` 1.4-1 (mixed repeated-measures ANOVA, for constant error)
* **Marginal means and contrasts:** `emmeans` 1.11.0 (estimated marginal means and pairwise condition contrasts from the threshold model, with Satterthwaite degrees of freedom)
* **Effect sizes:** `effectsize` 1.0.1 (Cohen's *d*, rank-biserial correlation, partial eta squared)
* **Assumption testing:** `car` 3.1-3 (Levene's test)
* **Bayesian statistics:** `BayesFactor` 0.9.12.4.7 (Bayes factors for *t*-tests and correlations)
* **Resampling:** `boot` 1.3-31 (bootstrap confidence intervals for correlations)
* **Figures:** `ggplot2` 3.5.1, `ggpattern` 1.2.1, `patchwork` 1.2.0, `ragg` 1.3.2 (TIFF export)
* **Tables:** `knitr` 1.49

### Workflow & Relationship of Files

1. **Data Input:** The primary tabular data file (`Data_ExpertTactileSuppression.csv`) contains the de-identified raw metrics used for the study.
2. **Analysis Execution:** The data was processed and analyzed using RStudio (Version 2024.04.2.764). The R packages listed above were utilized to run the primary statistical tests and generate the figures presented in the manuscript directly from this `.csv` file. Please note that this script is not included here.

## Access information

Other publicly accessible locations of the data:

* None. This is the primary and exclusive repository for this dataset.

Data was derived from the following sources:

* Not applicable. This dataset consists entirely of original data collected and produced by the authors for the associated study.



## Human subjects data

All participants provided explicit consent for their de-identified data to be published in the public domain. To ensure anonymity, all direct personal identifiers (e.g., names, contact information) were completely removed from the dataset, and indirect identifiers were aggregated into broader categories where necessary.
