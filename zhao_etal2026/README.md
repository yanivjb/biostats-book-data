# What do grasses get in exchange for feeding fungi? — data

## Files

| File | Contents |
|---|---|
| `Zhao_2026_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

160 rows. The experiment crossed four grass species, fungal inoculation present or absent, and four simulated precipitation levels. Five individually potted seedlings represented each combination, giving 160 pots. Water treatments began after establishment, pots received nutrient solution, and their positions were randomised and rotated. Biomass and shoot nutrients were measured at harvest after 12 weeks.

## Preparation of this CSV

Each row is a pot. A row identifier was added, labels were shortened, and shoot biomass is supplied in g and as its natural logarithm. Water records assigned precipitation in mm; AM/NM records fungal inoculation.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Added row identifier for a pot. |
| log_biomass | Natural log of shoot_biomass. |
| water | Assigned annual-equivalent precipitation: 400, 800, 1200 or 1600 mm; applied as 9, 18, 27 or 36 mL water daily. |
| fungus | Fungal inoculation: AM = inoculated with arbuscular mycorrhizal fungi; NM = not inoculated. Observed categories: AM, NM. |
| species | Cb = Chloris barbata; Et = Eragrostis tenella; Lp = Leptochloa panicea; Oc = Oplismenus compositus. |
| shoot_biomass | Shoot dry biomass, g. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1111/1365-2435.70340

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.3j9kd51v3
