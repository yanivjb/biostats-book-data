# Raw cat-food microbiota — data

## Files

| File | Contents |
|---|---|
| `Reboul_2025_cat_food_products_clean.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

111 rows. Researchers purchased 112 commercial products from online sellers, stores and manufacturers between 2021 and 2023. Products represented 31 manufacturers and several textures. One contaminated homogenate was excluded. Supplementary Data 1 contains product metadata and already calculated bacterial diversity values, so raw sequencing is unnecessary. Its title and blank rows precede the real header.

## Preparation of this CSV

The two preamble rows were removed. Sample FD17 was excluded following the authors’ recorded homogenate cross-contamination. All 111 remaining products and original columns are retained. Missing diversity values remain NA. Processing Method is 0 = conventional and 1 = raw or partially cooked.

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


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1038/s42003-025-08756-8

Original data: https://gitlab.com/goodmanlab/cat-food
