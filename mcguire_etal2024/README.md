# Co-creating poetry with AI — data

## Files

| File | Contents |
|---|---|
| `McGuire_2024_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

152 rows. In Study 2, 152 participants recruited through Prolific were randomly assigned to three writing conditions. The file contains one record per writer, demographic information, writing time, self-evaluations and expert judgments of the poem.

## Preparation of this CSV

One writer record per row. expert_creativity is retained as creativity; source condition codes 1, 2 and 3 are relabelled Human, AI editor and AI co-creator. Age is retained.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Added writer row identifier. |
| creativity | Mean expert creativity rating for the participant’s poem, source rating-scale units. |
| condition | Writing condition: Human, AI editor or AI co-creator; categorical. Observed categories: Human, AI editor, AI co-creator. |
| age | Participant age, years. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1038/s41598-024-69423-2

Original data: https://osf.io/3jqga/
