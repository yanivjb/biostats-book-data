# Hormones and the scent of attraction — data

## Files

| File | Contents |
|---|---|
| [Lobmaier_2018_project.csv](Lobmaier_2018_project.csv) | Ready-to-load CSV; 28 rows. One record per odour donor, containing mean attractiveness, hormone measurements and the number of contributing ratings. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Women collected underarm odour on cotton pads over three nights around predicted ovulation, and supplied saliva for hormone measurements. Only the night closest to the luteinising-hormone peak was retained. After exclusions for timing and protocol compliance, 28 donors remained. Male volunteers rated the odours; the supplied table contains repeated donor–rater observations and identifies both people. The same panel of men rated odours from multiple women; the project table contains one mean rating per donor.

## Prepared tables

The woman’s ID is the Donor label without its pad suffix. Attractiveness ratings were averaged across presentations with Not_perceivable = 0, combining the two pads for each donor. ratings records the number of retained presentations. Hormone values are the source base-10 logs log_Donor_E and log_Donor_P.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Donor identity without the pad suffix. |
| attractiveness | Mean attractiveness rating across retained perceivable presentations of this donor’s odour. |
| estrogen | Supplied base-10 log of donor oestradiol measurement (log_Donor_E), NOT raw hormone concentration. |
| progesterone | Supplied base-10 log of donor progesterone measurement (log_Donor_P), NOT raw hormone concentration. |
| ratings | Number of retained rating presentations contributing to the donor mean. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Lobmaier, J. S., Fischbacher, U., Wirthmüller, U., & Knoch, D. (2018). The scent of attractiveness: levels of reproductive hormones explain individual differences in women's body odour. Proceedings of the Royal Society B: Biological Sciences, 285(1886), 20181520. https://doi.org/10.1098/rspb.2018.1520

**Original data:** Lobmaier, Janek S., Fischbacher, Urs, Wirthmüller, Urs, & Knoch, Daria. (2018). Data from: The scent of attractiveness: levels of reproductive hormones explain individual differences in women’s body odour (Version 1) [Dataset]. Dryad. https://doi.org/10.5061/dryad.g5n1785
