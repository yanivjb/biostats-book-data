# Reward and memory

**Paper:** Sukumaran, P., Kazanina, N., & Houghton, C. (2023). Reward conditioning may not have an effect on category-specific memory. Scientific Reports, 13(1), 22297. https://doi.org/10.1038/s41598-023-48874-z

**Original data:** https://github.com/prisukumaran23/adaptiveMemoryReplication

This README describes the teaching files in `sukumaran_etal2023`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Sukumaran_2023_project.csv` | 120 rows; 6 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Sukumaran_2023_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 120 study-unit rows. 120 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Do age and recognition of earlier material relate to reward-associated memory advantages?

## Understanding this comparison

Hit rate is the proportion of previously seen images recognised. A higher hit rate can reflect stronger memory or a greater willingness to answer “seen before”. Unlike a sensitivity measure such as d-prime, it does not account for false alarms (new images called old), so discuss this ambiguity. The prepared reward_advantage is high-minus-low reward hit rate, in percentage points. earlier_recognition concerns images encoded before reward conditioning, but recognition was tested after the whole experiment. It is therefore not a baseline assessment taken before reward and may itself be affected by the experiment. Use it to describe individual differences, and discuss why these associations do not establish causation.

## Collection and biological context

In Experiment 1a, 120 people encoded animal and object pictures before, during and after reward conditioning, then completed a recognition test. The trial CSV records old and new images, category assignments, age and recognition responses. The analysis below uses previously seen images encoded before or after conditioning.

The response is the high-minus-low reward hit-rate difference, in percentage points, for previously seen images encoded after conditioning. Earlier recognition is hit rate for material encoded before conditioning.

## Preparation and sampling unit

Experiment 1a only. Rates use previously seen (old_img) items. high_reward_hit_rate and low_reward_hit_rate concern phase 3; reward_advantage = 100 times their difference, in percentage points. earlier_recognition is the phase-1 hit rate. Earlier refers to encoding before conditioning; recognition was tested later, so it is not a pre-randomisation assessment. These are hit rates, not d-prime; response bias may matter.

This hit-rate contrast is not d-prime. Reward phases were within person; there is now one row per participant.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| high_reward_hit_rate | Proportion of previously seen phase-3 high-reward images recognised, 0–1. |
| low_reward_hit_rate | Proportion of previously seen phase-3 low-reward images recognised, 0–1. |
| reward_advantage | 100 × (high_reward_hit_rate − low_reward_hit_rate), percentage points. |
| age | Participant age, years. |
| earlier_recognition | Hit rate for images encoded in phase 1, 0–1; recognition was tested after the experiment. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

All measurements come from x1a_Regression.csv, summarised to 120 people. Hit rate is not d-prime and can reflect response criterion as well as memory. Earlier material was tested after the whole experiment, so its recognition is not a pre-randomisation covariate and may itself be affected by reward. This is a descriptive individual-differences question, not a causal age or mediation model.

120 participant hit-rate contrasts. This is a reward-memory question, but hit rate also reflects response bias and earlier-material recognition is not a pre-randomisation measure.

## Sources

Paper: https://doi.org/10.1038/s41598-023-48874-z

Original data: https://github.com/prisukumaran23/adaptiveMemoryReplication

Prepared from x1a_Regression.csv. Preparation choices are described above. No model results or solution code are included.
