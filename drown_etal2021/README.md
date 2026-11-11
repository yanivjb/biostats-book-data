# Mummichog heat tolerance at two temperatures — data

## Project data files

| File | Contents |
|---|---|
| `Drown_physiological_plasticity_2021.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Collection and row meaning

Fish were collected in September 2018 from three New Jersey sites: one warmed by power-station effluent and two nearby reference sites. Summer habitat temperatures averaged approximately 32°C at the effluent site and 28°C at the references. Fish were individually tagged, held under common laboratory conditions for more than six weeks, and given a simulated winter before acclimation treatments.

Fish were acclimated to either 12°C or 28°C for at least four weeks. Whole-animal oxygen consumption was measured, followed one week later by a heat-tolerance test. Fish were then acclimated to the other temperature and tested again. Starting-temperature groups contained fish of both sexes from all populations. Fish identity, population, acclimation group, measurement dates and body mass are recorded.

Heat tolerance was the water temperature at which a fish lost coordinated movement for at least five seconds during warming at 0.3°C per minute. Fish recovered after testing, but some died or were removed for declining condition; a probe-calibration problem also caused missing heat-tolerance values. The supplied file has 250 records from 144 tagged fish, with availability varying by trait.

## Column definitions and source documentation

Please reference the notes at the end of this README for descriptions of abbreviations used, units for trait measures, and important information about metadata columns and missing data.

Whole animal metabolism, substrate specific cardiac metabolic rate and critical thermal maximum were measured in individuals from three wild caught Fundulus heteroclitus populations. All traits were measured after individuals were common gardened at 20°C and 15ppt salinity for 6 weeks then overwintered at 10°C and 15ppt salinity for 4 weeks. Individuals were then acclimated to 12°C or 28°C and 15ppt salinity for 4 weeks and whole animal metabolism was measured followed by critical thermal maximum one week later. Individuals were then acclimated to the opposite temperature (12°C to 28°C or 28°C to 12°C) for 4 weeks before repeating trait measures in the following order: whole animal metabolism, critical thermal maximum, substrate specific cardiac metabolic rate. All traits were measured at the acclimation temperature. Whole animal metabolic rate was measured using intermittent flow respirometry. Critical thermal maximum was measured by placing fish in a 10 gallon aquarium with fully oxygenated 15ppt seawater at the acclimation temperature. Water was slowly heated (0.3°C per minute) using a submersible heating coil. Critical thermal maximum was defined as the temperature at which the individual exhibited no coordinated movement for 5 consequtive seconds. Cardiac metabolic rate was measured with four substrates: glucose, fatty acids, lactate with ketones and ethanol, and endogenous (i.e., no added substrate). To measure cardiac metabolic rate, heart ventricles were dissected, splayed in ringer's media with hepes, and placed in 1mL chambers with the desired substrate to measure oxygen consumption over time. Processed data (multiple replicate measures of oxygen consumption over time averaged for a single individual) for whole animal metabolic rate and substrate specific cardiac metabolic rate are provided here. Raw critical thermal maximum data in °C are also provided. Metadata includes population, acclimation temperature, acclimation order (12°C first or 28°C first acclimation), habitat temperature, body mass (at time of whole animal and cardiac metabolic rate), heart mass, date of data collection, and sex for all individuals. Mass corrected metabolic rates (log10 regression with body mass for whole animal and regression with body mass for cardiac metabolic rate) are also included in the data set.


## Notes (from the authors' "Notes" sheet)

| Abbreviation | Item | Units |
|---|---|---|
| CaM | Cardiac metabolic rate | picomoles of oxygen per second |
| WAM | Whole animal metabolic rate | milligrams of oxygen per hour |
| CTMax | Critical thermal maximum | °C |
| GLU | Glucose substrate |  |
| FA | Fatty acid substrate |  |
| LKA | Lactate with ketones and ethanol substrate |  |
| END | Endogenoug substrate (i.e., no added substrate) |  |
|  |  |  |
| Variable | Description | Units |
| Fish_ID | unique visual implant elastomer tag ID |  |
| Population | individual collection location, NOC = north reference, SOC= south reference, TE = thermal effluent |  |
| Habitat_temp | average minimum high tide temperature from HOBO data logger deployed at collection site for summer 2018 | °C |
| Acclimation_temperature | temperature of acclimation during physiological measurement | °C |
| Acclimation_order | designating if individuals were acclimated to 12°C (group 1) or 28°C (group 2) first | factor |
| Sex | M = male, F = female | factor |
| Dates | day of data collection | Month/day/year |
| WAM_Mass | Mass measured on day of WAM measurement | grams |
| CaM_Mass | Mass measured on day of CaM measurement | grams |
| heart_mass | Mass of heart ventricle measured on day of CaM measurement | grams |
| WAM_LogMass | log10 of WAM_Mass | grams |
| standard_length (WAM and CaM) | length of fish from tip of mouth to end of body (not including caudal fin) | millimeters |
| WAM_MO2_mg_hr | lower tenth percentile whole animal metabolic rate | milligrams of oxygen per hour |
| Log10_WAM_mg_hr | log10 of WAM_MO2_mg_hr | milligrams of oxygen per hour |
| CaM_MR_pmol_s_[substrate] | substrate specific CaM for each substrate | picomoles of oxygen per second |
| Log_Log_WAM_Mass_residuals | residuals from log10(WAM_MO2_mg_hr)~log10(WAM_Mass) | mass corrected whole animal metabolic rate |
| [substrate]_CamMass_Residuals | residuals from CaM_MR_pmol_s_[substrate]~CaM_Mass | mass corrected cardiac metabolic rate |
| CTMax_WAM_Mass_Residuals | residuals from CTMax~WAM_Mass | mass corrected critical thermal maximum |
|  |  |  |
| Collection Site | Location |  |
| North Reference | 39°52'28.0"N 74°08'19.0"W |  |
| Thermal Effluent | 39°48'33.0"N 74°10'51.0"W |  |
| South Reference | 39°47'04.0"N 74°11'07.0"W |  |
|  |  |  |
| Additional Notes: For cardiac metabolic rate, a few individuals do not have heart mass data or cardiac metabolic rate for some substrates due to technical error. Additionally, due to a temperature probe calibration issue, 17 individuals also do not have critical thermal maximum data at a single acclimation temperature. Variation in sample size across traits is primarily due to post critical thermal maximum survival with a few individuals also removed from the experiment due to loss of body condition over time.  |  |  |


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1098/rsos.210440

## Record structure

Three Fish_ID values have differing labels between their temperature records: G2G3O5 (Sex), G2R5R6 (Population), and G3G4R5 (Population, Sex and Acclimation_Order). The source labels are retained as recorded.
