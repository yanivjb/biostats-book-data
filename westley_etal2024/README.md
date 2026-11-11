# Evolving with neighbours — data

## Files

| File | Contents |
|---|---|
| `Westley_2024_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

33 rows. Five microbial taxa were propagated alone or in communities across eight selection temperatures for roughly 110 generations. Growth curves were then measured across assay temperatures. The supplied table contains fitted growth parameters, taxon labels, selection temperature, treatment and lineage identifiers.

## Preparation of this CSV

Only OTU2, temp.c = 20°C, and Treatment T1/T2 records were retained. Id retains the evolved-lineage identifier. selection_temperature is the temperature during evolution; community T1 = monoculture evolution and T2 = community evolution.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source lineage Id. |
| growth | Fitted growth-rate parameter r at a common 20 C assay, in source rate units. |
| selection_temperature | Temperature during evolution, degrees C; distinct from the common assay temperature. |
| community | Evolutionary history: T1 = monoculture; T2 = community. Observed categories: T1, T2. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1093/evlett/qrae007

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.vq83bk41b
