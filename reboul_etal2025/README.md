# The microbial communities in a cat’s food — data

## Files

| File | Contents |
|---|---|
| [Reboul_2025_cat_food_products_clean.csv](Reboul_2025_cat_food_products_clean.csv) | Ready-to-load CSV; 111 rows. Product metadata and bacterial-diversity summaries for 111 commercial cat foods, with the authors’ flagged contaminated sample excluded. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |
| [DATA_DICTIONARY.csv](DATA_DICTIONARY.csv) | Additional column definitions from the source documentation. |

## Data collection

Researchers purchased 112 commercial products from online sellers, stores and manufacturers between 2021 and 2023. Products represented 31 manufacturers and several textures. One contaminated homogenate was excluded. Supplementary Data 1 contains product metadata and already calculated bacterial diversity values. The project CSV retains the 111 products remaining after the recorded exclusion.

## Prepared tables

The two preamble rows were removed. Sample FD17 was excluded following the authors’ recorded homogenate cross-contamination. All 111 remaining products and original columns are retained. Missing diversity values remain NA. Processing Method is 0 = conventional and 1 = raw or partially cooked.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| Short ID without zeros / Short ID with zeros | Two labels for the same product. |
| Processing Method | 0 = conventional; 1 = raw or partially cooked ingredients; categorical. |
| Food texture | K kibble; C canned; FR frozen; FD freeze-dried; F refrigerated. Strongly overlaps with processing. |
| Category | Labelled animal-protein source combination; categorical. |
| alphaDiv_bact_Shannon | Bacterial Shannon diversity; higher = a more diverse distribution of detected sequence types. |
| alphaDiv_bact_FaithPD | Faith phylogenetic diversity. |
| alphaDiv_bact_Pielou | Pielou evenness. |
| cultured bacteria binary | 0 no / 1 yes: successful bacterial culture; binary outcome. |
| Total_Frequency | Number of sequences associated with the product. |
| Clostridium_Sens_Stricto1 / Salmonella / Klebsiella / Carbapenem_genes | Binary detection indicators for the named taxa or gene category. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

`DATA_DICTIONARY.csv` contains the authors’ additional column and code definitions.

## Sources

**Paper:** Reboul, G., Malkowski, A. C., Yu, Y. T., Gu, Y. M., Sams, K. L., Umbarger, J. M., Franklin-Guild, R. J., Jin, Y., Chen, Z., Stanhope, B. J., Wendel, B. R., & Goodman, L. B. (2025). Analysis of the microbiota of raw commercial feline diets to prioritize food safety investigations. Communications Biology, 8(1), 1349. https://doi.org/10.1038/s42003-025-08756-8

**Original data:** GoodmanLab. (n.d.). Cat Food - Reboul et al. 2025 [Data and analysis code]. GitLab. https://gitlab.com/goodmanlab/cat-food (accessed 10 November 2026).
