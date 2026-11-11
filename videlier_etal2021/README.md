# Energy budgets and reproduction in fruit flies — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 1060 rows. Individual fruit-fly records with metabolic rate, body mass, reproductive output and measurement conditions. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers used a laboratory population of Drosophila melanogaster descended from flies collected in Ontario. To broaden the range of adult sizes, larvae were raised at different densities. Newly emerged virgin adults were pooled across densities and sampled over three emergence days. The experiment ran in six temporal blocks across stock generations; block, emergence-day group and individual identity are recorded, but original rearing density is not.

Each fly spent a night in an individual chamber of a 64-chamber respirometer. Females occupied odd-numbered chambers and males even-numbered chambers. Carbon dioxide production was sampled repeatedly overnight; the lowest 20-second value among 21 measurement periods was used as the estimate of standard metabolic rate. Temperature, airflow, humidity, light and activity during or just before that reading were recorded. Flies were weighed the following morning.

For reproduction, each focal fly spent three days with nine same-sex competitors and ten opposite-sex flies carrying a brown-eye marker. A focal female then laid eggs for 24 hours; her emerged offspring were counted. For focal males, offspring sired were identified by eye colour among offspring from sampled females. The number of females contributing to the male assay was recorded. The supplied file contains 1060 identified flies, with some measurements missing.

## Prepared tables

All source rows and columns are retained. Only CSV formatting and the missing-value marker (NA) are standardised; no biological grouping, exclusions or transformations are applied.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

Each row corresponds to an individual fly (total: 1060 individuals, 532 females and 528 males). Columns are as follows:

BLOCK: Experimental block, a categorical variable with six levels (1 to 6) corresponding to the 6 temporal blocks over which the experiment was performed.
Sspop: Day of adult emergence, a categorical variable with three levels (1 to 3) corresponding to flies that ecolosed 8, 9 or 10 days after eggs were laid.
B_S: A combination of block (six levels) and day of emergence (three levels).
ID: A categorical variable corresponding to a unique individual identifier.
SEX: A categorical variable with 2 levels (0 for female, 1 for male).
MASS: A continuous variable representing the wet body mass (g) of the individual.
TEMP: A continuous variable consisting of the average temperature (Celcius) during the 20 sec measurement of standard metabolic rate (i.e. SMR).
WV: A continuous variable representing the average water vapor  (ppt) during the 20 sec SMR measurement.
LUX: A continuous variable representing the average light intensity (Lux) during the 20 sec SMR measurement.
FRC: A continuous variable representing the average flow rate (ml/min) during the 20 sec SMR measurement.
ACT20: A continuous variable representing the average locomotor activity during the 20 sec SMR measurement.
ACT20p: A continuous variable representing the average locomotor activity 20 sec before SMR measurement.
SMR: A continuous variable representing the standard metabolic rate (ml CO2/min) of the individual.
MW_WTnb: Total number of wild-type offspring produced by the focal male; a continuous variable.
NbFemTot: A continuous variable representing the number of mutant (bw) females which were used for male fitness measurement.
FW_W: Total number of wild-type offspring produced by the focal female; a continuous variable.

## Sources

**Paper:** Videlier, M., Careau, V., Wilson, A. J., & Rundle, H. D. (2021). Quantifying selection on standard metabolic rate and body mass in Drosophila melanogaster. Evolution, 75(1), 130-140. https://doi.org/10.1111/evo.14126

**Original data:** Rundle, H. D., Videlier, M., Careau, V., & Wilson, A. (2020). Quantifying selection on standard metabolic rate and body mass in Drosophila melanogaster (Version 3) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.63XSJ3V17
