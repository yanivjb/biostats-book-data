# Mantis shrimp: who packs the strongest punch? — data

## Files

| File | Contents |
|---|---|
| `Green_2015_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

93 rows. The morphology-and-force table is the starting dataset, rather than the contest-winner table. Researchers measured body size and components of the striking appendage. Strike performance was represented by the maximum peak force from ten strikes by an animal. The original note row has been removed from the project CSV.

## Preparation of this CSV

The force measurement is the maximum recorded strike force for the animal. Relative merus length is merus length divided by body length. Original-scale measurements and their natural logarithms are supplied.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Animal ID. |
| log_force | Natural log of force_N. |
| log_body | Natural log of body_length_mm. |
| log_relative_merus | Natural log of relative_merus. |
| force_N | Maximum recorded strike force for this shrimp, newtons. |
| body_length_mm | Body length, mm. |
| relative_merus | Merus length divided by body length; dimensionless appendage proportion. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1098/rsbl.2015.0558

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.pd256
