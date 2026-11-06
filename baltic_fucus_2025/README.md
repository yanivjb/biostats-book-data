# Fucus_Morphology.xlsx

**Paper:** An evolutionary mosaic challenges traditional monitoring of a foundation species in a coastal environment - the Baltic Fucus vesiculosus  
https://zenodo.org/records/14161399

**Data:** https://doi.org/10.5061/dryad.q83bk3jsh

This folder contains only `Fucus_Morphology.xlsx` from the original deposit (downloaded 2026-11-06, unmodified). Please cite both the paper and the dataset.

_Below: the authors' README (README.md), cut by hand to the section on this file_

---

# Population genomic and morphological datasets from: An evolutionary mosaic challenges traditional monitoring of a foundation species in a coastal environment - the Baltic *Fucus* *vesiculosus*

[https://doi.org/10.5061/dryad.q83bk3jsh](https://doi.org/10.5061/dryad.q83bk3jsh)

## Description of the data and file structure

We have submitted the resulting Fucus_vesiculosus_SNP_data.vcf (Variant Call Format) file from the reference-based variant calling and filtering performed using the pipeline modified from Mikhail Matz available at [https://github.com/z0on/2bRAD_GATK](https://github.com/z0on/2bRAD_GATK). Reads were mapped to a *F*. *vesiculosus* draft genome assembly previously used for population genomic studies (Kinnby et al., 2020; Pereyra et al., 2023; NCBI Bioproject No. [PRJNA629489](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA629489/)). This file is the primary population genomic dataset used for all the genetic analysis described in our article, "An evolutionary mosaic challenges traditional monitoring of a foundation species in a coastal environment - the Baltic *Fucus* *vesiculosus*". Here we investigated the genetic and morphological structure of the brown seaweed populations of the Baltic Sea, Kattegat and Skagerrak, while also assessing  the level of clonality of the considered populations and the evolutionary history underlying these populations. In addition, we have included the Fucus_morphology.csv file containing the morphological measurements of putative diagnostic traits often used to distinguish *Fucus* species. 

### Files and variables

#### File: Fucus\_Morphology.csv (in this folder as Fucus_Morphology.xlsx)

**Description:** This file contains the traits measured to characterise each individual morphologically. The file includes data from 318 individuals from seven localities in the Gulf of Bothnia, Baltic Sea and  six Estonian sites. These localities were selected covering areas where *F. radicans* has previously been found or could potentially be present. Each individual was characterised using the average of three measurements, taken from different branches with the image analysis software ImageJ64 (Schneider et al., 2012). The traits measured were frond width (FW), distance between dichotomies (DBD) and undulation index (UX). 

##### Variables

* Sample code: Individual sample identification code
* POP: Sample locality code (see Supplemental information file)
* Species: Fucus vesiculosus, F. radicans or undescribed FucusX
* Clone/Unique: If genotype is unique (sexually derived) or clone genotype (genotype copy derived from asexual reproduction)
* FW1: Frond width measurement 1
* FW2: Frond width measurement 2
* FW3: Frond width measurement 3
* FW: Frond width Average from the 3 measurements
* DBD1: Distance between dichotomies measurement 1
* DBD2: Distance between dichotomies measurement 2
* DBD3: Distance between dichotomies measurement 3
* DBD:Distance between dichotomies Average from the 3 measurements 
* Undulation1: Distance of the thallus margin along undulated branch measurement 1
* Undulation2: Distance of the thallus margin along undulated branch measurement 2
* Undulation3: Distance of the thallus margin along undulated branch measurement 3
* Straight line (cm): Measurement of straight line along 3 cm the same branch to calculate ratio between Undulation1, Undulation2 and Undulation3
* UX: Undulation index, the ratio between Undulation measurement and Straight line. 
* Receptacles: Number of reproductive conceptacles, if present.

## Code/software

The spreadsheets are  commonly opened with Excel from Microsoft or Numbers from Apple. 

## Access information

Other publicly accessible locations of the data:

* Sequence data are available from NCBI SRA under BioProject accession PRJNA629489

- Scripts from the bioinformatic analysis are available at GitHub ([https://github.com/crustaceana/Population-genomics-for-Clonal-organisms](https://github.com/crustaceana/Population-genomics-for-Clonal-organisms)).
