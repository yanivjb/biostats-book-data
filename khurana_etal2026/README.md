# The biology of kidney injury in type 1 diabetes — data

## Files

| File | Contents |
|---|---|
| [Khurana_2026_project.csv](Khurana_2026_project.csv) | Ready-to-load CSV; 96 rows. Clinical records for 96 participants with type 1 diabetes, including albumin excretion, HbA1c and systolic blood pressure. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

The paper’s discovery cohort contains 101 participants with type 1 diabetes and 20 non-diabetic controls. Participants came from a larger Danish cohort; the diabetes subset had long disease duration and was sampled across kidney-risk categories. The small sample-information table contains clinical measurements. The project CSV contains 96 clinical records from participants with type 1 diabetes who had a recorded positive albumin-excretion measurement.

## Prepared tables

Only T1D records with an observed positive AER were retained, leaving 96 records. AER is albumin excretion in mg/24 h; log_albumin is its natural logarithm. HbA1c and systolic blood pressure were renamed without recalculation.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Sample_ID. |
| log_albumin | Natural log of albumin_excretion. |
| hba1c | Baseline glycated haemoglobin (HbA1c), source percentage. |
| pressure | Systolic blood pressure, mm Hg. |
| albumin_excretion | Source AER, albumin excretion rate (mg/24 h). |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Khurana, I., Hansen, T. W., Persson, F., Birkelund, S., Singh Ahluwalia, T., Maxwell, S., Zaki, R. A., Kaipananickal, H., Gill, S. S., Nazli, J., Theilade, S., Miguna, V. M., Tofte, N., Ottesen, E. C., Rossing, P., & El-Osta, A. (2026). Blood-Derived DNA Methylation Biomarkers Predict Diabetic Kidney Disease and Map to Epigenomic Remodeling in Renal Cells. Diabetes, db260015. https://doi.org/10.2337/db26-0015

**Original data:** Khurana, Ishant, El-Osta, Assam, & Rossing, Peter (2026). Data from: Blood-derived DNA methylation biomarkers predict diabetic kidney disease (Version 6) [Dataset]. Dryad. https://doi.org/10.5061/dryad.69p8cz9h5
