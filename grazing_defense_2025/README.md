# Plant defences in grazed and fenced grasslands — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 15 rows. Paired grazed and ungrazed area means for all 15 sites, retaining chemistry, biomass, soil and climate measurements and chemistry differences. |
| [ready_leaf_data.csv](ready_leaf_data.csv) | Ready-to-load CSV; 109 rows. The separate 109 species-associated leaf samples, with chemistry, species, functional group, site and grazing labels. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers sampled grasslands at 15 sites across roughly 1,700 km of Inner Mongolia in August 2017–2018. At each site they compared a grazed area with a fenced area and sampled three quadrats per area. Fences had excluded grazing for different lengths of time. These were existing management contrasts, not randomly assigned grazing treatments. The community file contains 90 quadrats. The separate leaf file contains 109 species-associated samples from 29 species.

## Prepared tables

ready_data.csv has one row per paired site. Numeric quadrat measurements were averaged within Site, Treatment and Vegetation type, excluding Sample_id; each management area contributes three quadrats. Column suffixes _Grazed and _Ungrazed identify the two areas; base names and units are defined below. quadrats counts contributing rows. phenolics_change_Grazed_minus_Ungrazed and silicon_change_Grazed_minus_Ungrazed subtract the ungrazed mean from the grazed mean, in g/kg. Missing values were omitted within means; a mean with no observations is NA. ready_leaf_data.csv retains the separate 109 leaf-sample rows; no cross-table join was made.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

## Collection and row meaning

At each Inner Mongolian site, researchers sampled an area exposed to livestock grazing and an adjacent fenced area protected for 3–26 years. Sampling took place in August 2017–2018. Community measurements describe quadrats; leaf measurements describe collected species-associated samples, generally pooling leaves from multiple plants. `Sample_id` identifies a row/sample, the collected sample. Three quadrats were sampled in each management area.

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

## Sources

**Paper:** Yan, K., Xia, W., Yu, K., Yang, X., Wang, X., Wang, J., Zhou, Y., Jing, X., Zhang, H., Jiang, Y., Han, X., & Yu, L. (2025). Grazing disrupts the trade‐off between silica‐ and phenol‐based plant defences along an aridity gradient in grasslands. Functional Ecology, 39(12), 3474-3486. https://doi.org/10.1111/1365-2435.70206

**Original data:** Yu, L., Yan, K., Xia, W., Yu, K., Yang, X., Wang, X., Wang, J., Zhou, Y., Jing, X., Zhang, H., Jiang, Y., & Han, X. (2025). Plant defense trait responses to grazing along an aridity gradient in Inner Mongolian grasslands (Version 3) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.31ZCRJF1D
