# Trazodone and horse anesthesia recovery — data

## Project data files

| File | Contents |
|---|---|
| `Trazodone_Recovery_Case_Controls.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Collection and row meaning

Researchers reviewed North Carolina State University veterinary hospital records for horses anesthetized for orthopedic MRI between January 2022 and January 2025. Among 219 horses, 19 had received trazodone before anesthesia. For each treated horse, two untreated controls with similar age, sex and breed were selected, giving 57 horses. Horses with incomplete records, additional procedures after MRI, or euthanasia before recovery were excluded.

Treatment was chosen during clinical care rather than assigned randomly. Anesthetic protocols and doses varied at the anesthesiologist’s discretion. All horses received sedation during recovery and assistance from ropes when rising. Records include drug administration, complications, anesthesia duration, time to standing and a subjective recovery-quality score. Higher scores indicate smoother recovery; this hospital’s scale was not formally validated. Medical record and visit identifiers are retained.

## Column definitions and source documentation

## Description of the data and file structure

Retrospective data collected from medical records of horses anesthetized for orthopedic MRI from 2019 to 2025. Data collected included signalment, anesthetic protocols, recovery drugs administered, recovery times, and recovery complications.

### Files and variables

#### File: Trazodone_Recovery_Case_Controls.xlsx

**Description:** Retrospective data collected from anesthesia records of horses undergoing anesthesia for a orthopedic MRI. 19 Horses had received trazodone prior to anesthesia. 38 horses were selected as a control group. Page 1 details data collected from control horses. Page 2 details data collected from trazodone cases. Empty cells represent that there was no data to correlate with category (ie. no sedative agent administered, no complication experienced)

##### Variables

* Medical record number
* Visit number
* Date of anesthesia
* Sex (Male/Female/ Male Castrated)
* Age (Year)
* Weight (Kg)
* Breed
* ASA Status (I-V)
* Billed for
* Procedure
* Trazodone administration prior to anesthesia (Yes/No)
* Trazodone dose (mg and mg/kg)
* Trazodone administration frequency
* Premedication administered (agent name)
* Premedication Dose (mg and mg/kg) and route
* Additional premedication agent name
* Additional premedication dose (mg, mg/kg) and route
* Opioid administered (agent name)
* Opioid dose (mg and mg/kg) and route
* Induction agent administered (agent name)
* Induction agent dose (mg and mg/kg) and route
* Co-induction agent administered (agent name)
* Co-induction agent dose (mg and mg/kg) and route
* Maintenance agent (agent name)
* CRI administration (agent name)
* Other drugs administered during anesthesia
* Recovery sedation administered (Y/N and agent name)
* Recovery sedation dose (mg and mg/kg) and route
* Additional recovery sedative administered (Y/N and agent name)
* Additional recovery sedative dose (mg and mg/kg) and route
* Tertiary recovery sedation administered (Y/N and agent name)
* Tertiary recovery sedation dose (mg and mg/kg) and route
* Reversal agent administered (Y/N and agent name)
* Reversal agent dose (mg and mg/kg)
* Additional reversal agent administered (Y/N and agent name)
* Additional reversal agent dose (mg, mg/kg) and route
* Patient position during position (Left or Right lateral recumbency)
* Patient position during recovery (Left or Right lateral recumbency)
* Presence of low SpO2 reading (Yes/No)
* Presence of Hypoxemia (Yes/No)
* Presence of tachycardia (Yes/No)
* Presence of bradycardia (Yes/No)
* Presence of hypotension (Yes/No)
* Presence of hypertension (Yes/No)
* Presence of intra-operative complication (Yes/No)
* Details of Ax Complication (Description of complication experienced during anesthetic period)
* Recovery score (1-5)
* Recovery complication (Yes/No)
* Details of recovery complication (Description of complication experienced during recovery period)
* Anesthesia start time (24 hour clock time)
* Anesthesia end time (24 hour clock time)
* Duration of anesthesia (minutes)
* Duration of recovery (minutes)
* Alive at 24 hours post procedure (Yes/No)
* Cause of death (Description of cause of death)

Routes: Intravenous - IV, Intramuscular - IM, Subcutaneous - SQ, Oral - PO

## Access information

Other publicly accessible locations of the data:

* None

Data was derived from the following sources:

* None


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.3390/ani15192907
