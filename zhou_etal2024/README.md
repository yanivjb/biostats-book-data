# Functional_traits.csv

**Paper:** Zhou et al. 2024. Balancing the nutrient needs: Optimising growth in Malus sieversii seedlings. Plant Cell & Environment  
https://pubmed.ncbi.nlm.nih.gov/39188105/

**Data:** https://doi.org/10.5061/dryad.brv15dvj0

This folder contains `Functional_traits.csv`, made from `Functional_traits.xlsx` in the original deposit. Only the file format changed (Excel to CSV, so it loads with `read_csv()`); the values are the authors'. Please cite both the paper and the dataset (see CITATION.md).

_Below: the authors' README (README.md), NOT trimmed automatically - edit by hand_

---

# Balancing the nutrient needs: Optimizing growth in Malus sieversii seedlings through tailored nitrogen and phosphorus effects

[https://doi.org/10.5061/dryad.brv15dvj0](https://doi.org/10.5061/dryad.brv15dvj0)

All data in this dataset were obtained from field measurements in the field through in situ experiments.

The hydraulic trait and gas exchange data for the NxP4 addition were not included in this study. The notation "n/a or null" is used in the dataset to indicate the portions where data is missing.

## Description of the data and file structure

The nutrient addition patterns that emerged from the data are specifically described as follows：

| Treatments | N (g m-2 yr-1) | P (g m-2 yr-1) | Nutrient Description |
| :--------- | :------------- | :------------- | :------------------- |
| CK         | 0              | 0              | Control group        |
| N10        | 10             | 0              | Low N addition       |
| N20        | 20             | 0              | Medium N addition    |
| N40        | 40             | 0              | High N addition      |
| P2         | 0              | 2              | Low P addition       |
| P4         | 0              | 4              | Medium P addition    |
| P8         | 0              | 8              | High P addition      |
| N20P2      | 20             | 2              | Medium N and low P   |

The terms and their meanings in the dataset are as follows：

| Traits                                                    | Abbreviation | Units            |
| :-------------------------------------------------------- | :----------- | :--------------- |
| **Gas exchange parameters**                               |              |                  |
| Net photosynthetic rate                                   | Pn           | μmol m⁻² s⁻¹     |
| Stomatal conductance                                      | Gs           | mol m⁻² s⁻¹      |
| Transpiration rate.                                       | Tr           | mol m⁻² s⁻¹      |
| Intrinsic water use efficiency.                           | WUE          | none             |
| **Hydraulic traits**                                      |              |                  |
| Predown water potential                                   | ΨPd          | MPa              |
| Midday water potential                                    | ΨM           | MPa              |
| Diurnal water potential change                            | ∆Ψ           | MPa              |
| Specific hydraulic conductivity (wood area normalization) | Kw           | kg m-1 s-1 Mpa-1 |
| Specific hydraulic conductivity (leaf area normalization) | Kl           | kg m-1 s-1 Mpa-1 |
| Percentage loss of conductivity                           | PLC          | %                |
| Water potential at plant hydraulic conductivity loses 50% | P50          | Mpa              |
| **Others**                                                |              |                  |
| Wood density                                              | WD           | g cm-3           |
| Specific leaf area.                                       | SLA          | g cm-2           |

## Code/Software

All the data used were analyzed by R4.2.2. Vulnerability curves were fitted and plotted using the R package ‘fitplc’ . The gas exchange parameters, hydraulic traits, specific leaf area, wood density and other phenotypic and physiological parameters of *M. sieversii* under different fertilization treatments were compared by one-way ANOVA and Turkey HSD method. We used Pearson correlation to analyze the coordination among hydraulic safety, hydraulic efficiency, gas exchange parameters and other physiological characteristics. The structural equation model was constructed using the ‘piecewiseSEM’ package in R, while the flowchart was created using the ‘ggalluvial’ package in R.
