# data_urb_anu_cg.txt

**Paper:** The effect of urbanisation and local environmental heterogeneity on phenotypic variability of a tropical treefrog (bioRxiv preprint)  
https://doi.org/10.1101/2024.11.28.625871

**Data:** https://doi.org/10.5061/dryad.3xsj3txp2

This folder contains only `data_urb_anu_cg.txt` from the original deposit (downloaded 2026-11-06, unmodified). Please cite both the paper and the dataset.

_Below: the authors' README (README.md), trimmed to the section on this file_

---

# The effect of urbanization and local environmental heterogeneity on phenotypic variability of a tropical treefrog

[https://doi.org/10.5061/dryad.3xsj3txp2](https://doi.org/10.5061/dryad.3xsj3txp2)

This dataset below contains a series of R code, R Markdown, datasets containing morphological measurements of the Dwarf Treefrog *Dendropsophus nanus*, and local environmental variables collected at the same ponds. Their contents and details are given below:

## Description of the data and file structure

### data\_urb\_anu\_cg.txt

This is the .txt file in tabular form (21 columns by 952 rows) that contains all the linear measurements  taken from *Dendropsophus nanus* in the field. Additional data for other species are provided, but not used in the current manuscript

* `ponds` is the ID of the pond in which frogs were collected;

- `ind_qte` is a numerical data that represents the count of total number of individuals sampled in the study;
- `ind_seq` is ID of individuals in a given pond,  - 3rd column (ind_seq) is a numerical data that represents the count of total number of individuals sampled in each pond;

* `ind_planilha` is a numerical variable that represents the number assined to each individual sampled in field;
* `species` is a character variable that represents the scientific name of species sampled in the study;
* `acron` is a character variable that represents the abreviation of scientific name of the species;
* `month` is a character variable that represents months of field sampling. Monts are abreviated as: 'Jan' for January, 'Feb' for February, 'Mar' for March, 'Apr' for April, 'Nov' for November, 'Dec' for December;
* `date` in DD/MM/YY format of sampling,

- `call` is a categorical variable with two levels: 'yes' if calls were  recorded using a recorder and a semi-direction microphone or 'no' if calls were not recorded;
- `total_weigth` is a numerical variable representing the total weigth of a frog  in field. Total weigth is a sum of frog weigh and bag weigh (bag in which frog was temporarily stored for weighing);
- `bag_weight` is a numerical variable representing bag weigh;
- `real_weight` is a numerical variable representing the real weigh of an individual frog, calculated by subtracting `total_weight` (value given in the Pesola) from `bag_weight`, which is the weight of the plastic bag used to weight frogs. *`NA` in columns 10 to 12 means that individuals  were not weighed in the field.*;
- `svl` to `foot_length` are numerical variables  representing  morphometric measurents taken using a digital caliper 150 mm, following Watters et al. 2016 Zootaxa. `svl` is the snout-ventral length or body size in frogs.
- `total_leg_length` is a numerical variable representing the sum `thigh_length`, `tibia_length`, and `tibia_length`.
- `head_width` and `head_length` are numerical variables  representing morphometric measurents taken using a digital caliper 150 mm following Watters et al. 2016 Zootaxa;
- `head_wid/len` is a numerical variable representing the ratio between `head_width` and `head_length`;
- `marker_num` is character variable that represents the number of individual alpha-tag (e.g., E77, E78) or the elastomer used  to mark individuals (e.g., 'Elastomero' or 'E') for the mark-recapture technique. *`NA` represents individuals that were not marked*.

Please, refer to the main manuscript  for details on how each measurement was taken.

### marcos.RData

This is the saved workspace containing all objects created during the data analysis procedure. It's being made available here because it contains the custom-built neighbour network created to represent the connectivity hypothesis between our ponds. This is necessary to conduct spatial matrix selection and building the Moran

## Sharing/Access information

Parts of the data were derived from the following sources:

* Raster files containing data for land use, from which we calculated current urbanisation and urbanisation rate, were obtained from MapBiomas. [http://brasil.mapbiomas.org](http://brasil.mapbiomas.org)
* LANDSAT Thermal satellite images used to calculate surface temperature and Urban Heat Island were extracted from Earth Explorer. To reproduce the results, one can access the following URL [https://earthexplorer.usgs.gov/](https://earthexplorer.usgs.gov/) and download the same image we used by searching for its ID <LC08_L2SP_225074_20221107_20221115_02_T1> .

## Code/Software

We made available the complete code in `R` Markdown format that thoroughly describes how we conducted, data handling, exploratory data analysis, and modelling. It contains all our data analysis workflow. This is in the following file: `Complete code.Rmd`. We also provide the compiled Markdown file in html format. The R packages and their versions are described in the beginning of the file. The code also includes multi-scale, eigenfunction-based spatial modelling (Moran's Eigenvector Maps, MEMs).

To plot the MEMs and spatial distribution of traits in the urban limits, we used the function `sr.value.R` that is s slight modification of the original `ade4::s.value` function, and is provided as a supplementary material by Borcard et al. 2020 Numerical Ecology with R, 2nd ed. This can be downloaded from the book website [here](http://www.numericalecology.com/numecolR/).

Finally, we're providing the file `pond_buffers_extract.R` that describes how we processed the time series of raster files obtained from MapBiomas to calculate the rate of urbanisation in a 500-m around each pond sampled. This companion R script is used within the main .Rmd file to produce the figure shown in the section "Urbanization percentage growth per pond over the years".

### data_envir.txt (pond data)

One row per pond; join to the frog data by `ponds`. The authors' column descriptions for this file are in the full README on Dryad; the columns are:

`ponds`, `lon`, `lat`, `hydroperiod`, `margin`, `predator`, `cattle`, `float_veg_perc`, `temp_c`, `area_m2`, `depth_ponds_mean_cm`, `elev_mean_m`, `tsince_urb1985_2021`, `urb1985-2021_rate`, `Urb_1985_500`, `Urb_2021_500`, `Urb_rate_500`, `t_mean1985uhi_500`, `t_mean1985uhi_1000`, `t_mean2022uhi_500`, `t_mean2022uhi_1000`, and `Urb_1985` to `Urb_2021` (one column per year).
