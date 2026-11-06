# data_comp.csv

**Paper:** Santema et al. 2023. Sexual selection for extreme physical performance in a polygynous bird is associated with exceptional sex differences in oxygen carrying capacity. Biology Letters  
https://doi.org/10.1098/rsbl.2023.0391

**Data:** https://doi.org/10.5061/dryad.pzgmsbcss

This folder contains `data_comp.csv`, made from `data_comp.xlsx` in the original deposit. Only the file format changed (Excel to CSV, so it loads with `read_csv()`); the values are the authors'. Please cite both the paper and the dataset (see CITATION.md).

_Below: the authors' README (README.md), cut by hand to the section on this file_

---

### Description of data file

data_comp.xlsx (contains average hematocrit values of groups or birds)

scinam - scientific species name
hema\_m - hematocrit value of the male (%)
hema\_f - hematocrit value of the female (%)
delta - difference in hematorcit between male and female (in percentage point)
samplesize\_m - number of individuals on which hematocrit estimate for male is based
samplesize\_f - number of individuals on which hematocrit estimate for female is based
source - source of the data

_Note: the authors' README lists `hema_m` and `samplesize_m` twice; the second of each is the female column, named `hema_f` and `samplesize_f` in the file._
