# Love darts and the exchange of sperm — data

## Files

| File | Contents |
|---|---|
| [Kimura_2015_project.csv](Kimura_2015_project.csv) | Ready-to-load CSV; 42 rows. Sperm received at the first mating, focal-snail size and partner-history labels for 42 snails. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Focal virgin snails were paired with virgin or previously mated partners; only previously mated partners had developed a dart. Sperm masses donated and received were extracted after either the first or fourth mating, dried and weighed. These are different assay endpoints, not four repeated measurements of every animal.

## Prepared tables

MO = 1st and STC = from virgin/from nonvirgin were retained: 42 animals in the first-mating sperm-receipt assay. sperm_mass is oven-dried sperm-mass weight. body_size is the source BS, already the natural logarithm of shell-volume proxy.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source animal ID. |
| sperm_mass | Received sperm-mass dry weight, source SMW (mg). |
| body_size | Source BS: natural log of shell-volume proxy. Already on a natural-log scale. |
| partner | Source of received sperm: from virgin or from nonvirgin; categorical. Observed categories: from nonvirgin, from virgin. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Kimura, K. & Chiba, S. (2015). The direct cost of traumatic secretion transfer in hermaphroditic land snails: individuals stabbed with a love dart decrease lifetime fecundity. Proceedings of the Royal Society B: Biological Sciences, 282(1804), 20143063. https://doi.org/10.1098/rspb.2014.3063

**Original data:** Kimura, Kazuki, & Chiba, Satoshi (2015). Data from: The direct cost of traumatic secretion transfer in hermaphroditic land snails: individuals stabbed with a love dart decrease lifetime fecundity (Version 1) [Dataset]. Dryad. https://doi.org/10.5061/dryad.qg258
