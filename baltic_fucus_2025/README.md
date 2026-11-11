# Baltic seaweed morphology across sites — data

## Project data files

| File | Contents |
|---|---|
| `Fucus_Morphology.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Collection and row meaning

The broader study combined genomic sampling with photographs taken in the field. This teaching file contains 317 photographed plants from 13 localities in the Gulf of Bothnia and Estonia. Researchers measured frond width, distance between branch points, and margin undulation on three branches per plant. The file provides individual measurements and the corresponding summaries, alongside locality, group label, clone status, and reproductive receptacles. The group, locality and Clone/Unique labels are recorded for each sampled plant.

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


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://zenodo.org/records/14161399

## Recorded measurement units

The supplied morphology dictionary and the article’s morphological-methods paragraph do not state the units of FW or DBD. The separate Straight line field is explicitly labelled cm.
