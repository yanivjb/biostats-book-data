# Red versus green carnivorous plants

**Paper:** Martin-Eberhardt, S. A., Weber, M. G., & Gilbert, K. J. (2025). Anthocyanin Impacts Multiple Plant-Insect Interactions in a Carnivorous Plant. The American Naturalist, 205(5), 502-515. https://doi.org/10.1086/735010

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.8w9ghx3vp

This README describes the teaching files in `martineberhardt_etal2025`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Martin-Eberhardt_2025_project.csv` | 75 rows; 11 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Martin-Eberhardt_2025_project.csv**. One CSV is sufficient; no reshape or join is needed.

**Motivating question:** Do red pitchers capture more prey than their green neighbours after allowing for height and damage differences?

## Understanding this comparison

We summarise the comparison we care about as the red-minus-green difference within each matched pair. This uses the same logic as a paired t-test: analyse the differences, with one observation per pair. A multiple linear model extends that idea by asking whether differences in height and perforation help explain variation in the prey-capture difference. Both raw prey-mass differences and a prepared log(1 + mass in mg) contrast are supplied; explain the scale you use.

## Data collection

Researchers paired 75 green pitcher plants with nearby red plants in one Michigan population. Newly emerged leaves were marked and later collected with their contents. Leaf height, captured prey, inquiline larvae and leaf damage were recorded; feeding assays and reproductive measurements supplied additional outcomes. CombinedDataset.csv brings several plant-level measurements together.

## Preparation and sampling unit

One row per matched pair. The red and green source values remain side by side. All differences are red minus green. There are 75 pairs and 68 complete for prey mass, height and perforation contrasts. NA prey mass means a pitcher without fluid; it is not zero prey. The smaller project CSV retains the original measurements relevant to this question; the original long table is available through the source link below.

## Key variables

| Column | Meaning |
|---|---|
| pairID | Matched-pair ID; the two plants share a microsite. |
| preyMass_red / preyMass_green | Captured prey mass in the red / green pitcher, g. |
| height_red / height_green | Experimental leaf height, cm. |
| perforation_red / perforation_green | 0 = intact below water line, 1 = punctured below water line (excluding tears). |
| prey_mass_difference_g | Red minus green prey mass, g; positive favours red. |
| height_difference_cm | Red minus green height, cm. |
| perforation_difference | Red minus green perforation: +1 = only red punctured; -1 = only green punctured; 0 = same status. |
| log1p_prey_mass_difference | ln(1 + 1000 × preyMass_red) minus ln(1 + 1000 × preyMass_green). The masses are first expressed in mg. This optional prepared scale accommodates zeros and skew. |

The added 1 mg is an explicit analytical shift, not a measured detection limit. The logged contrast is a ratio of shifted masses, not the log of the raw mass difference or a literal raw-mass ratio. The raw difference is also supplied. Discuss scale choice with the instructor and inspect residuals. Do not add the raw red or green component as a predictor of its own difference without considering mathematical coupling. An intercept refers to the red–green contrast at zero predictor differences; it is central to a colour comparison.

## Planning an analysis

Choose a biological response and at least two substantive explanatory variables. Make predictions before fitting a model. Consider an interaction only when it has a biological interpretation. Check group sizes, missingness and residuals; do not treat IDs or repeated measurements as new replicates.

This retains the colour question without treating neighbouring plants as independent. The 1-mg shift is a stated transformation, not a detection limit; its choice affects ratios near zero. Height and damage are observational covariates, and damage may itself result from colour-related interactions. Morph was not randomly assigned.

## Sources

Paper: https://doi.org/10.1086/735010

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.8w9ghx3vp

This folder contains the prepared classroom version. Original files and documentation are available from the source links above.
