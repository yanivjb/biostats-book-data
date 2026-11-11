# Evolving with neighbours

**Paper:** Westley, J., García, F. C., Warfield, R., & Yvon-Durocher, G. (2024). The community background alters the evolution of thermal performance. Evolution Letters, 8(4), 505-513. https://doi.org/10.1093/evlett/qrae007

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.vq83bk41b

This README describes the teaching files in `westley_etal2024`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Westley_2024_project.csv` | 33 rows; 4 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Westley_2024_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 33 study-unit rows. 33 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Does community history change the relationship between selection temperature and growth?

## Collection and biological context

Five microbial taxa were propagated alone or in communities across eight selection temperatures for roughly 110 generations. Growth curves were then measured across assay temperatures. The supplied table contains fitted growth parameters, taxon labels, selection temperature, treatment and lineage identifiers.

Growth rate is measured at a common 20 degrees C assay temperature. T1 is monoculture evolution and T2 community evolution; selection temperature describes evolutionary history.

## Preparation and sampling unit

OTU2 only at a common 20 C assay. community T1 = monoculture evolution, T2 = community evolution. Each retained ID identifies one evolved lineage; selection_temperature records its evolutionary temperature. Missing/extinct lineages cannot be recovered by this preparation.

Only OTU2 at an assay temperature of 20 C is included. Do not reinterpret selection_temperature as assay temperature.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| growth | Fitted growth-rate parameter r at a common 20 C assay, in source rate units. |
| selection_temperature | Temperature during evolution, degrees C; distinct from the common assay temperature. |
| community | Evolutionary history: T1 = monoculture; T2 = community. Observed categories: T1, T2. Use as a factor. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

One prespecified Pseudomonas taxon and one assay temperature. Each Id retains its lineage replicate. Missing/extinct lineages can bias the surviving comparison. Check the straight-line selection-temperature assumption.

33 surviving OTU2 lineages at a common 20-C assay. Selection history may affect which lineages survive to measurement.

## Sources

Paper: https://doi.org/10.1093/evlett/qrae007

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.vq83bk41b

Prepared from final_data.csv. Preparation choices are described above. No model results or solution code are included.
