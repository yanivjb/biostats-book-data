# Sandpiper hematocrit — data

## Project data files

| File | Contents |
|---|---|
| `data_PESA.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Collection and row meaning

Researchers sampled birds at an approximately 2 km² site near Utqiagvik, Alaska, during nine breeding seasons (2004–2009, 2012, 2014 and 2018). Both sexes were caught using hand-held mist nets; females were also caught in nest traps. At capture, birds were weighed, their tarsus (lower leg) measured, and blood collected. Hematocrit was averaged across capillary tubes from each capture. Some birds were sampled more than once; bird identity is recorded as ID.

Females were classified by whether they nested at the study site. Nests were found by following females and searching the tundra. Females without a local nest could include birds passing through to breed elsewhere. The sample therefore reflects birds encountered and captured at this site, using partly different methods for the sexes.

## Column definitions and source documentation

### Description of data files

data\_PESA.csv (contains hematocrit values of individual pectoral sandpipers)

ID - unique identity for each individual
date\_ - date of sample collection (NA=no data)
year\_ - year of sample collection (NA=no data)
dayofyear\_ - day of year of sample collection (1 = January 1st, NA=no data)
hema - hematocrit value (%)
tarsus - tarsus length (in mm, NA=no data)
weight - body mass (in g, NA=no data)
cond - body condition (residuals of weight over tarsus, NA=no data)
sex - sex(1=male, 2=female)
lattitude - lattitude (degrees°, NA=no data)
longitude - longitude (degrees°, NA=no data)
breed - factor indicating whether an individual bred at the study site (0=no, 1=yes)
date\_cent - mean-centered date of sample collection (NA=no data)
tarsus\_cent - mean-centered tarsus length (in mm, NA=no data)
weight\_cent - mean-centered body mass (in g, NA=no data)
cond\_cent - mean-centered body condition (residuals of weight over tarsus, NA=no data)


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1098/rsbl.2023.0391
