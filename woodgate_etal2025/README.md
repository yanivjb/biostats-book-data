# The machinery behind a lizard’s bite — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 307 rows. All 307 lizards and source measurements in a standard comma-separated CSV. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers captured adult lizards by lasso at sites on Ibiza, Formentera, and nearby islets during September–October 2022 and May 2023. Each performed three bite trials, separated by rest periods, using an instrument with approximately standardized gape. The teaching file retains 307 lizards with complete focal measurements, grouped into 11 locations; two locations also distinguish lighthouse and shoreline samples. MAX records the highest of three bite-force measurements from each lizard.

## Prepared tables

The source uses semicolons; ready_data.csv uses commas. All 307 rows, columns and measurements are retained; no biological transformations were applied.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

## Description of the data and file structure

Phenotypic measurements and ecological data for 11 populations of the Ibiza wall lizard, *Podarcis pityusensis*. Data is used to analyse form-function-environment relationships across scales of evolutionary isolation.

### Files and variables

#### File: Supplementary_Data_Sheet_2.csv

**Description:** Phenotypic measurements of each individual taken in the field.

##### Variables

* CLADE: Classification according to clade as specified in Rodríguez et al., (2013)
* LOCATION: Name of the location in the Pityusic islands at which measurements were taken. Non-accented characters are used to ease use of files in R.
* Lighthouse: Listed for Bleda Plana and Conillera, describing whether the population was from the lighthouse or the shoreline. All other locations listed as NA.
* LIZARD: Lizard number in the field
* SEX: Male (M) or female (F)
* GAPE_ANGLE: Estimation of gape angle made as described in the text
* MAX: Bite force, in Newtons
* TAIL: Whether the tail had been autotomised (indicated by 'Dropped') or was intact (indicated by 'Intact').
* WEIGHT: in grams
* SVL: Snout-Vent-Length, in mm
* PL: Pileus length, in mm
* PW: Pileus width, in mm
* HH: Head height, in mm
* MOUTH: Mouth width, in mm
* AMPUTATION: Whether digits or phalanges were missing (indicated by 'Yes') or intact (indicated by 'No).

## Access information

This Dryad dataset refers to methods described in the following sources:

* Cheylan , M.(1992). Synthèse biogéographique. In M. Delaugerre & M. Cheylan (Eds.), Atlasde répartition des batraciens et rep- tiles de corse (pp. 105–120).Montpellier, Parc Naturel Régional de Corse/École Pratique des Hautes Études.
* Parlanti , C., Lanza, B., Poggesi, M., & Sbordoni, V. (1988). Anfibi e rettili delle isole del Mediterraneo: Un testdellípotesi dell’equilibrio insulare. Bulletin of Ecology , 19:335–348.
* Pérez-Cembranos , A., León, A., & Pérez-Mellado, V. (2016). Omnivory of an insular lizard: Sources of variation in the diet of Podarcis lilfordi (Squamata, Lacertidae). PLoS ONE , 11 , e0148947. https: // doi.org/ 10.1371/ journal.pone.0148947

This Dryad dataset includes data derived from the following sources:

* Vanhooydonck, B., Herrel, A., Van Damme, R., Reilly, S.M., McBrayer, L.D., Miles, D.B., 2007. Interactions between habitat use, behavior, and the trophic niche of lacertid lizards. Lizard ecology: the evolutionary consequences of foraging mode 427–449.
* Donihue, C.M., 2016. Aegean wall lizards switch foraging modes, diet, and morphology in a human-built environment. Ecology and Evolution 6, 7433–7442.
* Lluch i Dubon, 1997. Geografia de les Illes Balears. Lleonard Muntaner Editor.
* Rodríguez, V., Brown, R.P., Terrasa, B., Pérez‐Mellado, V., Castro, J.A., Picornell, A., Ramon, M.M., 2013. Multilocus genetic diversity and historical biogeography of the endemic wall lizard from Ibiza and Formentera, *Podarcis pityusensis * (Squamata: Lacertidae). Molecular Ecology 22, 4829–4841. [https://doi.org/10.1111/mec.12443](https://doi.org/10.1111/mec.12443)

## Sources

**Paper:** Woodgate, S. C., Pérez-Cembranos, A., Pérez-Mellado, V., & Müller, J. (2025). Microgeographic diversity does not drive macroevolutionary divergence in bite force of the Ibiza wall lizard, Podarcis pityusensis. Evolution, 79(10), 2144-2155. https://doi.org/10.1093/evolut/qpaf140

**Original data:** Woodgate, S. C., Pérez-Cembranos, A., Pérez-Mellado, V., & Müller, J. (2025). Microgeographic diversity does not drive macroevolutionary divergence in bite force of the Ibiza wall lizard, Podarcis pityusensis (Version 4) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.HHMGQNKT8
