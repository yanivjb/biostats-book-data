# Recognising diversity in Baltic bladderwrack — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 317 rows. Frond measurements and locality, group and reproductive information for photographed Baltic Fucus plants. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

The broader study combined genomic sampling with photographs taken in the field. This teaching file contains 317 photographed plants from 13 localities in the Gulf of Bothnia and Estonia. Researchers measured frond width, distance between branch points, and margin undulation on three branches per plant. The file provides individual measurements and the corresponding summaries, alongside locality, group label, clone status, and reproductive receptacles. The group, locality and Clone/Unique labels are recorded for each sampled plant.

## Prepared tables

All source rows and columns are retained. Only CSV formatting and the missing-value marker (NA) are standardised; no biological grouping, exclusions or transformations are applied.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Columns and codes

#### File: Fucus\_Morphology.csv

**Description:** This file contains the traits measured to characterise each individual morphologically. The file includes data from 318 individuals from seven localities in the Gulf of Bothnia, Baltic Sea and  six Estonian sites. These localities were selected covering areas where *F. radicans* has previously been found or could potentially be present. Each individual was characterised using the average of three measurements, taken from different branches with the image analysis software ImageJ64 (Schneider et al., 2012). The traits measured were frond width (FW), distance between dichotomies (DBD) and undulation index (UX).

##### Variables

* Sample code: Individual sample identification code
* POP: Sample locality code (see Supplemental information file)
* Species: Fucus vesiculosus, F. radicans or undescribed FucusX
* Clone/Unique: If genotype is unique (sexually derived) or clone genotype (genotype copy derived from asexual reproduction)
* FW1: Frond width measurement 1
* FW2: Frond width measurement 2
* FW3: Frond width measurement 3
* FW: Frond width Average from the 3 measurements
* DBD1: Distance between dichotomies measurement 1
* DBD2: Distance between dichotomies measurement 2
* DBD3: Distance between dichotomies measurement 3
* DBD:Distance between dichotomies Average from the 3 measurements
* Undulation1: Distance of the thallus margin along undulated branch measurement 1
* Undulation2: Distance of the thallus margin along undulated branch measurement 2
* Undulation3: Distance of the thallus margin along undulated branch measurement 3
* Straight line (cm): Measurement of straight line along 3 cm the same branch to calculate ratio between Undulation1, Undulation2 and Undulation3
* UX: Undulation index, the ratio between Undulation measurement and Straight line.
* Receptacles: Number of reproductive conceptacles, if present.

## Access information

Other publicly accessible locations of the data:

* Sequence data are available from NCBI SRA under BioProject accession PRJNA629489

- Scripts from the bioinformatic analysis are available at GitHub ([https://github.com/crustaceana/Population-genomics-for-Clonal-organisms](https://github.com/crustaceana/Population-genomics-for-Clonal-organisms)).


## Recorded measurement units

The supplied morphology dictionary and the article’s morphological-methods paragraph do not state the units of FW or DBD. The separate Straight line field is explicitly labelled cm.

## Sources

**Paper:** Pereyra, R. T., Kinnby, A., Le Moan, A., Ortega‐Martinez, O., Jonsson, P. R., Piarulli, S., Pinder, M. I. M., Töpel, M., De Wit, P., André, C., Knutsen, H., & Johannesson, K. (2025). An Evolutionary Mosaic Challenges Traditional Monitoring of a Foundation Species in a Coastal Environment—The Baltic Fucus vesiculosus. Molecular Ecology, 34(23), e17699. https://doi.org/10.1111/mec.17699

**Original data:** Pereyra, R., Kinnby, A., Le Moan, A., Ortega-Martinez, O., Jonsson, P., Piarulli, S., Pinder, M., Töpel, M., De Wit, P., André, C., Knutsen, H., & Johannesson, K. (2025). Population genomic and morphological datasets from: An evolutionary mosaic challenges traditional monitoring of a foundation species in a coastal environment - the Baltic Fucus vesiculosus (Version 3) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.Q83BK3JSH
