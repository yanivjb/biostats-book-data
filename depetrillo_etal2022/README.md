# Lemur cognitive control — data

## Files

| File | Contents |
|---|---|
| `De_Petrillo_2022_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

39 rows. Thirty-nine captive lemurs from four species completed a set of cognitive and behavioural tasks. The original task-interrelations file summarises each animal’s performance and gives its species and sex; the project CSV retains persistence, novel-object and species summaries. Repeated trials have already contributed to these animal-level summaries.

## Preparation of this CSV

The authors’ Persistence and NovelObject duration summaries are renamed. persistence_seconds retains the original duration; log_persistence = ln(1 + persistence_seconds). Species labels are retained.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source CodeID. |
| log_persistence | Natural log of (1 + persistence_seconds). |
| novel_time | Time near a novel object, seconds; a behavioural measure of response to novelty. |
| species | Species identity. Observed categories: Mongoose lemurs, Ring-tailed lemurs, Ruffed lemurs, Sifakas. |
| persistence_seconds | Time manipulating a puzzle box, seconds. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1177/09567976221082938

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.6hdr7sr2k
