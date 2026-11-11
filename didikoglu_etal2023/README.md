# Chronotype, caffeine and sleep quality — data

## Files

| File | Contents |
|---|---|
| `Didikoglu_2023_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

59 rows. Fifty-nine participants supplied baseline questionnaires and repeated sleep diaries during a field study of light exposure and sleep. The sleep file contains 478 diary records, with sleep timing, duration and previous-day habits. The baseline file contains one record per participant. The project CSV contains the baseline questionnaire records.

## Preparation of this CSV

Only the baseline questionnaire table is used. PSQI, corrected free-day midsleep and the daily caffeine-unit field are renamed. No diary averaging or light-logger processing was performed.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source baseline participant id. |
| sleep_quality | Pittsburgh Sleep Quality Index total, 0–21; higher = worse perceived sleep quality. |
| chronotype | Corrected free-day midsleep (MCTQ MSFsc), hours; higher = later chronotype. |
| caffeine | Reported general daily caffeine intake in the source’s questionnaire units; NOT mg. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1073/pnas.2301608120

Original data: https://doi.org/10.48420/23786238
