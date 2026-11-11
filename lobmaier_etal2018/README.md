# Human body odour and reproductive hormones — data

## Files

| File | Contents |
|---|---|
| `Lobmaier_2018_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

28 rows. Women collected underarm odour on cotton pads over three nights around predicted ovulation, and supplied saliva for hormone measurements. Only the night closest to the luteinising-hormone peak was retained. After exclusions for timing and protocol compliance, 28 donors remained. Male volunteers rated the odours; the supplied table contains repeated donor–rater observations and identifies both people. The same panel of men rated odours from multiple women; the project table contains one mean rating per donor.

## Preparation of this CSV

The woman’s ID is the Donor label without its pad suffix. Attractiveness ratings were averaged across presentations with Not_perceivable = 0, combining the two pads for each donor. ratings records the number of retained presentations. Hormone values are the source base-10 logs log_Donor_E and log_Donor_P.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Donor identity without the pad suffix. |
| attractiveness | Mean attractiveness rating across retained perceivable presentations of this donor’s odour. |
| estrogen | Supplied base-10 log of donor oestradiol measurement (log_Donor_E), NOT raw hormone concentration. |
| progesterone | Supplied base-10 log of donor progesterone measurement (log_Donor_P), NOT raw hormone concentration. |
| ratings | Number of retained rating presentations contributing to the donor mean. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1098/rspb.2018.1520

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.g5n1785
