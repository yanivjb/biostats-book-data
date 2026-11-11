# Understanding out-group minds — data

## Files

| File | Contents |
|---|---|
| `Payne_2024_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

128 rows. Study 2 involved 128 participants making judgments about others’ views. The analysis file includes repeated judgments, group relationships, accuracy-related measures and questionnaire scores. Participants and target statements can both recur. Recruitment filled equal quotas of Democratic- and Republican-affiliated participants. Forty-three participants were excluded and replaced under preregistered response rules, including too few qualifying trials or never requesting additional information.

## Preparation of this CSV

Initial out-group judgments only. Trial error is abs(Prediction_T1_Numeric − Target_Statement_Ground_Truth_Numeric); mean_error averages it by participant. TAS and AQ scores are copied from the participant’s records; trials is the number of judgments contributing to the summary.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Participant_ID. |
| mean_error | Mean absolute out-group prediction error on a five-point belief scale; larger = less accurate. |
| emotion_score | Toronto Alexithymia Scale (TAS) score; greater difficulty identifying/describing emotions. |
| autistic_traits | Autism-Spectrum Quotient (AQ) score; self-reported traits, not a diagnosis. |
| trials | Number of initial out-group judgments contributing to the participant mean. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1038/s41598-024-67311-3

Original data: https://osf.io/nfamd/
