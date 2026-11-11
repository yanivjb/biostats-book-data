# Everyday light and sleep

**Paper:** Didikoglu, A., Mohammadian, N., Johnson, S., van Tongeren, M., Wright, P., Casson, A. J., Brown, T. M., & Lucas, R. J. (2023). Associations between light exposure and sleep timing and sleepiness while awake in a sample of UK adults in everyday life. Proceedings of the National Academy of Sciences, 120(42), e2301608120. https://doi.org/10.1073/pnas.2301608120

**Original data:** https://doi.org/10.48420/23786238

This README describes the teaching files in `didikoglu_etal2023`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Didikoglu_2023_project.csv` | 59 rows; 4 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Didikoglu_2023_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 59 study-unit rows. 58 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Do chronotype and habitual caffeine use relate to perceived sleep quality?

## Collection and biological context

Fifty-nine participants supplied baseline questionnaires and repeated sleep diaries during a field study of light exposure and sleep. The sleep file contains 478 diary records, with sleep timing, duration and previous-day habits. The baseline file contains one record per participant.

Higher PSQI indicates worse self-reported sleep quality. MCTQ corrected free-day midsleep measures later chronotype in hours; caffeine is habitual daily intake in the recorded units.

## Preparation and sampling unit

Baseline questionnaire only; no diary or logger join is needed. sleep_quality = PSQI (higher means worse), chronotype = corrected free-day midsleep (hours), caffeine = source daily caffeine-unit variable. Missing baseline fields remain NA.



Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| sleep_quality | Pittsburgh Sleep Quality Index total, 0–21; higher = worse perceived sleep quality. |
| chronotype | Corrected free-day midsleep (MCTQ MSFsc), hours; higher = later chronotype. |
| caffeine | Reported general daily caffeine intake in the source’s questionnaire units; NOT mg. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

59 baseline records; only the baseline CSV is used, avoiding diary aggregation or raw logger processing. Caffeine is observational and may be a response to poor sleep. Age is categorical in this file, not exact numeric age.

58 complete baseline questionnaires; sleep quality is bounded/self-reported and chronotype/caffeine are observational.

## Sources

Paper: https://doi.org/10.1073/pnas.2301608120

Original data: https://doi.org/10.48420/23786238

Prepared from Didikoglu_et_al_2023_PNAS_baseline.csv. Preparation choices are described above. No model results or solution code are included.
