# Diving_dataset.csv

**Paper:** Verberk et al. 2020. Universal metabolic constraints shape the evolutionary ecology of diving in animals. Proc R Soc B  
https://doi.org/10.1098/rspb.2020.0488

**Data:** https://doi.org/10.5061/dryad.tqjq2bvv9

This folder contains only `Diving_dataset.csv` from the original deposit (downloaded 2026-11-05, unmodified). Please cite both the paper and the dataset.

_Below: usage notes and methods from the repository page (deposit has no README file)_

---

there are three files:


1. dataset on dive duration


2. phylogenetic tree of the taxa in the dataset


3. R script to analyse the data using PGLS


 


1. Data set with records (rows) on dive duration for different species, compiled from published literature.


Column names:



	Species: the species name of individual to which the datarecord pertains;

	Endo.vs..Ecto: classifies the species as either an endotherm (bird or mammal) or an ectotherm (insect, amphibian or reptile);

	Mass..kg.: body mass of the individual to which the datarecord pertains in kilograms;

	Dive.duration..min: reported mean dive duration in minutes;

	Maximum.dive.duration..min: reported maximum dive duration in minutes;

	Temerature: Relevant temperature of the individual during the dive. For endotherms this is body temperature in most cases, whereas for the smaller ectotherms this is water temperature;

	Remarks: remarks taken from the study to help identify the conditions that pertain to the datarecord. If the temperature is not obtained from the literature source, the relevant source is also stated here;

	Literature.source: Primary source for the data record;

	Selected: a column which indicates whether a record was used in the analysis on 95th percentile of maximum dive duration, accounting for temperature;

	Treenames: a column with the names that are identical to those used in the phylogenetic tree



 


2. phylogenetic tree of the taxa in the dataset


Tree in nexus format saved as a .txt file which includes 281 taxa and has branchlengths derived from TimeTree


 


3. R script to analyse the data using PGLS


Rscript which reproduce the results from the PGLS analysis in Table 1 in the paper which reports on this dataset.

Data on diving performance and body mass of ectotherms and endotherms were collated from the published literature. We have drawn on a previously published dataset, initially constructed by Schreer and Kovacs (1997) and subsequently updated by Halsey et al. (2006), Brischoux et al. (2008) and Hayward et al. (2016). We used the "penguiness book" to locate most of the studies used. We rechecked all records and added data from the primary literature to generate the most comprehensive dataset on dive duration to date, comprising 1,792 records for 286 species of which 62 were ectotherms and 224 endotherms.


Brischoux F, Bonnet X, Cook TR & Shine R. Allometry of diving capacities: ectothermy vs. endothermy. J. Evol. Biol. 21, 324-329 (2008).


Halsey LG, Butler PJ & Blackburn TM. A phylogenetic analysis of the allometry of diving. Am. Nat. 167, 276-287 (2006).


Hayward A, Pajuelo M, Haase CG, Anderson DM & Gillooly JF. Common metabolic constraints on dive duration in endothermic and ectothermic vertebrates. PeerJ 4, e2569 (2016).


Ropert-Coudert Y, Kato A, Robbins A, Humphries GRW. The Penguiness book. World Wide Web electronic publication (http://www.penguiness.net), version 3.0, October 2018. DOI:10.13140/RG.2.2.32289.66406


Schreer JF & Kovacs KM. Allometry of diving capacity in air-breathing vertebrates. Can. J. Zool. 75, 339-358 (1997).
