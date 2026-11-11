# Raw cat-food microbiota

**Paper:** Reboul, G., Malkowski, A. C., Yu, Y. T., Gu, Y. M., Sams, K. L., Umbarger, J. M., Franklin-Guild, R. J., Jin, Y., Chen, Z., Stanhope, B. J., Wendel, B. R., & Goodman, L. B. (2025). Analysis of the microbiota of raw commercial feline diets to prioritize food safety investigations. Communications Biology, 8(1), 1349. https://doi.org/10.1038/s42003-025-08756-8

**Original data:** https://gitlab.com/goodmanlab/cat-food

This README describes the teaching files in `reboul_etal2025`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Reboul_2025_cat_food_products_clean.csv` | 111 rows; 14 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |
| `DATA_DICTIONARY.csv` | Additional original variable definitions; no title-row preamble. |

## Start here

Use **Reboul_2025_cat_food_products_clean.csv**. One CSV is sufficient; no reshape or join is needed.

**Motivating question:** Do processing and protein-source categories explain cat-food bacterial diversity?

## Data collection

Researchers purchased 112 commercial products from online sellers, stores and manufacturers between 2021 and 2023. Products represented 31 manufacturers and several textures. One contaminated homogenate was excluded. Supplementary Data 1 contains product metadata and already calculated bacterial diversity values, so raw sequencing is unnecessary. Its title and blank rows precede the real header.

## Preparation and sampling unit

The clean header is the first row. The authors’ contaminated homogenate FD17 is excluded; all 111 other products and all original columns remain. Missing values are NA, not zero. There are 94 complete Shannon-diversity observations with processing and protein source.

## Key variables

| Column | Meaning |
|---|---|
| Short ID without zeros / Short ID with zeros | Two labels for the same product; do not count them separately. |
| Processing Method | 0 = conventional; 1 = raw or partially cooked ingredients; categorical. |
| Food texture | K kibble; C canned; FR frozen; FD freeze-dried; F refrigerated. Strongly overlaps with processing. |
| Category | Labelled animal-protein source combination; categorical. |
| alphaDiv_bact_Shannon | Bacterial Shannon diversity; higher = a more diverse distribution of detected sequence types. |
| alphaDiv_bact_FaithPD | Faith phylogenetic diversity. |
| alphaDiv_bact_Pielou | Pielou evenness. |
| cultured bacteria binary | 0 no / 1 yes: successful bacterial culture; binary outcome. |
| Total_Frequency | Sequence count for the product, not independent replicates. |
| Clostridium_Sens_Stricto1 / Salmonella / Klebsiella / Carbapenem_genes | Binary detections; these require a different response model from the continuous-diversity question. |

`DATA_DICTIONARY.csv` provides the authors’ additional variable definitions. Neither diversity nor sequencing detection establishes food safety. Products from the same manufacturer can share features; purchasing was not a random population sample.

## Planning an analysis

Choose a biological response and at least two substantive explanatory variables. Make predictions before fitting a model. Consider an interaction only when it has a biological interpretation. Check group sizes, missingness and residuals; do not treat IDs or repeated measurements as new replicates.

Outcome-specific sample size is counted after missing values are removed. Brand and formulation may cluster, while processing and protein categories may have poor overlap. Diversity is not a direct safety outcome.

## Sources

Paper: https://doi.org/10.1038/s42003-025-08756-8

Original data: https://gitlab.com/goodmanlab/cat-food

This folder contains the prepared classroom version. Original files and documentation are available from the source links above.
