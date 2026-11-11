# Can a fungal endophyte change a tree’s chemical defences? — data

## Project data files

| File | Contents |
|---|---|
| `walther_et_al_2024fig2data.csv` | Project data file. |
| `walther_et_al_2024fig3data.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Collection and row meaning

Researchers grew genetically identical black poplar cuttings under controlled conditions. Sixteen young trees received combinations of fungal inoculation or mock treatment and herbivory or no herbivory, with four trees per combination. Fifteen days after inoculation, herbivory trees received caterpillars for 48 hours before leaves were collected for chemical analysis. The chemistry files contain five salicinoids and four other phenolics measured from these trees.

## Column definitions and source documentation

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


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1111/ele.70007
