# black_porgy_oxygen_consumption_measurement.csv

**Paper:** Hsieh et al. 2025. Estimation of lifelong metabolic rates in marine fish. Limnology and Oceanography Letters  
https://doi.org/10.1002/lol2.70009

**Data:** https://doi.org/10.5061/dryad.bnzs7h4jx

This folder contains only `black_porgy_oxygen_consumption_measurement.csv` from the original deposit (downloaded 2026-11-06, unmodified). Please cite both the paper and the dataset.

_Below: the authors' README (README.md), NOT trimmed automatically - edit by hand_

---

# Data from: Estimation of lifelong metabolic rates in marine fish: A combination of oxygen consumption measurements and δ13C metabolic proxy derived from vertebral structural carbonates

[https://doi.org/10.5061/dryad.bnzs7h4jx](https://doi.org/10.5061/dryad.bnzs7h4jx)

The laboratory-controlled experiment was conducted on black porgy, *Acanthopagrus schlegelii* for over a year. Fish were measured for oxygen consumption rate and stable carbon isotope metabolic proxy, and two measurements (oxygen consumption rate and stable isotope analysis) are provided separately as two CSV files.

## Description of the data and file structure

**black porgy_oxygen consumption measurement:**

The dataset includes two groups of black porgy in the experiment. The first group of 100 fish had 6–8 individuals randomly selected in the first three months to measure their resting metabolic rate (RMR) and determine the appropriate size for tagging in subsequent experiments. In the second group, 20 fish were microchipped (AVID, USA) at the age of 9 months on the basis of their size suitability for tagging determined from the first group’s data. Every oxygen consumption measurement was accompanied by the record of the fish's standard length, total length, body weight and water temperature.

| **Column name**                | **Description**                                                                                                                                                                                                | **Units**  | **Data format** | **Missing data code**                                                |
| :----------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :--------- | :-------------- | :------------------------------------------------------------------- |
| ID                             | Fish individual ID number                                                                                                                                                                                      | -          | Category        | -                                                                    |
| Group                          | The two experimental groups in the rearing. Group 1: 6-8 individuals were randomly selected in the first three months for oxygen consumption measurements. Group 2: eight fish with tags.                      | -          | Category        | -                                                                    |
| Weight                         | Fish weight when the individual was measured the oxygen consumption.                                                                                                                                           | g          | Number          | -                                                                    |
| Standard length                | Fish standard length when the individual was measured the oxygen consumption.                                                                                                                                  | cm         | Number          | -                                                                    |
| Total length                   | Fish total length when the individual was measured the oxygen consumption.                                                                                                                                     | cm         | Number          | -                                                                    |
| Temperature                    | Temperature records when the fish was measured the oxygen consumption rate                                                                                                                                     | °C         | Number          | -                                                                    |
| RMR                            | Resting metabolic rate. The oxygen consumption rate was measured while the fish was in a resting state.                                                                                                        | mg O2/h/kg | Number          | NA, the measurement of RMR was not successful during the experiment. |
| Log(temperature corrected RMR) | The resting metabolic rate was temperature-corrected following the core equation of the metabolic theory of ecology. The temperature-corrected RMR was expressed as the logarithm, specifically using base 10. | mg O2/h/kg | Number          | NA, the measurement of RMR was not successful during the experiment. |

**black porgy_stable isotope analysis:**

The fish samples were derived from the second group in the previous dataset The bone was sectioned for the signals at different life stages. First, the, section length of bone was used to reconstruct the fish length and body weight. Also, fish length was used to deduce the water temperature during the rearing because the fish was tagged. Each bone section was analysed with a stable carbon isotope value (d13C). The water DIC and food were also analysed with a stable carbon isotope value (DIC d13C and food d13C, respectively) with standard deviations of pooled samples. With the known 13C values of bone, DIC and food, the metabolic proxy (Cresp) was calculated.

| **Column name**         | **Description**                                                                     | **Units**  | **Data format** | **Missing data code**                                                  |
| :---------------------- | :---------------------------------------------------------------------------------- | :--------- | :-------------- | :--------------------------------------------------------------------- |
| ID                      | Fish individual ID number                                                           | -          | Category        | -                                                                      |
| Section number          | The order of sectioned vertebral centrum.                                           | -          | Number          | -                                                                      |
| Section length          | The percentage of section length compared to the total length of vertebral centrum. | %          | Number          | -                                                                      |
| Reconstructed length    | The fish total length was reconstructed by the vertebral section length.            | cm         | Number          | -                                                                      |
| Reconstructed weight    | The fish weight was reconstructed by fish length.                                   | kg         | Number          | -                                                                      |
| carbonate wt            | The weight percentage of structural carbonate in each vertebral section.            | %          | Number          | -                                                                      |
| d13C                    | Stable carbon isotope value of vertebral sections.                                  | ‰          | Number          | -                                                                      |
| d18O                    | Stable oxygen isotope value of vertebral sections.                                  | ‰          | Number          | NA, the isotope values are unreliable because of low signal intensity. |
| d13C stdev              | The standard deviation of stable carbon isotope values.                             | ‰          | Number          | -                                                                      |
| Cresp                   | The metabolic proxy was obtained by d13C values.                                    | -          | Number          | -                                                                      |
| Cresp stdev             | The standard deviation of metabolic proxy.                                          | -          | Number          | -                                                                      |
| Reconstructed MO2\_mean | The mean of oxygen consumption rate was reconstructed by the Cresp values.          | mg O2/h/kg | Number          | -                                                                      |
| Reconstructed MO2\_sd   | The standard deviation of reconstructed oxygen consumption rate.                    | mg O2/h/kg | Number          | -                                                                      |
| DIC d13C                | The mean stable carbon isotope value of water DIC                                   | ‰          | Number          | -                                                                      |
| DIC d13C stdev          | The standard deviation of stable carbon isotope value of water DIC                  | ‰          | Number          | -                                                                      |
| Food d13C               | The mean stable carbon isotope value of food                                        | ‰          | Number          | -                                                                      |
| Food d13C stdev         | The standard deviation of stable carbon isotope value of food                       | ‰          | Number          | -                                                                      |
| Temperature             | The mean temperature of rearing water                                               | °C         | Number          | -                                                                      |
| Temperature stdev       | The standard deviation of the temperature of rearing water                          | °C         | Number          | -                                                                      |

