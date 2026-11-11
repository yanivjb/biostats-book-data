# Seeing the world through a frog’s eyes — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 220 rows. Species means of eye, corneal and body measurements for all 220 species, specimen counts and ecological categories already attached. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers measured 640 preserved adult museum specimens representing 220 frog species and 55 families, with one to seven specimens per species. The source specimen table includes left and right eye diameter, corneal diameter, snout–vent length and preserved mass. Some measurements are missing, and sex is unknown for most specimens. A separate source table contains ecological categories compiled once for each of the 220 species. Left and right eyes were measured on each specimen.

## Prepared tables

One row per species (Genus AND Species). eye_mm_mean and cornea_mm_mean first average the available left/right diameters within each specimen, then average available specimen values within species. SVL_mm_mean and Mass_g_mean average available specimen measurements. The corresponding _n columns count specimens with observed values for that measurement; specimens counts all source specimens. All-missing means are NA. Ecological categories and their source references were joined by Genus AND Species; Unknown remains a recorded category. Taxonomy and ecological column definitions below apply unchanged. No species were excluded for missing data.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

## Museum specimen columns

| Column | Meaning and units |
| --- | --- |
| `Order` | Taxonomic order; all specimens are Anura. |
| `Suborder` | Taxonomic suborder. |
| `Family` | Taxonomic family. |
| `Subfamily` | Taxonomic subfamily where supplied. |
| `Genus` | Genus name. |
| `Species` | Specific epithet, not a full binomial by itself. |
| `genus_species` | Genus and specific epithet joined with an underscore. |
| `Feng_tiplabel` | Exact-match label in the study’s reference phylogeny where available. |
| `mod_tiplabel` | Modified phylogeny-matching label, including close-relative substitutions; not a specimen identifier. |
| `Museum` | Collection: NHM = Natural History Museum, London; NCSM = North Carolina Museum of Natural Sciences; BNHS = Bombay Natural History Society. |
| `SpecimenNumber` | Museum catalogue number. Catalogue numbers are reused across some museum/taxonomic combinations. |
| `Sex` | Recorded sex where identified; most specimens lack this information, and capitalization varies. |
| `Stage` | Life stage; all records are adult. |
| `SVL_mm` | Snout–vent length, mm. |
| `Mass_g` | Preserved wet mass, g. |
| `ED_right_mm` | External transverse right eye diameter, mm. |
| `ED_left_mm` | External transverse left eye diameter, mm. |
| `CD_right_mm` | Transverse right cornea diameter, mm. |
| `CD_left_mm` | Transverse left cornea diameter, mm. |
| `Measured_by` | Person who made the morphological measurements. |

## Species-trait columns

| Column | Meaning and units |
| --- | --- |
| `Order` | Taxonomic order. |
| `Family` | Taxonomic family. |
| `Subfamily` | Taxonomic subfamily where supplied. |
| `Genus` | Genus name. |
| `Species` | Specific epithet. |
| `Feng_tiplabel` | Reference phylogeny label where supplied. |
| `Common name` | Common name; the actual header contains a space. |
| `Adult_habitat` | Scansorial (climbing), ground-dwelling, subfossorial (partly burrowing), fossorial (burrowing), aquatic or semiaquatic. |
| `AH_source` | Source for adult habitat. |
| `Activity_period` | Diurnal, nocturnal or both, where known. |
| `AP_source` | Source for activity period. |
| `Mating_habitat` | Plants, ground, lentic water (standing water) or lotic water (flowing water), where known. |
| `MH_source` | Source for mating habitat. |
| `Life_history` | Free-living larvae or no free-living larvae, where known. |
| `LH_source` | Source for life-history classification. |
| `Larval_habitat` | Lentic water, lotic water, on land, obscured, or no larvae, where known. `No larvae` is a biological category, not a missing value. |
| `LHab_Source` | Source for larval habitat; capitalization is as stored. |
| `Sex_dichromatism` | Presence or absence of differences in coloration between sexes, where known. |
| `SD_source` | Source for sexual dichromatism. |

## Missing values and sampling

`NA` and blank cells indicate unavailable information. Some ecological fields also use `Unknown` for an unavailable classification. Do not confuse it with the biological categories `Both`, `No free-living larvae` or `No larvae`.

The morphology file has 20 missing masses and some missing eye/cornea dimensions. Sex is unavailable for 611 specimens. Eye sides are paired within a specimen. Between one and seven specimens represent a species. Species were chosen to span taxonomic/ecological diversity rather than randomly sampled from all frogs; preserved tissues can differ from fresh tissues. Species share evolutionary history, and multiple specimens from one species share the same ecology.

## Sources

**Paper:** Thomas, K. N., Gower, D. J., Bell, R. C., Fujita, M. K., Schott, R. K., & Streicher, J. W. (2020). Eye size and investment in frogs and toads correlate with adult habitat, activity pattern and breeding ecology. Proceedings of the Royal Society B: Biological Sciences, 287(1935), 20201393. https://doi.org/10.1098/rspb.2020.1393

**Original data:** Thomas, K. N., Gower, D. J., Bell, R. C., Fujita, M. K., Schott, R. K., & Streicher, J. W. (2020). Eye size and investment in frogs and toads correlate with adult habitat, activity pattern and breeding ecology (Version 5) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.1ZCRJDFQ7
