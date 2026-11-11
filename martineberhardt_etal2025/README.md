# Red versus green carnivorous plants — data

## Files

| File | Contents |
|---|---|
| `Martin-Eberhardt_2025_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

75 rows. Researchers paired 75 green pitcher plants with nearby red plants in one Michigan population. Newly emerged leaves were marked and later collected with their contents. Leaf height, captured prey, inquiline larvae and leaf damage were recorded; feeding assays and reproductive measurements supplied additional outcomes. CombinedDataset.csv brings several plant-level measurements together.

## Preparation of this CSV

Each row joins one red and one green plant using pairID. Source prey mass (g), height (cm) and perforation values are retained for both plants. The three supplied differences are red minus green. The logged prey contrast is ln(1 + 1000 × preyMass_red) − ln(1 + 1000 × preyMass_green): mass is expressed in mg, with a 1-mg shift. That shift is part of the calculation, not a detection limit. There are 75 pairs; a contrast is NA when a required component is missing.

## Columns and codes

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

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1086/735010

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.8w9ghx3vp
