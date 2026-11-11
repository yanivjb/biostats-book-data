# Lemur cognitive control

**Paper:** De Petrillo, F., Nair, P., Cantwell, A., & Rosati, A. G. (2022). The Evolution of Cognitive Control in Lemurs. Psychological Science, 33(9), 1408-1422. https://doi.org/10.1177/09567976221082938

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.6hdr7sr2k

This README describes the teaching files in `depetrillo_etal2022`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `De_Petrillo_2022_project.csv` | 39 rows; 5 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **De_Petrillo_2022_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 39 study-unit rows. 39 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Does novelty-seeking relate to persistence beyond species differences in lemurs?

## Collection and biological context

Thirty-nine captive lemurs from four species completed a set of cognitive and behavioural tasks. The task-interrelations file summarises each animal’s performance and gives its species and sex. Repeated trials have already contributed to these animal-level summaries.

Persistence is time manipulating the box; the response is log(1 + seconds). Novel-object time describes proximity to novelty, not a general intelligence score.

## Preparation and sampling unit

Selected CSV is already close to one row per unit; filtering, renaming and a stated transformation are the main preparation steps.



Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| log_persistence | Natural log of (1 + persistence_seconds). |
| novel_time | Time near a novel object, seconds; a behavioural measure of response to novelty. |
| species | Species identity; categorical, not a numerical gradient. Observed categories: Mongoose lemurs, Ring-tailed lemurs, Ruffed lemurs, Sifakas. Use as a factor. |
| persistence_seconds | Time manipulating a puzzle box, seconds. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

39 animals, four captive species. Check zeros, stopping limits and species cell counts; species-level ecological conclusions are not supported by four species.

39 animals, four captive species, and time-limited behaviour. Inspect zeros and within-species sample size.

## Sources

Paper: https://doi.org/10.1177/09567976221082938

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.6hdr7sr2k

Prepared from 7_DePetrillo_etal_Task-Interrelations__data.csv. Preparation choices are described above. No model results or solution code are included.
