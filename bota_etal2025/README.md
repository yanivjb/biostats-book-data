# Pitcher plants, bat poo and microbial helpers

**Paper:** Bota, J. L., Baum, C., Gawronski, S., Grafe, T. U., Kerth, G., Schöner, M. G., & Schöner, C. R. (2025). UV treatment of the digestive fluid of Nepenthes hemsleyana pitcher plants affects their digestive process, possibly via reducing microbial inquilines. Oecologia, 207(7), 108. https://doi.org/10.1007/s00442-025-05749-6

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.00000009p

This README describes the teaching files in `bota_etal2025`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Bota_2025_project.csv` | 24 rows; 5 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Bota_2025_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 24 study-unit rows. 23 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Does prey type affect leaf production differently when pitcher microbes are disrupted?

## Collection and biological context

Twenty-four Nepenthes hemsleyana plants were studied at one Bornean site. Each supplied two young pitchers. Plants received bat faeces or arthropod food daily for eight weeks, with or without UV treatment of the digestive fluid. Six sets, each containing the four treatment combinations, began at different times. Youngest-leaf and plant-growth tables retain plant identity and set.

Youngest-leaf dry mass is in grams. Prey contrasts faeces and arthropods; UV treatment perturbs the pitcher microbial environment.

## Preparation and sampling unit

Selected CSV is already close to one row per unit; filtering, renaming and a stated transformation are the main preparation steps.



Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| leaf_mass | Youngest-leaf dry mass, g. |
| prey | Assigned food type; categorical. Observed categories: Arthropods, Faeces. Use as a factor. |
| microbes | Assigned UV treatment; categorical. UV perturbs microbes but may also have direct effects. Observed categories: nonsterile, sterile. Use as a factor. |
| block | Experimental set; categorical blocking variable. Observed categories: 1, 2, 3, 4, 5, 6. Use as a factor. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Use the leaf table alone: one plant-level outcome, not its two pitchers. Six experimental sets are fixed blocks. UV may have effects beyond microbes.

23 usable plants, not 24. A missing dry-mass value is not zero.

## Sources

Paper: https://doi.org/10.1007/s00442-025-05749-6

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.00000009p

Prepared from youngest_leaf.csv. Preparation choices are described above. No model results or solution code are included.
