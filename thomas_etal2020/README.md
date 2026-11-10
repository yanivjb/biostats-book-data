# Frog eye morphology and species ecology

**Paper:** Thomas et al. (2020). Eye size and investment in frogs and toads correlate with adult habitat, activity pattern and breeding ecology. Proceedings of the Royal Society B. https://doi.org/10.1098/rspb.2020.1393

**Original data:** [10.5061/dryad.1zcrjdfq7](https://doi.org/10.5061/dryad.1zcrjdfq7)

This README describes the teaching files in `thomas_etal2020`. It adapts the authors’ documentation to the files present in this folder, checked 9 November 2026. File counts and notes about the teaching CSVs come from inspecting those files; they are not additional statements by the original authors. Cite both the paper and the original dataset. `CITATION.md` provides citation information; the paper link above identifies the published article where an older citation file is outdated.

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

Use `Genus` and `Species` together to match the two tables. These keys are unique in the current traits table and cover all 220 species in the specimen table. Matching a species trait to several specimens repeats species-level information; it does not create independent ecological observations. Do not append the tables or join on `Species` alone.

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
| `SpecimenNumber` | Museum catalogue number. Interpret with museum/taxonomic context; it is not globally unique in this CSV. |
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

`NA` and blank cells indicate unavailable information. Some ecological fields also use `Unknown`; treat that as unavailable classification when interpreting ecological categories. Do not confuse it with the biological categories `Both`, `No free-living larvae` or `No larvae`.

The morphology file has 20 missing masses and some missing eye/cornea dimensions. Sex is unavailable for 611 specimens. Eye sides are paired within a specimen. Between one and seven specimens represent a species. Species were chosen to span taxonomic/ecological diversity rather than randomly sampled from all frogs; preserved tissues can differ from fresh tissues. Species share evolutionary history, and multiple specimens from one species share the same ecology.
