# Sleep spindles and overnight motor memory — data

## Files

| File | Contents |
|---|---|
| `Boutin_2024_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

20 rows. Healthy young adults learned a finger-tapping sequence, slept while EEG was recorded in an MRI scanner, and completed a later retention session. Screening, sleep requirements and recording-quality exclusions reduced the original 33 volunteers to 20 analysed participants. The NREM2 worksheet provides already processed participant-level spindle and performance summaries; no raw EEG analysis is needed.

## Preparation of this CSV

The NREM2 worksheet was retained without cross-sheet joins. id is an added row identifier, not a verified participant key for other worksheets. Performance change, spindle-train length and spindle density are the authors’ processed summaries.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Added row identifier for the NREM2 summary. |
| improvement | Motor-sequence performance change from delayed 15-minute test to 24-hour retest, percent. |
| train_length | Mean number of NREM2 sleep spindles per spindle train. |
| density | NREM2 sleep spindles per minute. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1098/rspb.2023.1408

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.nk98sf7xx
