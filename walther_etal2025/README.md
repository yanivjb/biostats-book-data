# Poplar endophytes, leaf chemistry and insect feeding

**Paper:** Walther et al. (2025). A fungal endophyte alters poplar leaf chemistry, deters insect feeding and shapes insect community assembly. Ecology Letters. https://doi.org/10.1111/ele.70007

**Original data:** [10.5061/dryad.3xsj3txqt](https://doi.org/10.5061/dryad.3xsj3txqt)

This README describes the teaching files in `walther_etal2025`. It adapts the authors’ documentation to the files present in this folder, checked 9 November 2026. File counts and notes about the teaching CSVs come from inspecting those files; they are not additional statements by the original authors. Cite both the paper and the original dataset. `CITATION.md` provides citation information; the paper link above identifies the published article where an older citation file is outdated.

## Files included

| File | Contents |
| --- | --- |
| `walther_et_al_2024fig2data.csv` | Figure 2 leaf chemistry: 80 rows, five salicinoids, four treatment combinations and four observations per compound–treatment combination. |
| `walther_et_al_2024fig3data.csv` | Figure 3 leaf chemistry: 64 rows, four phenolic compounds, four treatment combinations and four observations per compound–treatment combination. |
| `Walther_etal2024_Figure5d_feeding.csv` | Figure 5d choice assay: 56 insects, each offered stachydrine-treated and control leaf discs. |
| `Walther_et_al._2024_raw_data_240909.xlsx` | Original multi-sheet workbook. The three CSVs above correspond to `Figure 2`, `Figure 3` and `Figure 5d`; other sheets contain additional experiments or derived results. |
| `CITATION.md` | Citation information. |

The CSVs and corresponding workbook sheets overlap; do not append them as additional observations. Figure 3 catechin concentrations are rounded to two decimals in the teaching CSV relative to the workbook. Other exported numbers may have less displayed precision. The workbook preserves the source values.

## Reading the CSVs

```r
chem2 <- readr::read_csv("walther_et_al_2024fig2data.csv")
chem3 <- readr::read_csv("walther_et_al_2024fig3data.csv")
feeding <- readr::read_csv("Walther_etal2024_Figure5d_feeding.csv")
```

## Leaf chemistry: Figures 2 and 3

Black poplar plants were either inoculated with the endophytic fungus *Cladosporium* sp. or given a control treatment, crossed with exposure or no exposure to herbivory by *Lymantria dispar* larvae. Each chemistry row is one concentration measurement of one compound in a plant sample. Multiple compounds measured from the same samples do not represent additional independently treated plants. The CSVs do not include plant/sample identifiers, so cross-compound pairing cannot be established from their columns alone.

| Column | Meaning and units |
| --- | --- |
| `treatment` | `c`: control; `ch`: control + herbivory; `e`: endophyte; `eh`: endophyte + herbivory. |
| `endophyte` | 0 = no inoculation; 1 = endophyte inoculation. |
| `herbivory` | 0 = no experimental herbivory; 1 = herbivory treatment. |
| `concentration` | Measured concentration of the named compound; units are in `unit`. |
| `unit` | Figure 2: mg/g. Figure 3: catechin is µg/mg; the other three compounds are µg/g. Do not pool concentrations without attending to units. |
| `compound` | Compound label as supplied. Figure 2 includes Salicin, Salicortin, nigracin, Homalosid D and salicortin-6-benzoat; the last label has surrounding spaces. Figure 3 includes catechin, Coumaric Acid, Caffeic acid and Ferulic Acid. |

There are no blank data cells in these two chemistry CSVs. Treatment labels and the two 0/1 columns are alternative encodings of the same design, not three independent biological exposures. Workbook sheets containing ANOVA statistics or selected significant features are derived results rather than substitutes for the raw concentration data.

## Leaf-disc choice assay: Figure 5d

Each insect had access to both treated and control discs. The two consumption measurements are paired within an insect. The file contains 20 *L. dispar* larvae, 20 *Orgyia antiqua* larvae and 16 *Chrysomela tremulae* adults. The first species was assayed for 48 hours and the other two for 24 hours.

| Column | Meaning and units |
| --- | --- |
| `damage stachydrine cm2` | Leaf area consumed from stachydrine-treated discs, cm². |
| `damage control cm2` | Leaf area consumed from control discs, cm². |
| `replicate` | Replicate number, reused across insect groups; not a globally unique insect identifier. |
| `insect` | Insect group as supplied. The CSV uses spelling variants such as `Lymantri dispar` and `Orgia antiqua`; these refer to the taxa named above. |

The feeding CSV has no blank data cells. Zero consumption is a recorded observation. It describes a chemical choice assay, distinct from the plant inoculation/herbivory experiment in Figures 2 and 3. Rows cannot be joined across those experiments as if they represented the same plant or insect.

## Workbook scope

The workbook also includes insect performance, field observations, chemical analyses, endophyte quantification and supporting tables. Their meanings are described in the full authors’ README on Dryad. The CSV dictionaries above document only the three teaching extracts; other workbook sheets require their own original methods and variable descriptions.
