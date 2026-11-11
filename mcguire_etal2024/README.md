# Co-creating poetry with AI

**Paper:** McGuire, J., De Cremer, D., & Van de Cruys, T. (2024). Establishing the importance of co-creation and self-efficacy in creative collaboration with artificial intelligence. Scientific Reports, 14(1), 18525. https://doi.org/10.1038/s41598-024-69423-2

**Original data:** https://osf.io/3jqga/

This README describes the teaching files in `mcguire_etal2024`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `McGuire_2024_project.csv` | 152 rows; 4 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **McGuire_2024_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 152 study-unit rows. 152 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Do poetry collaboration conditions differ in expert-rated creativity after considering age?

## Collection and biological context

Study 2 assigned 152 human participants to writing conditions involving different collaboration arrangements. The file contains one record per writer, demographic information, writing time, self-evaluations and expert judgments of the poem.

Expert ratings are averaged for each writer’s poem. Conditions distinguish unassisted writing, editing AI output and turn-taking co-creation.

## Preparation and sampling unit

Selected CSV is already close to one row per unit; filtering, renaming and a stated transformation are the main preparation steps.

Post-task self-efficacy was not added as a pre-treatment covariate.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| creativity | Mean expert creativity rating for the participant’s poem, source rating-scale units. |
| condition | Writing condition: Human, AI editor or AI co-creator; categorical. Observed categories: Human, AI editor, AI co-creator. Use as a factor. |
| age | Participant age, years. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

152 writers. Age is pre-task; post-task self-efficacy is deliberately excluded as a baseline covariate. Condition mapping follows the study’s group order and counts; confirm against analysis documentation if codes are relabelled.

152 writers. Three condition labels were checked against published group means. The residual tail makes small differences less secure than the broad group pattern.

## Sources

Paper: https://doi.org/10.1038/s41598-024-69423-2

Original data: https://osf.io/3jqga/

Prepared from CreativeCollabAI_Study2.csv. Preparation choices are described above. No model results or solution code are included.
