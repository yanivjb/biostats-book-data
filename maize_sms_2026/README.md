# Maize and spent mushroom substrate — data

## Project data files

| File | Contents |
|---|---|
| `result_3.2.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Collection and row meaning

The Dryad record describes a 75-day greenhouse experiment at Universiti Putra Malaysia from February to April 2025. Maize was grown in pots containing 20 kg of tropical Ultisol soil, with moisture maintained at approximately 60–70% of water-holding capacity. Treatments were assigned in a completely randomized design with three independent pots per treatment.

The eight treatments comprised an untreated control, the recommended mineral fertilizer containing nitrogen, phosphorus and potassium (NPK), and six combinations of full recommended NPK with one of the two substrate types at 50%, 75% or 100% of the substrate rate. There were 24 pots. Treatment and pot-replication labels are recorded; replication labels repeat across treatments.

The supplied plant file contains stem girth, height, leaf chlorophyll estimates, leaf area, cob dimensions and weight, grain number and estimated yield. These are different measurements from the same experimental pots, not separate sets of plants. Soil measurements are deposited separately. The repository provides study methods, but a complete paper was not available for this review.

## Column definitions and source documentation

## Description of the data and file structure

This dataset supports the manuscript “Effects of Treated Spent Mushroom Substrate on Soil Physicochemical Properties and Growth Performance of Maize (*Zea mays* L.).”

This dataset was generated from a 75-day greenhouse pot experiment conducted from February to April 2025 at Universiti Putra Malaysia. The experiment used a completely randomized design with eight treatments and three replications. Treatments included an untreated control, recommended NPK fertilizer, and treated spent mushroom substrate derived from oil palm frond, SMSF, or oil palm empty fruit bunch, SMSE, applied at 50 %, 75 %, or 100 % rates in combination with recommended NPK fertilizer. Maize was grown in 20 kg of tropical Ultisol soil per pot, maintained at approximately 60–70 % of water-holding capacity, and harvested 75 days after planting. Data were collected on post-harvest soil physicochemical properties and maize growth and yield characteristics to evaluate the effects of SMS type and application rate on soil quality and crop performance.

## Files and variables

The dataset contains two Microsoft Excel workbooks, result_3.1.xlsx and result_3.2.xlsx. Each workbook contains one worksheet, named **Sheet1**, with 24 observations representing eight treatments and three independent pot replications per treatment. The data were collected during a 75-day greenhouse experiment evaluating spent mushroom substrate amendments and recommended NPK fertilizer in maize grown under tropical soil conditions.

### Treatment codes and abbreviations

* **TRT**: Treatment code.
* **Rep**: Independent pot replication, coded R1, R2, or R3.
* **SMS**: Spent mushroom substrate.
* **SMSF**: Spent mushroom substrate derived from oil palm frond.
* **SMSE**: Spent mushroom substrate derived from oil palm empty fruit bunch.
* **NPK**: Mineral fertilizer containing nitrogen, phosphorus, and potassium.

Treatment codes are defined as follows:

* **T1**: 0 % NPK, untreated control.
* **T2**: 100 % recommended NPK fertilizer.
* **T3**: 100 % SMSF plus 100 % recommended NPK.
* **T4**: 75 % SMSF plus 100 % recommended NPK.
* **T5**: 50 % SMSF plus 100 % recommended NPK.
* **T6**: 100 % SMSE plus 100 % recommended NPK.
* **T7**: 75 % SMSE plus 100 % recommended NPK.
* **T8**: 50 % SMSE plus 100 % recommended NPK.

### File 2: `result 3.2.xlsx`

This file contains replicate-level measurements of maize growth and yield characteristics.

* **TRT**: Treatment code, T1 to T8.
* **Rep**: Pot replication, R1 to R3.
* **girth (mm)**: Maize stem girth, measured in millimeters.
* **Height (cm)**: Maize plant height, measured in centimeters.
* **spad value**: Relative leaf chlorophyll content measured using a SPAD chlorophyll meter, unitless.
* **leaf area(cm2)**: Area of the maize ear leaf, measured in square centimeters, cm².
* **Cob length(cm)**: Maize cob length, measured in centimeters. “Corb” in the column heading is a typographical error and refers to cob.
* **Cob weight(g)**: Fresh cob weight, measured in grams.
* **Number of grain**: Number of grains recorded per cob, expressed as a count.
* **Yield (t/ha)**: Estimated maize grain yield, expressed in metric tonnes per hectare, t ha ^-1^.

### Missing values

There are no blank cells, “NA” entries, or other missing-value codes in either data file. Numeric zero values are retained as recorded observations and are not used to indicate missing data.

## Access information

At the time of submission, these data are not available through any other publicly accessible repository or website. The data were generated directly by the authors during the greenhouse pot experiment and were not derived from any external dataset or secondary data source.

The complete dataset will be publicly accessible through Dryad after publication of the dataset record. The final Dryad DOI should be used as the permanent link to the data once it has been assigned.

No third-party data licenses apply because the deposited data are original research data produced by the authors.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.5061/dryad.63xsj3vhm
