# How hummingbirds survive the night — data

## Files

| File | Contents |
|---|---|
| `Shankar_2020_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

41 rows. Researchers captured adult male hummingbirds near dusk at five sites in Arizona and Ecuador. Birds could feed before entering outdoor respirometry chambers. Oxygen consumption and chamber temperature were recorded overnight; birds were marked to avoid measuring an individual twice. The project CSV contains individual summaries of the overnight recordings.

## Preparation of this CSV

The ID combines site, species and individual number. Confirmed non-torpor nights (Torpid_not = N) were assigned zero torpor hours where the source duration was missing. Other missing durations remain NA. Energy and mass are supplied on their original scales and as natural logarithms.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Site, species and within-species individual number combined. |
| log_energy | Natural log of energy_kJ. |
| log_mass | Natural log of mass_g. |
| torpor_hours | Hours in torpor; confirmed no-torpor nights are zero. |
| temperature | Mean chamber temperature, degrees C. |
| energy_kJ | Whole-night energy expenditure, kJ. |
| mass_g | Bird body mass, g. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero except for the documented confirmed non-torpor nights in the hummingbird table.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1111/jav.02305

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.t4b8gthzh
