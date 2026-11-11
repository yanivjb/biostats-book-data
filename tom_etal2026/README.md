# Touch and movement in expert pianists — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 45 rows. Touch-detection thresholds and movement-performance summaries for expert pianists and musical novices. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

University of Toronto researchers recruited right-handed adults aged 18–29. Expert pianists had studied in audition-based post-secondary piano programs and were active performers or teachers; novices reported at most three years of musical training or self-study. Expertise was an existing characteristic, not randomly assigned training. Of 48 recruits, three were excluded for electrode problems or ineligibility, leaving 45 participants.

Participants used the left ring finger to press the same key on a silent digital piano. In the tactile test, brief electrical stimuli were delivered to that finger at rest, before a planned keypress, or during movement. Participants reported whether they felt each stimulus. Detection thresholds were estimated from repeated trials. Resting sensitivity was measured before and after the movement block; motion tracking recorded movement speed and timing. Participant identity is recorded as P#.

A separate motor test assessed how accurately participants matched slow and fast keypress targets relative to their own maximum. They practised with feedback before trials without feedback; target-block order was counterbalanced within each expertise group. Testing occurred in two recruitment cohorts with some protocol changes. The supplied file contains participant-level summaries, repeated conditions for each participant, and condition-specific missing measurements.

## Prepared tables

All source rows and columns are retained. Only CSV formatting and the missing-value marker (NA) are standardised; no biological grouping, exclusions or transformations are applied.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Columns and codes

### Files and variables

#### File: Data_ExpertTactileSuppression.csv

##### Variables

* P#: Unique numerical identifier assigned to each participant (e.g., 1, 2, 3...).
* Group: Expertise group assignment: 1 == Expert; 2 == Novice
* CE.30: slow velocity accuracy (Musical Instrument Digital Interface: MIDI)
* CE.70: fast velocity accuracy (MIDI)
* avg_peak_velocity: mean peak velocity (millimeters/second: mm/s)
* ve_peak_velocity: variable error (consistency) peak velocity (mm/s)
* avg_onset: mean movement onset timing (second: s)
* ve_onset: variable error (consistency) movement onset timing (s)
* Baseline1: tactile perceptual threshold from Baseline 1 trials (pre-test rest; milliamperes: mA)
* planning: tactile perceptual threshold from movement planning trials (mA)
* execution: tactile perceptual threshold from movement execution block (mA)
* Baseline2: tactile perceptual threshold from Baseline 2 trials (post-test rest; mA)
* BaselineAvg: mean Baseline1 and Baseline2 (mA)
* P-Bavg: planning suppression (planning - BaselineAvg: mA)
* E-Bavg: execution suppression (execution - BaselineAvg: mA)
* P-B1: planning suppression (planning - Baseline1: mA)
* E-B1: execution suppression (execution - Baseline1: mA)
* Age: age on date of testing (years)
* Sex: female == 1; male == 2
* CatchB1: count of false positive catch trials during Baseline 1 block
* CatchPE: count of false positive catch trials during joint planning and execution block
* CatchB2: count of false positive catch trials during Baseline 2 block

<br />

## Access information

Other publicly accessible locations of the data:

* None. This is the primary and exclusive repository for this dataset.

Data was derived from the following sources:

* Not applicable. This dataset consists entirely of original data collected and produced by the authors for the associated study.


## Human subjects data

All participants provided explicit consent for their de-identified data to be published in the public domain. To ensure anonymity, all direct personal identifiers (e.g., names, contact information) were completely removed from the dataset, and indirect identifiers were aggregated into broader categories where necessary.

## Sources

**Paper:** Tom, J., Manzone, J. X., & Chen, J. L. (2026). Rethinking predictive suppression: Expert pianists do not show greater tactile suppression than musical novices [Manuscript]. Supplementary materials: https://doi.org/10.5281/zenodo.20275716

**Original data:** Tom, Julia, Manzone, Joseph X., & Chen, Joyce L. (2026). Data from: Rethinking predictive suppression: expert pianists tend to show less, not more, tactile suppression than musical novices (Tom, Julia & Chen, Joyce L., Eds.; Version 15) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.C59ZW3RQZ
