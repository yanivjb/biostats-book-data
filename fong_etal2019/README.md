# Can an enriched environment reshape a guppy brain? — data

## Files

| File | Contents |
|---|---|
| `Fong_2019_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

79 rows. Eighty adult female guppies were individually housed and assigned to reversal-learning or spatial-learning experiments. Within each experiment, fish were assigned to training or an environment-control group. Controls experienced comparable handling and surroundings without the learning task. Brain regions and body length were measured after the experiment; the supplied table contains 79 fish records and a separate label key.

## Preparation of this CSV

The table contains 79 female fish records. Brain volume uses the original total field and body length the original sl field. Both are also supplied as natural logarithms. Treatment and batch labels are retained.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source fish ID. |
| log_brain | Natural log of brain_volume. |
| log_length | log_length = log(body_length), with standard length in mm. |
| treatment | CRL = reversal-learning environment control; CSL = spatial-learning environment control; TRL = reversal-learning treatment; TSL = spatial-learning treatment. |
| batch | Experimental batch; categorical. Observed categories: 1, 2. |
| brain_volume | Total brain volume, original source total (mm³). |
| body_length | Fish standard length, original source sl (mm). |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1242/jeb.200402

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.c4q7h62
