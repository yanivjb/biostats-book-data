# Human body odour and reproductive hormones

**Paper:** Lobmaier, J. S., Fischbacher, U., Wirthmüller, U., & Knoch, D. (2018). The scent of attractiveness: levels of reproductive hormones explain individual differences in women's body odour. Proceedings of the Royal Society B: Biological Sciences, 285(1886), 20181520. https://doi.org/10.1098/rspb.2018.1520

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.g5n1785

This README describes the teaching files in `lobmaier_etal2018`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Lobmaier_2018_project.csv` | 28 rows; 5 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Lobmaier_2018_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 28 study-unit rows. 28 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Are donor-average odour ratings related to oestradiol and progesterone?

## Collection and biological context

Women collected underarm odour on cotton pads over three nights around predicted ovulation, and supplied saliva for hormone measurements. Only the night closest to the luteinising-hormone peak was retained. After exclusions for timing and protocol compliance, 28 donors remained. Male volunteers rated the odours; the supplied table contains repeated donor–rater observations and identifies both people.

The response is the average rating among perceivable presentations for a donor. Hormone columns are the supplied base-10 logs, not freshly natural-logged values.

## Preparation and sampling unit

Only presentations marked perceivable (Not_perceivable = 0) contribute to the donor mean. Both pads are grouped using the woman’s donor ID without its pad suffix. estrogen and progesterone are the supplied base-10 hormone logs, not raw concentrations. ratings counts retained presentations.

Hormone values were measured near predicted ovulation; they are observational covariates.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| attractiveness | Mean attractiveness rating across retained perceivable presentations of this donor’s odour. |
| estrogen | Supplied base-10 log of donor oestradiol measurement (log_Donor_E), NOT raw hormone concentration. |
| progesterone | Supplied base-10 log of donor progesterone measurement (log_Donor_P), NOT raw hormone concentration. |
| ratings | Number of retained rating presentations contributing to this donor summary; not independent donors. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Both pads belong to one donor. Shared raters create dependence between donor means that aggregation does not fully remove; this simplified exploratory analysis is conditional on the particular rater panel. Excluding unperceivable odours changes the estimand.

Donor means still share a rater panel. Treat this as a panel-conditional exploratory analysis.

## Sources

Paper: https://doi.org/10.1098/rspb.2018.1520

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.g5n1785

Prepared from BodyOdour_Homrones_Data.csv. Preparation choices are described above. No model results or solution code are included.
