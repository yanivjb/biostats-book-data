# Diabetic kidney disease — data

## Files

| File | Contents |
|---|---|
| `Khurana_2026_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

96 rows. The paper’s discovery cohort contains 101 participants with type 1 diabetes and 20 non-diabetic controls. Participants came from a larger Danish cohort; the diabetes subset had long disease duration and was sampled across kidney-risk categories. The small sample-information table contains clinical measurements. The large methylation count matrix is not needed for this question.

## Preparation of this CSV

Only T1D records with an observed positive AER were retained, leaving 96 records. AER is albumin excretion in mg/24 h; log_albumin is its natural logarithm. HbA1c and systolic blood pressure were renamed without recalculation.

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


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.2337/db26-0015

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.69p8cz9h5
