# Cold-loving versus warm-loving bacteria

**Paper:** White, H., Vos, M., Padfield, D., Sharma, M. D., Sheppard, S. K., & Raymond, B. (2025). Constraints in temperature adaptation reinforce differences in thermal niche between mesophilic and psychrotolerant Bacillus cereus group species. Proceedings of the Royal Society B: Biological Sciences, 292(2051), 20251184. https://doi.org/10.1098/rspb.2025.1184

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.w9ghx3g2c

This README describes the teaching files in `white_etal2025`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `White_2025_project.csv` | 20 rows; 6 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **White_2025_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 20 study-unit rows. 20 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Does adaptation to cold carry a growth cost at 30 degrees C?

## Collection and biological context

Independent Bacillus lineages evolved at 15 or 30 degrees C. Researchers subsequently measured growth curves in common assay environments, with replicate wells for each lineage. This worked question uses the 30-degrees-C assay to ask about a possible warm-environment cost of cold adaptation.

Growth rate is measured in a common 30-degrees-C environment, averaged across replicate wells and natural-log transformed. Species and evolutionary selection temperature distinguish genetic background and selection history.

## Preparation and sampling unit

Evolved lineages only, measured in the same 30 C assay; ancestral rows excluded. Replicate wells are averaged by lineage, species and selection temperature. Bm = B. mycoides, Bt = B. thuringiensis. selection has two categories: 15 C and 30 C. wells is the number of contributing rows, not additional lineages. This question concerns a possible warm-temperature cost of cold adaptation, not a complete thermal performance curve.

Species: Bm = Bacillus mycoides, Bt = Bacillus thuringiensis. The data concern performance at 30 C, not optimum temperature.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| log_growth | Natural log of growth_rate. |
| species | Species identity; categorical, not a numerical gradient. Observed categories: Bm, Bt. Use as a factor. |
| selection | Evolutionary selection temperature (15 or 30 C); categorical. Observed categories: 15, 30. Use as a factor. |
| wells | Number of source well records averaged; not independent lineages. |
| growth_rate | Mean fitted growth rate Rcurve across wells for a lineage at the common 30 C assay, in source growth-rate units. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Every row is one independently evolved lineage, measured at a common 30°C. This asks about a possible warm-environment cost of cold adaptation, not the entire thermal performance curve.

20 evolved lineages in the 30-C growth assay. This warm-cost question is a better plain-lm option than the cold-assay or fitted-optimum questions; do not treat wells as lineages.

## Sources

Paper: https://doi.org/10.1098/rspb.2025.1184

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.w9ghx3g2c

Prepared from All_well_values_output_ALL_STRAINS_BOTH_24_08_23.csv. Preparation choices are described above. No model results or solution code are included.
