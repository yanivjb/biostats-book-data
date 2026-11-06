# Trazodone_Recovery_Case_Controls.csv

**Paper:** Joseph et al. 2025. Preanesthetic Administration of Trazodone Does Not Impact Anesthetic Recovery Scores in Horses. Animals 15: 2907  
https://doi.org/10.3390/ani15192907

**Data:** https://doi.org/10.5061/dryad.4qrfj6qpv

This folder contains `Trazodone_Recovery_Case_Controls.csv`, made from sheets "Control Horses" and "Cases" of `Trazodone_Recovery_Case_Controls.xlsx` in the original deposit. Only the file format changed (Excel to CSV, so it loads with `read_csv()`); the values are the authors'. The authors kept controls and trazodone cases on two sheets; here they are stacked into one table with a new first column, `group` (`control` or `trazodone`). The cases sheet's `Additional Recovery (Y/N)` column was renamed `Additional Recovery Sedation (Y/N)` to match the controls sheet, and `Recovery (Good/Bad)` was recorded only for cases, so it is blank for controls. Please cite both the paper and the dataset (see CITATION.md).

_Below: the authors' README_

---
# Preanesthetic administration of trazodone does not impact anesthetic recovery scores

Dataset DOI: [10.5061/dryad.4qrfj6qpv](10.5061/dryad.4qrfj6qpv)

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

## Code/software

Excel

## Access information

Other publicly accessible locations of the data:

* None

Data was derived from the following sources:

* None

