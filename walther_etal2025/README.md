# A fungus inside a leaf and the insects outside it — data

## Files

| File | Contents |
|---|---|
| [ready_walther_et_al_2024fig2data.csv](ready_walther_et_al_2024fig2data.csv) | Ready-to-load CSV; 80 rows. Concentrations of five salicinoids in leaves from the 16 trees in the endophyte–herbivory experiment. |
| [ready_walther_et_al_2024fig3data.csv](ready_walther_et_al_2024fig3data.csv) | Ready-to-load CSV; 64 rows. Concentrations of four other phenolic compounds from the same experiment, with the measurement unit recorded for each compound. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers grew genetically identical black poplar cuttings under controlled conditions. Sixteen young trees received combinations of fungal inoculation or mock treatment and herbivory or no herbivory, with four trees per combination. Fifteen days after inoculation, herbivory trees received caterpillars for 48 hours before leaves were collected for chemical analysis. The chemistry files contain five salicinoids and four other phenolics measured from these trees.

## Prepared tables

All source rows and columns are retained. Only CSV formatting and the missing-value marker (NA) are standardised; no biological grouping, exclusions or transformations are applied. The two files remain separate compound tables. No tree IDs link compounds, so no tree-by-compound table was fabricated. The same sixteen trees underlie these chemistry measurements.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

## Leaf chemistry: Figures 2 and 3

Black poplar plants were either inoculated with the endophytic fungus *Cladosporium* sp. or given a control treatment, crossed with exposure or no exposure to herbivory by *Lymantria dispar* larvae. Each chemistry row is one concentration measurement of one compound in a plant sample. Each tree contributes measurements for several compounds. The CSVs do not include plant/sample identifiers, so cross-compound pairing cannot be established from their columns alone.

| Column | Meaning and units |
| --- | --- |
| `treatment` | `c`: control; `ch`: control + herbivory; `e`: endophyte; `eh`: endophyte + herbivory. |
| `endophyte` | 0 = no inoculation; 1 = endophyte inoculation. |
| `herbivory` | 0 = no experimental herbivory; 1 = herbivory treatment. |
| `concentration` | Measured concentration of the named compound; units are in `unit`. |
| `unit` | Figure 2: mg/g. Figure 3: catechin is µg/mg; the other three compounds are µg/g. |
| `compound` | Compound label as supplied. Figure 2 includes Salicin, Salicortin, nigracin, Homalosid D and salicortin-6-benzoat; the last label has surrounding spaces. Figure 3 includes catechin, Coumaric Acid, Caffeic acid and Ferulic Acid. |

There are no blank data cells in these two chemistry CSVs. Treatment labels and the two 0/1 columns are alternative encodings of the same assigned treatments. Workbook sheets containing ANOVA statistics or selected significant features are derived results rather than substitutes for the raw concentration data.

## Leaf-disc choice assay: Figure 5d

Each insect had access to both treated and control discs. The two consumption measurements are paired within an insect. The file contains 20 *L. dispar* larvae, 20 *Orgyia antiqua* larvae and 16 *Chrysomela tremulae* adults. The first species was assayed for 48 hours and the other two for 24 hours.

| Column | Meaning and units |
| --- | --- |
| `damage stachydrine cm2` | Leaf area consumed from stachydrine-treated discs, cm². |
| `damage control cm2` | Leaf area consumed from control discs, cm². |
| `replicate` | Replicate number, reused across insect groups; not a globally unique insect identifier. |
| `insect` | Insect group as supplied. The CSV uses spelling variants such as `Lymantri dispar` and `Orgia antiqua`; these refer to the taxa named above. |

The feeding CSV has no blank data cells. Zero consumption is a recorded observation. It describes a chemical choice assay, distinct from the plant inoculation/herbivory experiment in Figures 2 and 3. Rows cannot be joined across those experiments as if they represented the same plant or insect.

## Sources

**Paper:** Walther, C., Vallet, M., Reichelt, M., Giri, P., Rothe, B., Negwer, E. J., van Berkum, P. M., Gershenzon, J., & Unsicker, S. B. (2025). A Fungal Endophyte Alters Poplar Leaf Chemistry, Deters Insect Feeding and Shapes Insect Community Assembly. Ecology Letters, 28(2), e70007. https://doi.org/10.1111/ele.70007

**Original data:** Walther, C., Vallet, M., Reichelt, M., Giri, P., Rothe, B., Negwer, E., van Berkum, P. M., Gershenzon, J., & Unsicker, S. (2024). Data from: A fungal endophyte alters poplar leaf chemistry, deters insect feeding, and shapes insect community assembly (Version 8) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.3XSJ3TXQT
