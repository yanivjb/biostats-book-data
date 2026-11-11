# How do frog ecology and body size relate to eye size? — data

## Project data files

| File | Contents |
|---|---|
| `Thomas_museum_specimens.csv` | Project data file. |
| `Thomas_species_traits.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Collection and row meaning

Researchers measured 640 preserved adult museum specimens representing 220 frog species and 55 families, with one to seven specimens per species. The specimen CSV includes left and right eye diameter, corneal diameter, snout–vent length and preserved mass. Some measurements are missing, and sex is unknown for most specimens. The second CSV contains ecological categories compiled once for each of the 220 species. Left and right eyes were measured on each specimen.

## Column definitions and source documentation

## Files included

| File | Contents |
| --- | --- |
| `Thomas_museum_specimens.csv` | 640 preserved adult specimens from 220 species and 55 families. One row per museum specimen. |
| `Thomas_species_traits.csv` | 220 species, with ecological categories and references. One row per species. |
| `CITATION.md` | Citation information. |

The fresh-specimen validation dataset, broader vertebrate dataset and reference PDFs from the original deposit are not included. Full source citations for ecological classifications are available in the reference PDF on Dryad; the CSV retains abbreviated source references.

## Reading and linking the data

```r
specimens <- readr::read_csv("Thomas_museum_specimens.csv")
traits <- readr::read_csv("Thomas_species_traits.csv")
```

Use `Genus` and `Species` together to match the two tables. These keys are unique in the current traits table and cover all 220 species in the specimen table. Each specimen receives the ecological record for its species. The matching key is the combination of `Genus` and `Species`.

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


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1098/rspb.2020.1393
