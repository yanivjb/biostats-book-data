# data_PESA.csv

**Paper:** Santema et al. 2023. Sexual selection for extreme physical performance in a polygynous bird is associated with exceptional sex differences in oxygen carrying capacity. Biology Letters  
https://doi.org/10.1098/rsbl.2023.0391

**Data:** https://doi.org/10.5061/dryad.pzgmsbcss

This folder contains `data_PESA.csv`, made from `data_PESA.xlsx` in the original deposit. Only the file format changed (Excel to CSV, so it loads with `read_csv()`); the values are the authors'. Please cite both the paper and the dataset (see CITATION.md).

_Below: the authors' README_

---
### Description of data files

data\_PESA.csv (contains hematocrit values of individual pectoral sandpipers)

ID - unique identity for each individual
date\_ - date of sample collection (NA=no data)
year\_ - year of sample collection (NA=no data)
dayofyear\_ - day of year of sample collection (1 = January 1st, NA=no data)
hema - hematocrit value (%)
tarsus - tarsus length (in mm, NA=no data)
weight - body mass (in g, NA=no data)
cond - body condition (residuals of weight over tarsus, NA=no data)
sex - sex(1=male, 2=female)
lattitude - lattitude (degrees°, NA=no data)
longitude - longitude (degrees°, NA=no data)
breed - factor indicating whether an individual bred at the study site (0=no, 1=yes)
date\_cent - mean-centered date of sample collection (NA=no data)
tarsus\_cent - mean-centered tarsus length (in mm, NA=no data)
weight\_cent - mean-centered body mass (in g, NA=no data)
cond\_cent - mean-centered body condition (residuals of weight over tarsus, NA=no data)
