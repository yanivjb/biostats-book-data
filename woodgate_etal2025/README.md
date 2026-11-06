# Supplementary_Data_Sheet_2.csv

**Paper:** Woodgate et al. 2025. Microgeographic diversity does not drive macroevolutionary divergence in bite force of the Ibiza wall lizard. Evolution  
https://doi.org/10.1093/evolut/qpaf140

**Data:** https://doi.org/10.5061/dryad.hhmgqnkt8

This folder contains only `Supplementary_Data_Sheet_2.csv` from the original deposit (downloaded 2026-11-06, unmodified). Please cite both the paper and the dataset.

_Below: the authors' README (README.md), trimmed to the section on this file_

---

# Microgeographic diversity does not drive macroevolutionary divergence in bite force of the Ibiza wall lizard, *Podarcis pityusensis*

Dataset DOI: [10.5061/dryad.hhmgqnkt8](10.5061/dryad.hhmgqnkt8)

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

## Code/software

An R script is provided which corresponds to the 'data analysis' section of the manuscript. Analysis was performed on R version 4.3.2 (2023-10-31 ucrt) -- "Eye Holes" Copyright (C) 2023 The R Foundation for Statistical Computing. R packages used are as follows: ggplot2, stats, car, hillR, simboot, MASS, jmv, Matrix, remotes, RRPP.

Other data is in .csv format.

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

