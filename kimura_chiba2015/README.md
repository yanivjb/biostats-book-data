# Snail love darts and sperm transfer

**Paper:** Kimura, K., & Chiba, S. (2015). The direct cost of traumatic secretion transfer in hermaphroditic land snails: individuals stabbed with a love dart decrease lifetime fecundity. Proceedings of the Royal Society B: Biological Sciences, 282(1804), 20143063. https://doi.org/10.1098/rspb.2014.3063

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.qg258

This README describes the teaching files in `kimura_chiba2015`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Kimura_2015_project.csv` | 42 rows; 4 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Kimura_2015_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 42 study-unit rows. 42 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Does sperm receipt depend on partner mating status beyond snail body size?

## Collection and biological context

The paper contains several experiments. For this project, start with the sperm-mass assay. Focal virgin snails were paired with virgin or previously mated partners; only previously mated partners had developed a dart. Sperm masses donated and received were extracted after either the first or fourth mating, dried and weighed. These are different assay endpoints, not four repeated measurements of every animal.

Sperm-mass SMW is the authors’ dry-mass measure. BS is their shell-volume proxy, not shell length. Partner labels indicate the source of received sperm.

## Preparation and sampling unit

First mating (MO = 1st), received sperm only (STC from virgin/from nonvirgin): 42 distinct animal IDs. body_size is the source BS, already natural-log shell-volume proxy; do not log it again.



Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| sperm_mass | Received sperm-mass dry weight, source SMW (mg). |
| body_size | Source BS: natural log of shell-volume proxy. Do NOT log again. |
| partner | Source of received sperm: from virgin or from nonvirgin; categorical. Observed categories: from nonvirgin, from virgin. Use as a factor. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Only the first-mating receipt assay is used: 42 distinct animals. Do not mix received and donated sperm or treat terminal fourth-mating dissections as repeated observations of these same animals.

42 animals in the first receipt assay; received and donated sperm are different endpoints.

## Sources

Paper: https://doi.org/10.1098/rspb.2014.3063

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.qg258

Prepared from sperm.mass_KKSC2015PRSB__Sheet1.csv. Preparation choices are described above. No model results or solution code are included.
