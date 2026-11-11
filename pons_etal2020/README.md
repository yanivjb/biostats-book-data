# Fungal insurance for wheat during drought — data

## Files

| File | Contents |
|---|---|
| `Pons_2020_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

56 rows. Researchers grew two wheat plants per pot in a climate chamber. Pots received live fungal inoculum or a comparable sterilised preparation, and were allocated to well-watered, continuously dry or pulsed-drought conditions. The two drought treatments received comparable total water on different schedules. There were 60 pots initially and 56 remaining after infection or sampling losses; positions were changed weekly.

## Preparation of this CSV

Pot IDs and treatment labels were retained. Ear dry mass is supplied in g and as its natural logarithm. The table contains 56 pot records.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source pot ID. |
| log_ear | Natural log of ear_mass_g. |
| water | Irrigation: cd = continuous drought; pd = pulsed drought; ctr = well-watered control. Observed categories: cd, ctr, pd. |
| fungus | Fungal inoculation: AM = inoculated with arbuscular mycorrhizal fungi; NM = not inoculated. Observed categories: AM, NM. |
| harvest | Harvest group: A had phloem-sap sampling from one plant per pot at flowering; B did not. Both groups were harvested at the later watery-ripe grain stage. Observed categories: A, B. |
| ear_mass_g | Dry mass of wheat ears, g; reproductive production per pot. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1002/ece3.6703

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.05qfttf13
