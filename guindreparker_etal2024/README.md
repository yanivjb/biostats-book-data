# Urban and rural starling eggs — data

## Project data files

| File | Contents |
|---|---|
| `egg.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Collection and row meaning

Researchers monitored nest boxes at four sites around Atlanta, Georgia, during 2020–2023: two urban and two rural sites. Site coverage changed over time: one rural site replaced another after renovations, and the second urban site was added in 2021. Urbanization was classified from surrounding vegetation, buildings and impervious surfaces; it was not experimentally assigned.

Nest boxes were checked every few days during the March–June breeding season. Eggs were marked to follow laying, measured for length and width, and weighed. The supplied file contains 552 egg records with nesting identifiers, nesting-attempt number, lay date, egg age at measurement and clutch size. Multiple eggs belong to a nesting group; birds may also breed again during a season. Egg numbers are reused within nests, so they are not global individual identifiers.

## Column definitions and source documentation

## Description of the data and file structure

Reproductive and environmental parameters collected for European starling nesting attempts from nest boxes in metro-atlanta.

### Files and variables

#### File: egg.csv

**Description:** Data file for egg size analyses

##### Variables

* Nest.ID: Unique ID for nest box
* Urbanization Status: dichotomous score based on UrbanizationScore value (urban or rural)
* Nest Attempt: Ordinal value for how many nesting attempts the breeding pair have attempted
* Egg.ID: Unique ID for each egg
* Lay date: Date each egg was laid in nest
* Length (mm): continuous variable
* Width (mm): continuous variable
* Mass (g): continuous variable
* Egg Age (days): Age of egg from lay date of egg to present date
* Clutch size: Number of eggs total in the nest
* n/a values mean observation/measurement not collected


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://par.nsf.gov/servlets/purl/10566208
