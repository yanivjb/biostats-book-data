# Short sleep and recognising unfamiliar faces — data

## Files

| File | Contents |
|---|---|
| `Beattie_2016_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

50 rows. Experiment 2 used sleep diaries for the three nights before a face-matching task. Sixty-two volunteers participated initially; 50 met the study’s sleep-pattern and health criteria. The sample includes short sleepers and controls, defined from their existing sleep patterns rather than randomly assigned sleep restriction. The worksheet’s grouped-label row has been removed from the project CSV.

## Preparation of this CSV

Experiment 2 only. The grouped-label preamble was removed; the header now contains the column names. Accuracy is the supplied overall percent correct, with sleep-duration and KSS fields renamed.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Added participant row identifier. |
| accuracy | Overall face-task percent correct, 0–100. |
| sleep_hours | Average sleep duration, hours. |
| sleepiness | Karolinska Sleepiness Scale (KSS); higher = sleepier. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1098/rsos.160321

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.r620r
