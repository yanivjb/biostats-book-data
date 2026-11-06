# pupa.csv

**Paper:** Baranov et al. 2025. Impact of temperature and hypoxia on the size and survival of aquatic insects. Ecological Entomology  
https://doi.org/10.1111/een.13469

**Data:** https://doi.org/10.5061/dryad.8pk0p2p0x

This folder contains only `pupa.csv` from the original deposit (downloaded 2026-11-05, unmodified). Please cite both the paper and the dataset.

_Below: the authors' README (README.md), trimmed to the section on this file_

---

# Impact of temperature and hypoxia on the size and survival of aquatic insects

---

We have submitted our raw data (**pupa.csv**,**HC.csv**,**D_treatment_21744379.csv**,**E_treatment_21744382.csv**,**F_tratment_21744381.csv**,**Climate_chamber_control_21744378.csv**, **c_ox.csv**), R project(**hypoxia_temp.Rproj**), R script (**chiro_code1.R**).

## Descriptions

### **pupa.csv**

Raw measurements of the pupal exuviae of *Ch. riparius* derived from the photos at [https://doi.org/10.5281/zenodo.14516968](https://zenodo.org/uploads/14516968) by measuring specimens in Fiji

* *index:* unique numeric index of each observation
* *Treatment*: Experimental treatment group (e.g., temperature and oxygen level combination) assigned to the sample.
* *Folder*: ID of the Folder containing treatment and the date of sampling
* *Area*: The measured area (in pixels or calibrated units) of the specimen from the image.
* *Mean*: The average grayscale pixel intensity within the measured area (used in image analysis).
* *Min*: Minimum pixel intensity detected in the measured area.
* *Max*: Maximum pixel intensity detected in the measured area.
* *Length*: The calibrated length measurement (in mm ) of the specimen, derived from image analysis.
* *Date*: R-date format converted date
