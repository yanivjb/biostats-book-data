# Brehm_etal2019_wing_length.csv

**Paper:** Brehm et al. 2019. Moth body size increases with elevation along a complete tropical elevational gradient for two hyperdiverse clades. Ecography  
https://doi.org/10.1111/ecog.03917

**Data:** https://doi.org/10.5061/dryad.60jv067

This folder contains `Brehm_etal2019_wing_length.csv`, made from sheets "All-M-geo", "All-F-geo", "ALL-M-ARC" and "All-F-ARC" of `Appendix_Raw_Winglength.xlsx` in the original deposit. Only the file format changed (Excel to CSV, so it loads with `read_csv()`); the values are the authors'. The authors kept the specimens on four sheets (male and female geometrid moths, male and female tiger moths, Arctiinae). Here they are stacked into one table with two new columns, `group` (`Geometridae` or `Arctiinae`) and `sex` (`m` or `f`). Columns: `ID` specimen ID; `specimen_number` the authors' second specimen number (not given for male geometrids); `species_number` the authors' species code, numbered separately within each group; `FWL` forewing length (mm); `wing_measure` whether FWL was measured on the specimen or estimated; `Site` collecting site; `Elevation` site elevation (m); `Date` collecting date. The other sheets in the original file (cross-tabulations and per-species averages) are not included. One specimen (ID 19522, a female geometrid at 2000 m) has `Site` recorded as "Rafael Refugio" instead of a site number, so `read_csv()` will warn and turn it into NA unless you read that column as text: `read_csv(path, col_types = cols(Site = col_character()))`. Please cite both the paper and the dataset (see CITATION.md).

_Below: usage notes from the repository page (deposit has no README file), cut to the part about this file_

---

**Appendix_Raw_Winglength**: This file contains the raw data for fore wing lengths (FWL) of all Arctiinae and Geometridae moths in the study.

_The deposit has no README and no column descriptions; see the paper's methods for how wing length was measured._
