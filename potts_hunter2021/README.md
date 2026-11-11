# Milkweed: genes, environment and defence

**Paper:** Potts, A. S., & Hunter, M. D. (2021). Unraveling the roles of genotype and environment in the expression of plant defense phenotypes. Ecology and Evolution, 11(13), 8542-8561. https://doi.org/10.1002/ece3.7639

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.rv15dv47x

This README describes the teaching files in `potts_hunter2021`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Potts_2021_project.csv` | 45 rows; 4 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Potts_2021_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 45 study-unit rows. 44 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Does final milkweed height depend on both maternal family and transplant site?

## Collection and biological context

The reciprocal transplant grew offspring from three maternal lines at three locations within one Michigan population, with five seedlings per line–location combination: 45 plants. Each line grew both at its home site and at the other sites. Plants were measured repeatedly through the growing season. This is a smaller, more coherent starting experiment than pooling the separate common gardens.

Final height is the last scheduled height measurement. Genotype identifies maternal families, not sequenced genotypes. Site represents the transplant environment.

## Preparation and sampling unit

Week 10 only: 45 plants, 44 recorded heights. The original full-stop missing code was converted to NA. family and site are categories.



Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| height | Week-10 milkweed height, original ht measurement (cm). |
| family | Maternal family (source Genotype); categorical, not a sequenced genotype. Observed categories: 14, 20, 44. Use as a factor. |
| site | Transplant site; categorical. Observed categories: RT14, RT20, RT44. Use as a factor. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Only week 10 is analysed; survivors with a recorded height define the sample. Site has one geographic setting per level, limiting causal generalisation across sites.

44 recorded final heights, not 45. The source missing-value code "." must not become a real measurement.

## Sources

Paper: https://doi.org/10.1002/ece3.7639

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.rv15dv47x

Prepared from POTTS_2019_RT_all__sas.csv. Preparation choices are described above. No model results or solution code are included.
