# Jones-et-al_Raw_Individual_Data.csv

**Paper:** Jones et al. 2024. Body mass, temperature, and pathogen intensity differentially affect critical thermal maxima in a solitary bee. Ecology and Evolution  
https://doi.org/10.1002/ece3.10945

**Data:** https://doi.org/10.5061/dryad.hhmgqnkp9

This folder contains only `Jones-et-al_Raw_Individual_Data.csv` from the original deposit (downloaded 2026-11-06, unmodified). Please cite both the paper and the dataset.

_Below: the authors' README (README.md), trimmed to the section on this file_

---

# Body mass, temperature, and pathogen intensity differentially affect critical thermal maxima and their population-level variation in a solitary bee

*Access the full article with contact information here*:

Jones, L. J., Miller, D. A., Schilder, R. J., López-Uribe, M. M. (2024). Body mass, temperature, and pathogen intensity differentially affect critical thermal maxima and their population-level variation in a solitary bee. *Ecology and Evolution*, *14*(2), e10945. <https://doi.org/10.1002/ECE3.10945>

*Raw data and R code are available here*: <https://doi.org/10.5061/dryad.hhmgqnkp9>

## General Information

The raw data presented in Jones et al. (2024) are included. This study aimed to understand what abiotic and biotic factors, such as temperature and pathogen intensity, influence heat tolerance and its variation among natural populations of the solitary bee *Xenoglossa pruinosa*. Data per individual *Xenoglossa pruinosa*, including date and location of collection, mass, CTmax, and parasite intensity, are included in file 'Jones-et-al_Raw_Individual_Data.csv'. Data summarized per collection site, including environmental data and bee data averages per sex at each site, are included in file 'Jones-et-al_Raw_Site_Data.csv'. Please review the methods (2.1-2.4) and extended methods (Appendix) sections in Jones et al. (2024) for information on data collection.

*Collection year*: 2019

*Collection sites*: 14 *Cucurbita* (e.g., pumpkin and squash) farms in Pennsylvania (USA)

*Study organism*: 220 female and 200 male squash bees (*Xenoglossa pruinosa*)

## Data&#x20;

#### Jones-et-al\_Raw\_Individual\_Data.csv

A. 	Sample ID - unique ID assigned to each individual.

B.	Species - species identification of that individual (identification provided by Laura J. Jones).

C.	Sex - sex of the individual.

D.	Collection_Date - date that the individual was collected from the field.

E.	Site - site ID (town) that the individual was collected from.

F.	Latitude - abbreviated latitude for the site that the individual was collected from.

G.	Longitude - abbreviated longitude for the site that the individual was collected from.

H.	Time_Chill_Coma_minutes - the amount of time (minutes) that the individual was kept in chill coma (i.e., on ice) during transport.

I.	Mass_Before_CTmax_mg - the mass of the individual collected before CTmax experiments were performed.

J.	Mass_After_CTmax_mg - the mass of the individual collected after CTmax experiments were performed.

K.	deltaMass_mg - the difference in mass before and after the CTmax experiment.

L.	CTmax_Celsius - the critical thermal maximum (CTmax) recorded for that individual using a ramping rate of + 0.25 °C/min.

M.	Time_to_CTmax_min - the total time that the individual was kept in the temperature ramping experiment before reaching their CTmax.

N.	28sReferenceGene_RawCT_Mean - the average cycle threshold (CT) between the three replicates for the quantification of the 28S reference gene for Apocrita for that individual.

O.	Trypanosome_RawCT_Mean - the average cycle threshold (CT) between the three replicates for the quantification of trypanosomes for that individual.

P.	Trypanosome_DeltaCT - the average CT for trypanosomes for the individual minus the average CT for the reference gene for the same individual.

Q.	Trypanosome_ddCT - the delta CT for trypanosomes for the individual minus the maximum delta CT calculated for trypanosomes (within this dataset).

R.	Trypanosome_2^-ddCT - the 2^(-ddCT for trypanosomes) for that individual.

S.	Trypanosome_log(2^-ddCT) - the log10(2^-ddCT for trypanosomes) for that individual.

T.	Trypanosome_RelativeIntensity_AdjustedforThreshold -  the relative quantification for trypanosomes within the cycle threshold of < 35, where any sample with a raw CT mean greater than 35 is considered negative (zero).

U.	Vairimorpha_apis_RawCT_Mean - the average cycle threshold (CT) between the three replicates for the quantification of *Vairimorpha apis* for that individual.

V.	Vairimorpha_apis_DeltaCT - the average CT for *Vairimorpha apis* for the individual minus the average CT for the reference gene for the same individual.

W.	Vairimorpha_apis_ddCT - the delta CT for *Vairimorpha apis* for the individual minus the maximum delta CT calculated for *Vairimorpha apis* (within this dataset).

X.	Vairimorpha_apis_2^-ddCT - the 2^(-ddCT for *Vairimorpha apis*) for that individual.

Y.	Vairimorpha_apis_log(2^-ddCT) - the log10(2^-ddCT for *Vairimorpha apis*) for that individual.

Z.	Vairimorpha_apis_RelativeIntensity_AdjustedforThreshold -  the relative quantification for *Vairimorpha apis* within the cycle threshold of < 35, where any sample with a raw CT mean greater than 35 is considered negative (zero).

AA.	Spiroplasma_apis_RawCT_Mean - the average cycle threshold (CT) between the three replicates for the quantification of *Spiroplasma apis* for that individual.

AB.	Spiroplasma_apis_DeltaCT  - the average CT for *Spiroplasma apis* for the individual minus the average CT for the reference gene for the same individual.

AC.	Spiroplasma_apis_ddCT - the delta CT for *Spiroplasma apis* for the individual minus the maximum delta CT calculated for *Spiroplasma apis* (within this dataset).

AD.	Spiroplasma_apis_2^-ddCT - the 2^(-ddCT for *Spiroplasma apis*) for that individual.

AE.	Spiroplasma_apis_log(2^-ddCT) - the log10(2^-ddCT for *Spiroplasma apis*) for that individual.

AF.	Spiroplasma_apis_RelativeIntensity_AdjustedforThreshold -  the relative quantification for *Spiroplasma apis* within the cycle threshold of < 35, where any sample with a raw CT mean greater than 35 is considered negative (zero).

\__________________________________\_

## Software and Packages

All analyses were conducted in R (v.4.1.2) and can be reviewed in file 'Jones-et-al_R_Code.R'. Detailed description of analysis and packages used can be reviewed in the methods (2.5) and extended methods (Appendix) sections in Jones et al. (2024).

##### Relevant Information for Analyses

We performed all analyses with and without two individuals (sample IDs epl0331 and epl0647) because these were considered in poor condition and outliers within the dataset. In Jones et al. (2024), we present the analyses that exclude these individuals.
