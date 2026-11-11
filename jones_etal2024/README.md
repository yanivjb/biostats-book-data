# A crop pollinator’s life in the heat — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 420 rows. All 420 individual bee records with farm/sex environmental information already attached using Site and Sex. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers collected 420 adult bees at 14 farms in July–August 2019, with 30 bees per farm. Bees were transported on ice, then warmed from 23°C at 0.25°C per minute until loss of neuromuscular control. Critical thermal maximum (CTmax) is this endpoint temperature, not a measure of survival or reproduction under field conditions. The site table records the environment at each farm, with a separate summary row for each sex.

## Prepared tables

One row per bee. Farm/sex records were attached using Site AND Sex, with no new or dropped bee rows. Original individual columns retain their names; shared column names from the farm/sex table receive _site_summary. The source definition below applies to each base name. Farm environmental measurements are repeated for bees from the same farm.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

## Collection and row meaning

Wild squash bees were collected from Pennsylvania pumpkin/squash farms in July–August 2019, transported on ice, and allowed to recover. They were warmed from 23°C at 0.25°C/min until neuromuscular failure. Individual rows represent bees; qPCR technical replicates were summarized within each bee. Site, collection date and transport duration are linked. The paper identifies `epl0331` and `epl0647` as poor-condition observations; they remain in the supplied file. Unheated controls described by the paper are not included as separate rows here.

## Individual CSV columns

| Column | Meaning and units |
| --- | --- |
| `Sample ID` | Unique bee identifier; header includes a space. |
| `Species` | Species identification; all records are Xenoglossa_pruinosa. |
| `Sex` | Female or Male. |
| `Collection_Date` | Field collection date as month/day/year. |
| `Site` | Collection locality code/name. |
| `Latitude` | Site latitude, decimal degrees. |
| `Longitude` | Site longitude, decimal degrees. |
| `Time_Chill_Coma_minutes` | Time on ice during transport, minutes; shared by bees from a site. |
| `Mass_Before_CTmax_mg` | Mass before the heat-tolerance test, mg. |
| `Mass_After_CTmax_mg` | Mass after the test, mg. |
| `deltaMass_mg` | Mass after minus mass before, mg. Negative values represent loss. |
| `CTmax_Celsius` | Critical thermal maximum, °C: loss of neuromuscular control during warming. |
| `Time_to_CTmax_min` | Stored test-time variable, labelled minutes. It equals 4 × CTmax in this CSV; because the protocol starts at 23°C, its interpretation as elapsed time requires clarification. |
| `28sReferenceGene_RawCT_Mean` | Mean qPCR cycle threshold for the reference gene across technical replicates. |
| `Trypanosome_RawCT_Mean` | Mean qPCR cycle threshold for trypanosomes. |
| `Trypanosome_DeltaCT` | Target cycle threshold minus reference-gene threshold. |
| `Trypanosome_ddCT` | DeltaCT relative to the assay’s base sample, as supplied. |
| `Trypanosome_2^-ddCT` | Relative molecular intensity before logarithmic transformation. |
| `Trypanosome_log(2^-ddCT)` | Log10 of the relative intensity. |
| `Trypanosome_RelativeIntensity_AdjustedforThreshold` | Log10 relative intensity for detections; set to 0 when the raw cycle threshold exceeds the negative-detection cutoff. Already transformed; not an untransformed parasite count. |
| `Vairimorpha_apis_RawCT_Mean` | Mean qPCR cycle threshold for Vairimorpha apis. |
| `Vairimorpha_apis_DeltaCT` | Target cycle threshold minus reference-gene threshold. |
| `Vairimorpha_apis_ddCT` | DeltaCT relative to the assay’s base sample, as supplied. |
| `Vairimorpha_apis_2^-ddCT` | Relative molecular intensity before logarithmic transformation. |
| `Vairimorpha_apis_log(2^-ddCT)` | Log10 of the relative intensity. |
| `Vairimorpha_apis_RelativeIntensity_AdjustedforThreshold` | Log10 relative intensity for detections; set to 0 when the raw cycle threshold exceeds the negative-detection cutoff. Already transformed; not an untransformed parasite count. |
| `Spiroplasma_apis_RawCT_Mean` | Mean qPCR cycle threshold for Spiroplasma apis. |
| `Spiroplasma_apis_DeltaCT` | Target cycle threshold minus reference-gene threshold. |
| `Spiroplasma_apis_ddCT` | DeltaCT relative to the assay’s base sample, as supplied. |
| `Spiroplasma_apis_2^-ddCT` | Relative molecular intensity before logarithmic transformation. |
| `Spiroplasma_apis_log(2^-ddCT)` | Log10 of the relative intensity. |
| `Spiroplasma_apis_RelativeIntensity_AdjustedforThreshold` | Log10 relative intensity for detections; set to 0 when the raw cycle threshold exceeds the negative-detection cutoff. Already transformed; not an untransformed parasite count. |

The parasite columns store different stages of the same molecular assay. Raw CT here means **PCR cycle threshold**, whereas CTmax means **critical thermal maximum**; these are different quantities. Relative molecular intensity is an assay-specific measure, rather than an absolute parasite count.

## Site CSV columns

| Column | Meaning and units |
| --- | --- |
| `Site` | Collection locality identifier. |
| `Latitude` | Site latitude, decimal degrees. |
| `Longitude` | Site longitude, decimal degrees. |
| `Species` | Species of pooled individuals. |
| `Sex` | Sex represented by this summary row. |
| `Average_Mass_mg` | Mean initial mass for this site–sex group, mg. |
| `StandardDeviation_Mass_mg` | SD of initial mass for the site–sex group, mg. |
| `Time_Chill_Coma_minutes` | Transport time on ice, minutes. |
| `CTmax_Average_Celsius` | Mean CTmax for the site–sex group, °C. |
| `CTmax_StandardDeviation_Celsius` | SD of CTmax for the site–sex group, °C. |
| `Soil_Composition` | Soil texture classification. |
| `Proportion_Sand_%` | Sand percentage. |
| `Proportion_Silt_%` | Silt percentage. |
| `Proportion_Clay_%` | Clay percentage. |
| `HOBO_Probe_August_Daily_Average_Tmin_Celsius` | HOBO-probe average daily minimum temperature, °C. Header says August while the original README description says July; month needs clarification. |
| `HOBO_Probe_August_Daily_Average_Tmax_Celsius` | HOBO-probe average daily maximum temperature, °C; same month-label discrepancy as above. |
| `PestWatch_July_Daily_Average_Tmin_Celsius` | Modelled average daily minimum temperature for July 2019, °C. |
| `PestWatch_July_Daily_Average_Tmax_Celsius` | Modelled average daily maximum temperature for July 2019, °C. |
| `PestWatch_August_Daily_Average_Tmin_Celsius` | Modelled average daily minimum temperature for August 2019, °C. |
| `PestWatch_August_Daily_Average_Tmax_Celsius` | Modelled average daily maximum temperature for August 2019, °C. |
| `PRISM_Precipitation_July_mm` | Mean daily precipitation during July 2019 from PRISM, mm, according to the paper’s methods. |
| `SoilTexture_PC1` | First principal-component score from soil sand/silt/clay percentages; a derived summary. |
| `SoilTexture_PC2` | Second soil-texture principal-component score. |
| `SoilTexture_PC3` | Third soil-texture principal-component score. |

## Missing values and derived quantities

Neither CSV contains blank/`NA` data cells in the current copy. Threshold-adjusted parasite zeros indicate negative detections under the authors’ rule, not missing measurements or demonstrated complete absence. The soil percentages are parts of one composition. Principal components, molecular transformations, mass differences and site summaries are derived variables; their calculation definitions are recorded above. HOBO month labels and the elapsed-time variable need clarification as noted above; this README does not silently correct either file.

## Sources

**Paper:** Jones, L. J., Miller, D. A., Schilder, R. J., & López‐Uribe, M. M. (2024). Body mass, temperature, and pathogen intensity differentially affect critical thermal maxima and their population‐level variation in a solitary bee. Ecology and Evolution, 14(2), e10945. https://doi.org/10.1002/ece3.10945

**Original data:** Jones, L., Miller, D., Schilder, R., & López-Uribe, M. (2024). Body mass, temperature, and pathogen intensity differentially affect critical thermal maxima and their population-level variation in a solitary bee (Version 4) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.HHMGQNKP9
