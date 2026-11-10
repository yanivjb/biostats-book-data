# Grazing, aridity and plant defences

**Paper:** Yan et al. (2025). Grazing disrupts the trade-off between silica- and phenol-based plant defences along an aridity gradient in grasslands. Functional Ecology. https://doi.org/10.1111/1365-2435.70206

**Original data:** [10.5061/dryad.31zcrjf1d](https://doi.org/10.5061/dryad.31zcrjf1d)

This README describes the teaching files in `grazing_defense_2025`. It adapts the authors’ documentation to the files present in this folder, checked 9 November 2026. File counts and notes about the teaching CSVs come from inspecting those files; they are not additional statements by the original authors. Cite both the paper and the original dataset. `CITATION.md` provides citation information; the paper link above identifies the published article where an older citation file is outdated.

## Files included

| File | Contents |
| --- | --- |
| `data_defense_traits.csv` | Community-level measurements: 90 rows, three quadrats in each grazed/ungrazed area at each of 15 sites. This is the CSV version of `Community_Data`. |
| `data_defense_traits_Leaf_Data.csv` | Species-associated leaf samples: 109 rows from 29 species at 15 sites. |
| `data_defense_traits.xlsx` | Original workbook, including `Community_Data` and `Leaf_Data`. It overlaps the CSVs; it is not another independent dataset. |
| `CITATION.md` | Citation information. |

The community CSV is **not** the leaf-sample table. Some numeric values in the community CSV are rounded relative to the workbook, and some have trailing spaces. Keep the workbook as the reference for original precision. The data files have not been changed by this README.

## Reading the CSVs

```r
community <- readr::read_csv("data_defense_traits.csv")
leaves <- readr::read_csv("data_defense_traits_Leaf_Data.csv")
```

Column names contain spaces, units and some full-width punctuation. Use the exact names returned by `names(community)` or `names(leaves)`; in R, put nonstandard names in backticks when referring to them directly.

## Collection and row meaning

At each Inner Mongolian site, researchers sampled an area exposed to livestock grazing and an adjacent fenced area protected for 3–26 years. Sampling took place in August 2017–2018. Community measurements describe quadrats; leaf measurements describe collected species-associated samples, generally pooling leaves from multiple plants. `Sample_id` identifies a row/sample, not an independently assigned treatment. Quadrats within an area and samples from the same species or site share conditions.

## Community CSV columns

| Column | Meaning and units |
| --- | --- |
| `Site` | Site code; 15 sites. |
| `Treatment` | `Grazed` or `Ungrazed`. |
| `Age` | Fence age in years; grazed observations are coded 0. This is not plant age. |
| `Vegetation type` | Meadow steppe, typical steppe, desert steppe or desert. |
| `Sample_id` | Sample identifier in this table. |
| `Phenolics(g kg-1)` | Community plant phenolic concentration, g/kg dry material. |
| `Si (g kg-1)` | Community plant silicon concentration, g/kg dry material. |
| `C（%）` | Plant carbon concentration, percent. |
| `N（%）` | Plant nitrogen concentration, percent. |
| `P（g kg-1）` | Plant phosphorus concentration, g/kg. |
| `Forb biomass (g m-2)` | Forb aboveground biomass, g/m². |
| `Grass biomass (g m-2)` | Grass aboveground biomass, g/m². |
| `Biomass (g m-2)` | Total aboveground biomass, g/m². |
| `Soil N （g kg-1）` | Soil nitrogen concentration, g/kg. |
| `Soil P （g kg-1）` | Soil phosphorus concentration, g/kg. |
| `Soil available Si （mg kg-1）` | Plant-available soil silicon, mg/kg. |
| `Soil pH` | Soil pH; unitless. |
| `SWC（%）` | Soil water content, percent. |
| `Aridity` | The paper defines aridity as 1 minus the aridity index (precipitation/potential evapotranspiration); higher values mean drier conditions. |
| `MAP` | Mean annual precipitation, mm. |
| `MAT` | Mean annual temperature, °C. |

## Leaf CSV columns

| Column | Meaning and units |
| --- | --- |
| `Site` | Site code. |
| `Treatment` | `Grazed` or `Ungrazed`. |
| `Vegetation type` | Vegetation category. |
| `Sample_id` | Sample identifier in the leaf table; not a cross-table join key. |
| `Species` | Scientific name as supplied; some names contain nonbreaking or trailing spaces. |
| `Functional group` | Grass, forb, legume, sedge, shrub or semi-shrub. |
| `Leaf Si (g kg-1)` | Leaf silicon concentration, g/kg dry material. |
| `Leaf phenolics (g kg-1)` | Leaf phenolic concentration, g/kg dry material. |

## Missing values and relationships between files

Blank cells in the leaf CSV represent missing measurements: 9 silicon and 1 phenolic value. The community CSV has no blank data cells. Numeric zero is a recorded value, not a missing-value code.

The tables have different observational units. Site and treatment connect them conceptually, but each site–treatment appears several times in each table: a direct join on those two columns creates multiple matches and duplicates rows. Sample identifiers do not establish matching between quadrats and species samples. Some site–species combinations in the leaf CSV occur in only one treatment despite the intended matched-species design.
