# Cold adaptation and warm-temperature growth — data

## Files

| File | Contents |
|---|---|
| `White_2025_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

20 rows. Separate Bacillus lineages evolved at 15 or 30 degrees C. Researchers subsequently measured growth curves in common assay environments, with replicate wells for each lineage. The project CSV contains lineage-level summaries from the 30-degrees-C assay.

## Preparation of this CSV

Ancestral rows (Selection temperature = A) were excluded and Growth temperature = 30°C retained. Rcurve values were averaged by Strain, Species and selection temperature. wells is the number of contributing well records. Both the mean growth value and its natural logarithm are supplied. Bm = Bacillus mycoides; Bt = Bacillus thuringiensis.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Strain label. |
| log_growth | Natural log of growth_rate. |
| species | Species identity. Observed categories: Bm, Bt. |
| selection | Evolutionary selection temperature (15 or 30 C); categorical. Observed categories: 15, 30. |
| wells | Number of well records contributing to the lineage mean. |
| growth_rate | Mean fitted growth rate Rcurve across wells for a lineage at the common 30 C assay, in source growth-rate units. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1098/rspb.2025.1184

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.w9ghx3g2c
