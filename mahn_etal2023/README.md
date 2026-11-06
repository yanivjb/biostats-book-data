# data_both_suborders.csv

**Paper:** Mähn et al. 2023. Beyond latitude: Temperature, productivity and thermal niche conservatism drive global body size variation in Odonata. Global Ecology and Biogeography  
https://mediatum.ub.tum.de/1707507

**Data:** https://doi.org/10.5061/dryad.hhmgqnkmg

This folder contains only `data_both_suborders.csv` from the original deposit (downloaded 2026-11-06, unmodified). Please cite both the paper and the dataset.

_Below: the authors' README (README.md), NOT trimmed automatically - edit by hand_

---

# Data for: Beyond latitude: Temperature, productivity, and thermal niche conservatism drive global body size variation in Odonata
---
One dataframe represents the whole dataset of odonates, the other two each are data for the two suborders, Anisoptera and Zygoptera. 
All datasets include trait data and all environmental variables that were used in the analyses. 
For the main analyses these data was aggregated to assemblage-level (i.e. averaged across species 
co-occurring within a 100 km × 100 km grid cell). Coordinates of the centroid of each grid cell is 
included in the datasets. The trait data are the body size in mm, named ‘BL_mean’ (unpartitioned),
 ‘P’, and ‘S’, respectively. The P component represents the variation in body size predicted by the 
phylogenetic relationships between species. The S component represents residuals from these predictions 
and hence the species-specific deviation from the phylogenetically predicted part.

## Description of the data and file structure

There are three different datasets, one for both suborders combined and one for each suborder.

The datasets include the following variables:
ID = Grid ID
Bl_mean = average body size in mm
P-Component = Phylogenetic Component / Phylogenetically predicted part of body size
S-Component = Specific Component / Species-specific deviation from the phylogenetically predicted part of body size
Bio_1 = Mean annual temperature in °C
Annual_Evi = Mean annual enhanced vegetation index
Elev = Mean elevation in meters
lon = °longitude of the grid centroid
lat = °latitude of the grid centroid

Note: The P- and S-Component separately calculated for each of the suborders and hence not included in the dataset containing all species.

## Sharing/Access information

Data was derived from the following sources:

The environmental data was downloaded from the CHELSA (Karger et al. 2017, 2018; chelsa.org, current condition records)
and EarthEnv (Amatulli et al. 2018) databases. The EVI layer was cropped to the extent of the climate variables (1 km × 1 km).

For the distribution data expert range maps from IUCN.org (IUCN 2021) were downloaded and extended by ecoregional ranges.

For detailed methods and further descriptions of the trait and distribution data see Mähn et al. (Beyond latitude: Temperature, 
productivity, and thermal niche conservatism drive global body size variation in Odonata).

## Code/Software

All datasets and following analyses were conducted in the R environment:
R Core Team (2022) R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. Available at: https://www.R-project.org/
