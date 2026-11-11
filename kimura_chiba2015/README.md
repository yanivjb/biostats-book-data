# Snail love darts and sperm transfer — data

## Files

| File | Contents |
|---|---|
| `Kimura_2015_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

42 rows. Focal virgin snails were paired with virgin or previously mated partners; only previously mated partners had developed a dart. Sperm masses donated and received were extracted after either the first or fourth mating, dried and weighed. These are different assay endpoints, not four repeated measurements of every animal.

## Preparation of this CSV

MO = 1st and STC = from virgin/from nonvirgin were retained: 42 animals in the first-mating sperm-receipt assay. sperm_mass is oven-dried sperm-mass weight. body_size is the source BS, already the natural logarithm of shell-volume proxy.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source animal ID. |
| sperm_mass | Received sperm-mass dry weight, source SMW (mg). |
| body_size | Source BS: natural log of shell-volume proxy. Already on a natural-log scale. |
| partner | Source of received sperm: from virgin or from nonvirgin; categorical. Observed categories: from nonvirgin, from virgin. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1098/rspb.2014.3063

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.qg258
