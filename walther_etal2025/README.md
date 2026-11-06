# Walther_etal2024_Figure5d_feeding.csv

**Paper:** Walther et al. 2025. A fungal endophyte alters poplar leaf chemistry, deters insect feeding and shapes insect community assembly. Ecology Letters  
https://doi.org/10.1111/ele.70007

**Data:** https://doi.org/10.5061/dryad.3xsj3txqt

This folder contains `Walther_etal2024_Figure5d_feeding.csv`, made from sheet "Figure 5d" of `Walther_et_al._2024_raw_data_240909.xlsx` in the original deposit. Only the file format changed (Excel to CSV, so it loads with `read_csv()`); the values are the authors'. Only the `Figure 5d` sheet (the leaf-disc feeding choice test) is included; the other sheets described below are not in this folder. Please cite both the paper and the dataset (see CITATION.md).

_Below: the authors' README (README.md), cut by hand to the section on this file_

---

# Data from: A fungal endophyte alters poplar leaf chemistry, deters insect feeding, and shapes insect community assembly

Corresponding author

Sybille B. Unsicker  [sunsicker@bot.uni-kiel.de](mailto:sunsicker@bot.uni-kiel.de)

## General description

This README file describes the data package accompanying the above-mentioned publication.

Files used in the analysis are either

1. .xlsx and .csv files for R.scripts
2. R. scripts
3. Excel file with a summary of raw data and data used for statistics in spss
4. MSMS data as .mzML files
5. Metaboanalyst.zip containing .csv files, R-history and Report.pdf obtained from metaboanalyst
6. IBM SPSS-syntax file


## Excel file with a summary of raw data

#### "Walther et al. 2024 raw data 240909.xlsx"

Summary of all data used in the study and used for statistical analysis run in IBM SPSS statistics 25

Sheet: Figure 1 raw data

File containing an overview of raw data about feature intensities obtained from LCMS. Data used for PCA and heatmap

Columns contain the following information:

* feature (metaboscape): feature name given by Metaboscape
* mode: positive or negative ionization mode run on an LCMS
* c1-c4: control, uninfected black poplar trees
* ch1-ch4: control + herbivory, uninfected black poplar trees which experienced herbivory by *L. dispar* larvae
* e1-e4: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* eh1-eh4: endophyte + herbivory, with *Cladosporium* sp. inoculated black poplar trees that experienced herbivory by *L. dispar* larvae
* chemical formular: chemical formula obtained from metaboscape
* mass to charge ratio: mass to charge ratio of the specific feature
* retention time: retention time in minutes
* n/a: no data available, no chemical formula could be generated

Sheet: Figure 1 PCA

A file containing raw data about PCA loadings

Columns contain the following information:

* mode: positive or negative ionization mode run on an LCMS
* feature (metaboscape): feature name given by Metaboscape
* PC1-16: PCA axis

Sheet: Figure 1 heatmap.1

A file containing results of the 2way ANOVA of significant features obtained from metaboanalyst used for heatmap

Columns contain the following information:

* feature (metaboscape): feature name given by Metaboscape
* mode: positive or negative ionization mode run on an LCMS
* endophyte: with *Cladosporium* sp. inoculated black poplar trees
* herbivory: black poplar trees which experienced herbivory by *L. dispar* larvae
* interaction: interaction of endophyte infection and herbivory on black poplar trees
* endophyte(F.val): F-value for endophyte (two-way ANOVA)
* endophyte(raw.p): raw p-value for endophyte
* endophyte(adj.p): adjusted p-value for endophyte
* herbivory(F.val): F-value for herbivory (two-way ANOVA)
* herbivory(raw.p): raw p-value for herbivory
* herbivory(adj.p): adjusted p-value for herbivory
* Interaction(F.val): F-value for interaction(two-way ANOVA)
* Interaction(raw.p): raw p-value for interaction
* Interaction(adj.p): adjusted p-value for interaction

Sheet: Figure 1 heatmap.2

A file containing significant features used for the heatmap.

Columns contain the following information:

* c: control, uninfected black poplar trees
* ch: control + herbivory, uninfected black poplar trees that experienced herbivory by *L. dispar* larvae
* e: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* eh: endophyte + herbivory, with *Cladosporium* sp. inoculated black poplar trees that experienced herbivory by *L. dispar* larvae
* RT (min): retention time in minutes
* m/z: mass to ratio in Dalton
* mode: positive or negative ionization mode run on an LCMS
* formular: chemical subformula
* feature (metaboscape): feature name given by Metaboscape
* feature (final): feature name after adjustment
* n/a: no data available, no chemical formula could be generated

Sheet: Figure 2

File containing results of the effect of endophyte inoculation and herbivory on salicinoid concentrations in leaves of black

Columns contain the following information:

* c: control, uninfected black poplar trees
* ch: control + herbivory, uninfected black poplar trees that experienced herbivory by *L. dispar* larvae
* e: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* eh: endophyte + herbivory, with *Cladosporium* sp. inoculated black poplar trees that experienced herbivory by *L. dispar* larvae
* treatment: treatment of black poplar trees in the assays
* endophyte: with *Cladosporium* sp. inoculated black poplar trees
* herbivory: black poplar trees that experienced herbivory by *L. dispar* larvae
* concentration: content of the metabolite
* unit: unit of metabolite
* compound: measured metabolite

Sheet: Figure 3

File containing results of the effect of fungal endophyte inoculation on the levels of non-salicinoid phenolic defense

Columns contain the following information:

* c: control, uninfected black poplar trees
* ch: control + herbivory, uninfected black poplar trees which experienced herbivory by *L. dispar* larvae
* e: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* eh: endophyte + herbivory, with *Cladosporium* sp. inoculated black poplar trees which experienced herbivory by *L. dispar* larvae
* treatment: treatment of black poplar trees in the assays
* endophyte: with *Cladosporium* sp. inoculated black poplar trees
* herbivory: black poplar trees that experienced herbivory by *L. dispar* larvae
* concentration: content of the metabolite
* unit: unit of metabolite
* compound: measured metabolite

Sheet: Figure 4b

A file containing results of the effect of fungal endophyte inoculation on the preference of insect herbivores.

Columns contain the following information:

* c: control, uninfected black poplar trees
* e: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* tree: individual tree number
* caterpillar: individual caterpillar (*L. dispar*) feeding on black poplar leafs
* damage (cm²): consumed leaf area by *L. dispar* larvae
* leaf area loss %: consumed leaf area in percentages by *L. dispar* larvae

Sheet: Figure 4c

A file containing results of the effect of fungal endophyte inoculation on the performance of insect herbivores.

Columns contain the following information:

* c: control, uninfected black poplar trees
* e: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* moth: *L. dispar* larvae feeding on black poplar tree
* beetle: *C. tremulae* larvae feeding on black poplar tree
* sample ID: biological replicate (insect species feeding on black poplar leaves)
* insect species: *L. dispar* larvae (moth) or *C. tremulae* (beetle) feeding on black poplar tree
* treatment: treatment of black poplar used in the assays
* time (d): time in days after insects were placed on the black poplar trees
* weight gain (mg): weight gain in mg of observed insect

Sheet: Figure 5a

The volcano plot illustrates metabolite features from leaf tissue inoculated with the endophyte and those of control plants.

Columns contain the following information:

* c: control, uninfected black poplar trees
* e: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* Feature: feature name given by metaboscape
* p-Value: p-Value obtained by metaboscape
* p-Value(Rank): rank of p-Value obtained by metaboscape
* Average Ratio "c"/"e": average ratio between control and endophyte
* Fold Change "c"/"e": fold change between control and endophyte
* p-Value(FWER): p-value family-wise error rate obtained by metaboscape
* p-Value(FDR): p-value false discovered rate obtained by metaboscape
* Max. Intensity: Maximum intensity obtained by metaboscape
* CV "c": Coefficient of variation for control treatment obtained by metaboscape
* CV "e": Coefficient of variation for endophyte treatment obtained by metaboscape
* Value Count "c": number of replicates for control
* Value Count "e": number of replicates for endophyte
* n/a: no data available, under the detection limit

Sheet: Figure 5b

File containing data on stachydrine concentration from *Cladosporium* sp. and black poplar leaves from the lab experiment

Columns contain the following information:

* sample ID: replicate
* tissue: tissue used for chemical analysis
* endophyte: with *Cladosporium* sp. inoculated black poplar trees
* herbivory: black poplar trees that experienced herbivory by *L. dispar* larvae
* treatment: treatment of black poplar used in the assays
* concentration: content of the metabolite
* unit: unit of metabolite
* compound: measured metabolite

Abbreviation:

* c: control, uninfected black poplar trees
* ch: control + herbivory, uninfected black poplar trees which experienced herbivory by *L. dispar* larvae
* e: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* eh: endophyte + herbivory, with *Cladosporium* sp. inoculated black poplar trees which experienced herbivory by *L. dispar* larvae
* n/a: not available, collected mycelium, no treatment was applied

Sheet: Figure 5d

A file containing data on leaf area loss from the stachydrine choice experiment

Columns contain the following information:

* replicate: biological replicate
* insect: insect species used for the assay
* damage stachydrine (cm²): leaf area consumed by an insect, leaf discs treated with a solution containing stachydrine
* damage control cm2: leaf area consumed by an insect, leaf discs treated with a control solution

Sheet: Figure 6

A file containing raw data of plant-arthropod interactions comparing black poplar trees infected with a fungal endophyte to control uninfected trees placed in the field.

Columns contain the following information:

* date: observation date
* time: time of observation
* datum: real date
* treatment: treatment of black poplar trees ( c: control, uninfected black poplar trees, e: endophyte, with *Cladosporium* sp. inoculated black poplar trees)
* tree: individual tree
* Acari ... Thysanoptera: observed Arthropod on a specific observation point
* unknown: not identified arthropod

Sheet: Table S1A

A file containing data on endophyte abundance from different experiments

Columns contain the following information:

* c: control, uninfected black poplar trees
* ch: control + herbivory, uninfected black poplar trees which experienced herbivory by *L. dispar* larvae
* e: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* eh: endophyte + herbivory, with *Cladosporium* sp. inoculated black poplar trees which experienced herbivory by *L. dispar* larvae
* d: damage
* experiment: type of experiment
* treatment: treatment of black poplar trees
* treat: number abbreviation of treatment of black poplar trees
* target: target sequence to quantify the abundance of the endophyte
* Sample: biological replicate
* expression: Relative endophyte abundance quantified with qPCR (relative expression ∆∆ Ct)

Sheet: Table S1B

A file containing data on stachydrine concentrations from different experiments

Columns contain the following information:

* c: control, uninfected black poplar trees
* ch: control + herbivory, uninfected black poplar trees which experienced herbivory by *L. dispar* larvae
* e: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* eh: endophyte + herbivory, with Cladosporium sp. inoculated black poplar trees which experienced herbivory by *L. dispar* larvae
* experiment: type of experiment
* treatment: treatment of black poplar trees in the assays
* endophyte: with *Cladosporium* sp. inoculated black poplar trees
* herbivory: black poplar trees that experienced herbivory by *L. dispar* larvae
* concentration: content of the metabolite
* unit: unit of metabolite
* compound: measured metabolite
* tree: unique number of individual tree

Sheet: Table S1D

A file containing data on stachydrine concentrations from stachydrine preference assay

Columns contain the following information:

* c: control, uninfected black poplar trees
* stach: leaves coated with stachydrine solution
* experiment: type of experiment
* treatment: treatment of black poplar trees in the assays
* concentration: content of the metabolite
* unit: unit of metabolite
* compound: measured metabolite

Sheet: Table S2

A file containing data on leaf chemical analysis from the laboratory experiment

Columns contain the following information:

* c: control, uninfected black poplar trees
* ch: control + herbivory, uninfected black poplar trees which experienced herbivory by *L. dispar* larvae
* e: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* eh: endophyte + herbivory, with *Cladosporium* sp. inoculated black poplar trees which experienced herbivory by *L. dispar* larvae
* experiment: type of experiment
* treatment: treatment of black poplar trees in the assays
* treat: number abbreviation of treatment of black poplar trees
* endophyte: with *Cladosporium* sp. inoculated black poplar trees
* herbivory: black poplar trees that experienced herbivory by *L. dispar* larvae
* concentration: content of the metabolite
* unit: unit of metabolite
* compound: measured metabolite

Sheet: Table S4

A file containing data on arthropods attracted during the field experiment

Columns contain the following information:

* c: control, uninfected black poplar trees
* e: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* date: observation date
* time: time of observation
* treatment: treatment of black poplar trees
* tree: individual tree
* count: number of observed insects counted on that day during that time on the tree
* class: insect was identified to class level
* order: insect was identified to order level
* suborder: insect was identified to suborder level
* family: insect was identified at the family level

Sheet: Table S5

A file containing data on leaf chemical analysis from the field experiment

Columns contain the following information:

* c: control, uninfected black poplar trees
* e: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* treatment: treatment of black poplar trees in the assays
* concentration: content of the metabolite
* unit: unit of metabolite
* compound: measured metabolite

Sheet: Table S9

A file containing data on the germination tests of *Cladosporium* sp. spores for the lab experiment, the preference assay, and the field experiment.

Columns contain the following information:

* experiment: type of experiment
* replicate: 100µl of diluted spore solution were pipetted on a single petri dish (one petri dish = one replicate)
* germinated spores: number of germinated spores

Sheet: Figure S5

File containing data of herbivore damage to endophytic fungus-inoculated (fungus) and uninoculated control (control) trees from the experiment conducted in the lab

Columns contain the following information:

* treatment: treatment of black poplar trees in the assays
* treat: treatment of black poplar trees in the assays
* tree: unique number of individual tree
* sum of damage: sum of damage of the whole tree
* leaf area loss %: leaf area loss in percentage

Abbreviations:

* c: control, uninfected black poplar trees
* e: endophyte, with Cladosporium sp. inoculated black poplar trees
* 1: c
* 2: e

Sheet: Figure S6

File containing data on the effect of fungal endophyte inoculation on concentrations of phytohormones of black poplar

Columns contain the following information:

* treatment: treatment of black poplar trees in the assays
* treat: number abbreviation of treatment of black poplar trees
* endophyte: with *Cladosporium* sp. inoculated black poplar trees
* herbivory: black poplar trees that experienced herbivory by *L. dispar* larvae
* concentration: content of the metabolite
* unit: unit of metabolite
* compound: measured metabolite

Abbreviations:

* c: control, uninfected black poplar trees
* ch: control + herbivory, uninfected black poplar trees which experienced herbivory by *L. dispar* larvae
* e: endophyte, with *Cladosporium* sp. inoculated black poplar trees
* eh: endophyte + herbivory, with *Cladosporium* sp. inoculated black poplar trees which experienced herbivory by *L. dispar* larvae

Sheet: Figure S7b

File containing data on herbivore damage from control and inoculated plants from the field experiment

Columns contain the following information:

* tree: unique number of individual tree
* treatment: treatment of black poplar trees in the assays
* treat: number abbreviation of treatment of black poplar trees
* sum leaf area (cm²): reconstructed area of a whole plant
* damage (cm²): leaf area loss in cm²
* damage %: leaf area loss in %

Abbreviation:

* 1: control
* 2: endophyte

Sheet: Figure S8

A file containing data on stachydrine concentration in aphid honeydew.

Columns contain the following information:

* treatment: treatment of black poplar trees in the assays
* treat: number abbreviation of treatment of black poplar trees
* tree: unique number of individual tree
* concentration: content of the metabolite
* unit: unit of metabolite
* compound: measured metabolite

Abbreviation:

* 1: control
* 2: endophyte
