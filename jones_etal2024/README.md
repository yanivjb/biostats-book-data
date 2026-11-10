# Squash bee heat tolerance, parasites and site conditions

**Paper:** Jones et al. (2024). Body mass, temperature, and pathogen intensity differentially affect critical thermal maxima and their population-level variation in a solitary bee. Ecology and Evolution. https://doi.org/10.1002/ece3.10945

**Original data:** [10.5061/dryad.hhmgqnkp9](https://doi.org/10.5061/dryad.hhmgqnkp9)

This README describes the teaching files in `jones_etal2024`. It adapts the authors’ documentation to the files present in this folder, checked 9 November 2026. File counts and notes about the teaching CSVs come from inspecting those files; they are not additional statements by the original authors. Cite both the paper and the original dataset. `CITATION.md` provides citation information; the paper link above identifies the published article where an older citation file is outdated.

## Files included

| File | Contents |
| --- | --- |
| `Jones-et-al_Raw_Individual_Data.csv` | 420 bees: 220 females and 200 males from 14 farms, with mass, heat tolerance and molecular parasite measurements. |
| `Jones-et-al_Raw_Site_Data.csv` | 28 site–sex summaries: one female and one male row at each of 14 sites, with environmental measurements. |
| `CITATION.md` | Citation information. |

## Reading and linking the data

```r
bees <- readr::read_csv("Jones-et-al_Raw_Individual_Data.csv")
sites <- readr::read_csv("Jones-et-al_Raw_Site_Data.csv")
```

The site table is unique by **Site and Sex together**, not by Site alone. Joining on Site alone duplicates each bee into two summary rows. Site climate/soil values are repeated for the sexes; 28 summary rows do not represent 28 independently sampled environments. The site means and standard deviations summarize the individual data and are not an independent dataset to append to the bees.

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

The parasite columns are alternative stages of the same molecular assay, not independent parasite measurements. Raw CT here means **PCR cycle threshold**, whereas CTmax means **critical thermal maximum**; these are different quantities. Relative molecular intensities are assay-specific and should not be interpreted as directly comparable absolute counts across parasite groups.

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

Neither CSV contains blank/`NA` data cells in the current copy. Threshold-adjusted parasite zeros indicate negative detections under the authors’ rule, not missing measurements or demonstrated complete absence. The soil percentages are parts of one composition. Principal components, molecular transformations, mass differences and site summaries are derived variables; their definitions matter when interpreting relationships. HOBO month labels and the elapsed-time variable need clarification as noted above; this README does not silently correct either file.
