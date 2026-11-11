# Reward and recognition memory — data

## Files

| File | Contents |
|---|---|
| `Sukumaran_2023_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

120 rows. In Experiment 1a, 120 people encoded animal and object pictures before, during and after reward conditioning, then completed a recognition test. The trial CSV records old and new images, category assignments, age and recognition responses. The project CSV summarises recognition of previously seen images encoded before or after conditioning. Recognition was tested after all encoding phases.

## Preparation of this CSV

Experiment 1a, previously seen items (Stim_Type = old_img) only. earlier_recognition is mean Memory_Correct for Phase 1. high_reward_hit_rate and low_reward_hit_rate are mean Memory_Correct for Phase 3 in Reward_Category 1 and −1. reward_advantage = 100 × (high rate − low rate), in percentage points. Rates are not d-prime scores.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source UserID. |
| high_reward_hit_rate | Proportion of previously seen phase-3 high-reward images recognised, 0–1. |
| low_reward_hit_rate | Proportion of previously seen phase-3 low-reward images recognised, 0–1. |
| reward_advantage | 100 × (high_reward_hit_rate − low_reward_hit_rate), percentage points. |
| age | Participant age, years. |
| earlier_recognition | Hit rate for images encoded in phase 1, 0–1; recognition was tested after the experiment. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1038/s41598-023-48874-z

Original data: https://github.com/prisukumaran23/adaptiveMemoryReplication
