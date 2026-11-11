# Woodlice facing city temperatures — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 20 rows. One row per colony with separate heat- and cold-tolerance means, animal counts, mean ages and masses, habitat, source site and rearing temperature. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers collected parents from urban and rural sites around Cleveland in 2018 and reared their offspring at daytime temperatures of 21°C or 29°C, with nights 5°C cooler and high humidity in both treatments. Offspring remained in shared containers until testing. The source animal table contains 322 animals from 20 colonies representing 11 source sites, a subset of the broader collection. Each animal underwent either a heat-limit or cold-limit test. Colony IDs identify animals reared together; animal numbers are reused within colonies.

## Prepared tables

One row per colony, retaining source site, habitat, rearing treatment (degrees C) and isa. _ctmax and _ctmin identify separate groups of heat-tested and cold-tested animals. mean_tolerance_C is the arithmetic mean endpoint in degrees C, animals counts source rows, measured_tolerance counts observed endpoints, mean_age_days is age in days, and mean_initial_weight_g is initial mass in grams. Means omit missing values; all-missing means are NA. Source animal records remain in original_data.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

isopod_thermal tolerance


This dataset contains 14 columns, including "colonyID", "individual", "isa", "site", "thermal.tolerance.trait", "thermal.tolerance", "tester", "heat.block", "date.tt", "time.of.day", "age.days", "initial.weight", "habitat", and "treatment". Each row of the dataset represents the response of an individual isopod. colonyID – a unique but arbitrary alpha-numeric identifier for each group of isopods reared together in the lab (i.e., a replicate); multiple individual isopods were tested from the same replicate. isa - a continuous numerical value describing the amount of impervious surface area in a given collection site at a 1km resolution based on the Elvidge et al. 2007 dataset. site - a shorthand name given to the collection site from which the F1 isopod's parental generation were collected in the field. thermal.tolerance.trait – a categorical variable describing whether the critical thermal minimum (ctmin) or critical thermal maximum (ctmax) was assessed on the individual isopod. thermal.tolerance – a continuous numeric value describing either the ctmax or ctmin. Values are presented in units of degrees Celsius. tester - initials denoting the person who conducted the thermal tolerance test for each individual isopod. heat.block - denotes which of the two heat blocks (of the same model and specification) were used in conducting the thermal tolerance test for each individual isopod. date.tt – the date (month/day/year) that the thermal tolerance assessment was conducted. time.of.day - the time of day (measured on a 24-hour clock) at which the thermal tolerance tests were conducted. age.days - the number of days an individual isopod spent in a temperature rearing treatment, that is, the number of days between said isopod's birth and thermal tolerance trial. initial.weight - mass in g of each individual isopod just prior to thermal tolerance trials. habitat - a categorical variable denoting whether the individual F1 isopod's parents derived from an urban or rural field collection site. treatment - a categorical variable denoting whether an individual isopod was reared at a 21 or 29-degree temperature rearing treatment. Values are presented in units of degrees Celsius


isopod_desiccation_tolerance


This dataset contains 15 columns, including "colonyID", "individual", "isa", "site", "mins.dead", "tester", "desiccator", "date", "died", "age.days", "time.of.day", "initial.weight", "habitat", "habitat.n", and "treatment". Each row of the dataset represents the response of an individual isopod. colonyID – a unique but arbitrary alpha-numeric identifier for each group of isopods reared together in the lab (i.e., a replicate); multiple individual isopods were tested from the same replicate. isa - a continuous numerical value describing the amount of impervious surface area in a given collection site at a 1km resolution based on the Elvidge et al. 2007 dataset. site - a shorthand name given to the collection site from which the F1 isopod's parental generation were collected in the field. mins.dead – a continuous numeric value describing the amount of time (in minutes) it took an individual isopod to reach its desiccation tolerance endpoint under low humidity conditions. tester - initials denoting the person who conducted the desiccation tolerance test for each individual isopod. desiccator - denotes which of the two desiccators (of the same model and specification) were used in conducting the desiccation tolerance test for each individual isopod. date – the date (month/day/year) that the desiccation tolerance assessment was conducted. died - the date the desiccation tolerance trial was conducted for a given isopod. age.days - the number of days an individual isopod spent in a temperature rearing treatment, that is, the number of days between said isopod's birth and desiccation tolerance trial. time.of.day - the time of day (measured on a 24-hour clock) at which the desiccation tolerance tests were conducted. initial.weight - mass in g of each individual isopod just prior to deisccation tolerance trials. habitat - a categorical variable denoting whether the individual F1 isopod's parents derived from an urban or rural field collection site. habitat.n - a categorical variable with "0" representing the rural habitat and "1" representing the urban habitat. treatment - a categorical variable denoting whether an individual isopod was reared at a 21 or 29-degree temperature rearing treatment. Values are presented in units of degrees Celsius


combined_age_body_mass


This dataset contains 5 columns, including "colonyID", "age.days", "initial.weight", "habitat", and "treatment". Each row of the dataset represents the response of an individual isopod. colonyID – a unique but arbitrary alpha-numeric identifier for each group of isopods reared together in the lab (i.e., a replicate); multiple individual isopods were tested from the same replicate. age.days - the number of days an individual isopod spent in a temperature rearing treatment, that is, the number of days between said isopod's birth and its tolerance trial. initial.weight - mass in g of each individual isopod just prior to tolerance trials. habitat - a categorical variable denoting whether the individual F1 isopod's parents derived from an urban or rural field collection site. treatment - a categorical variable denoting whether an individual isopod was reared at a 21 or 29-degree temperature rearing treatment. Values are presented in units of degrees Celsius

## Sources

**Paper:** Yilmaz, A. R., Diamond, S. E., & Martin, R. A. (2021). Evidence for the evolution of thermal tolerance, but not desiccation tolerance, in response to hotter, drier city conditions in a cosmopolitan, terrestrial isopod. Evolutionary Applications, 14(1), 12-23. https://doi.org/10.1111/eva.13052

**Original data:** Yilmaz, A. R., Diamond, S., & Martin, R. (2020). Data from: Evidence for the evolution of thermal tolerance but not desiccation tolerance in response to hotter, drier city conditions in a cosmopolitan, terrestrial isopod (Version 1) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.R4XGXD297
