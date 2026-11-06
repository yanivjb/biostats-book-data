# data_defense_traits_Leaf_Data.csv

**Paper:** Grazing disrupts the trade-off between silica- and phenol-based plant defenses along an aridity gradient in grasslands (submitted to Functional Ecology)  
https://doi.org/10.5061/dryad.31zcrjf1d

**Data:** https://doi.org/10.5061/dryad.31zcrjf1d

This folder contains `data_defense_traits_Leaf_Data.csv`, made from sheet "Leaf_Data" of `data_defense_traits.xlsx` in the original deposit. Only the file format changed (Excel to CSV, so it loads with `read_csv()`); the values are the authors'. Only the `Leaf_Data` sheet is included. The community-level sheet described below (`Community_Data`) is not in this folder. Please cite both the paper and the dataset (see CITATION.md).

_Below: the authors' README (README.md), NOT trimmed automatically - edit by hand_

---

# **README for Dataset: Plant defense Trait Responses to Grazing along an aridity gradient in Inner Mongolian Grasslands**

**Dataset:** data_defense_traits.xlsx

**Related Manuscript:** Grazing disrupts the trade-off between silica- and phenol-based plant defenses along an aridity gradient in grasslands

**Authors:** Kaicun Yan, Wen Xia, Ketao Yu, Xiaoyu Yang, Xiaomin Wang, Jianmin Wang, Yi Zhou, Xin Jing, Haiyang Zhang, Yong Jiang, Xingguo Han, Lingfei Yu

**Correspondence:** Lingfei Yu

**Repository:** Dryad Digital Repository

**1. Overview**

This dataset accompanies the manuscript titled “Grazing disrupts the trade-off between silica- and phenol-based plant defenses along an aridity gradient in grasslands” (submitted to *Functional Ecology*). Data were collected from a field study across a natural aridity gradient in the grasslands of Inner Mongolia, China. The study used a paired design of grazing exclusion (fenced) versus grazing to examine how aridity and grazing interact to affect plant defensive traits (silicon and phenolics). The dataset includes two files:

·        **Plant community-level data**: Plant community and soil variables across sites and treatments.

·        **Leaf-level data**: Leaf defensive traits of species common to both grazing treatments.

**2. Data Collection Methods**

·        **Site Selection**: 15 sites were established along a natural aridity gradient in Inner Mongolia.

·        **Experimental Design**: Each site contained paired plots:

Ungrazed: Plots protected from livestock grazing.

Grazed: Plots under ongoing livestock grazing.

·        **Plant Community Sampling**: Aboveground biomass was harvested by species. Soil samples were collected for nutrient and property analysis.

·        **Leaf Trait Sampling**: Leaves from species present in both grazing treatments at each site were sampled and analyzed for defensive traits (silicon, phenolics).

·        **Climate Data**: Aridity Index were derived from the Global Aridity Index Database v2. Mean Annual Precipitation (MAP) and Mean Annual Temperature (MAT) were obtained for each site from the China Meteorological Data Service Center ([http://data.cma.cn/en)](http://data.cma.cn/en\)).

**3. File Descriptions**

**·        Sheet: Community_Data**

**Description**: Contains plant community biomass, soil properties, and site-level climate variables.

**Key Variables**:

§  Site, Treatment, Age (fence age), Vegetation_type

§  Phenolics, Si, C, N, P (leaf traits from community-level samples)

§  Forb_biomass, Grass_biomass, Biomass (community biomass)

§  Soil_N, Soil_P, Soil_available_Si, Soil_pH, SWC (soil properties)

§  Aridity, MAP, MAT (climate variables)

**·        Sheet: Leaf_Data**

**Description**: Contains species-specific leaf traits from samples collected in both grazing treatments.

**Key Variables**:

§  Site, Treatment, Vegetation_type, Sample_id

§  Species, Functional group

§  Leaf Si, Leaf phenolics (defensive traits)

**4. Data Dictionary**

**4.1 Sheet: Community_Data**

| **Column Name**         | **Unit / Format** | **Description**                                                |
| :---------------------- | :---------------- | :------------------------------------------------------------- |
| **Site**                | Text              | Unique identifier for each sampling location.                  |
| **Treatment**           | Text              | Grassland management: Ungrazed (grazing exclusion) or Grazed.  |
| **Age**                 | Years (yr)        | Age of the grazing exclusion fence. 0  for grazed plots.       |
| **Vegetation\_type**    | Text              | Dominant grassland type (e.g., Typical Steppe, Desert Steppe). |
| **Sample\_id**          | Text              | Unique identifier for each sample.                             |
| **Phenolics**           | g kg⁻¹            | Plant community-level phenolic concentration.                  |
| **Si**                  | g kg⁻¹            | Plant community-level silicon concentration.                   |
| **C**                   | %                 | Plant community-level carbon concentration.                    |
| **N**                   | %                 | Plant community-level nitrogen concentration.                  |
| **P**                   | g kg⁻¹            | Plant community-level phosphorus concentration.                |
| **Forb\_biomass**       | g m⁻²             | Aboveground biomass of forbs.                                  |
| **Grass\_biomass**      | g m⁻²             | Aboveground biomass of grasses.                                |
| **Biomass**             | g m⁻²             | Total aboveground plant community biomass.                     |
| **Soil\_N**             | g kg⁻¹            | Total soil nitrogen concentration.                             |
| **Soil\_P**             | g kg⁻¹            | Total soil phosphorus concentration.                           |
| **Soil\_available\_Si** | mg kg⁻¹           | Bioavailable silicon concentration in soil.                    |
| **Soil\_pH**            | -                 | Soil pH measured in a soil-water solution.                     |
| **SWC**                 | %                 | Soil Water Content.                                            |
| **Aridity**             | Unitless          | Aridity Index for the site.                                    |
| **MAP**                 | mm                | Mean Annual Precipitation.                                     |
| **MAT**                 | °C                | Mean Annual Temperature.                                       |

**4.2 Sheet: Leaf_Data**

| **Column Name**      | **Unit / Format** | **Description**                                                     |
| :------------------- | :---------------- | :------------------------------------------------------------------ |
| **Site**             | Text              | Unique identifier for each sampling location.                       |
| **Treatment**        | Text              | Grassland management: Ungrazed or Grazed.                           |
| **Vegetation\_type** | Text              | Dominant grassland type.                                            |
| **Sample\_id**       | Text              | Unique identifier for each sample.                                  |
| **Species**          | Text              | Scientific name of the sampled species.                             |
| **Functional group** | Text              | Plant functional group (e.g., Grass, Forb).                         |
| **Leaf Si**          | g kg⁻¹            | Silicon concentration in leaf tissue of the sampled species.        |
| **Leaf phenolics**   | g kg⁻¹            | Total phenolic concentration in leaf tissue of the sampled species. |

**5. Usage Notes**

·        Missing data are represented as NA.

·        All chemical analyses were performed using standard laboratory protocols detailed in the associated manuscript.

·        The two files can be linked via Site and Treatment for integrated analyses.

·        Leaf trait data include only species that were present in both grazing treatments at each site, enabling direct comparisons of intraspecific trait variation.
