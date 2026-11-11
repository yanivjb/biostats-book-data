# Moth acoustic camouflage against bats — data

## Files

| File | Contents |
|---|---|
| `Simon_2023_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

56 rows. Researchers collected moths from eight families, measured their morphology and scanned their echoes from many angles using artificial ultrasound. A subset was scanned both intact and after body scales were removed. The fully-descaled table contains paired intact and shaved measurements for each specimen, including summaries for different frequency bands.

## Preparation of this CSV

The authors’ shaved-minus-intact target-strength difference is retained as scale_benefit, in dB. Relative width is body width divided by body length. Length and relative width are also supplied as natural logarithms.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Spec_nr. |
| scale_benefit | Shaved minus intact acoustic target strength, dB. Positive means stronger echoes after scale removal. |
| log_length | log_length = log(body_length_mm). |
| log_relative_width | Natural log of relative_width. |
| body_length_mm | Body length, mm. |
| relative_width | Body width divided by body length; dimensionless. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1111/1365-2656.14016

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.66t1g1k73
