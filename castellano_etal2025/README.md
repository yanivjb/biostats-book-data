# Stress, anxiety and pain threshold — data

## Files

| File | Contents |
|---|---|
| `Castellano_2025_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

41 rows. Forty-one healthy young volunteers supplied questionnaire scores and underwent thermal pain-threshold testing. The study also recorded EEG, but the participant-level psychological and pain table supports a separate question without analysing brain signals.

## Preparation of this CSV

One record per participant, with thermal pain threshold, PSS_TOT and STAI_TOT renamed. No questionnaire item scores were newly calculated.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Participant identifier. |
| threshold | Thermal pain threshold, degrees C; temperature reported as painful. |
| stress | Perceived Stress Scale total (PSS_TOT); higher = greater reported stress. |
| anxiety | State-Trait Anxiety Inventory total (STAI_TOT); higher = greater reported anxiety. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1038/s41598-025-29515-z

Original data: https://osf.io/9423j/
