# Carrot-pot data dictionary

Adapted from the authors’ documentation for the actual column labels in this teaching CSV. All 48 assigned carrot pots remain; subsequent worm survival was not used to exclude pots. NA is missing, not zero.

| Column | Meaning and units |
|---|---|
| `Rand` | Randomisation number for positioning pots in the greenhouse. |
| `No` | Plant/pot identifier. |
| `Species` | Plant species; every record here is Dau_car = Daucus carota. |
| `Guild` | Plant functional group; carrot is a forb. |
| `Treatment` | Original treatment-combination label. |
| `Granulate` | Granule treatment: GranC = none; EPDM = synthetic rubber; Cork = cork. |
| `EPDM` | Assigned EPDM granules: 0 no, 1 yes. |
| `Cork` | Assigned cork granules: 0 no, 1 yes. |
| `Infused` | Assigned EPDM-infused fertilizer: 0 no, 1 yes. |
| `EW` | Assigned earthworms: 0 absent, 1 present (two worms initially). |
| `Control` | 1 = no granules, infusion or earthworms; 0 = another treatment. |
| `Number_C` | Initial number of cotyledons. |
| `Length_C` | Length of largest initial cotyledon blade, mm. |
| `Width_C` | Width of largest initial cotyledon blade at broadest point, mm. |
| `Number_TL` | Initial number of true leaves. |
| `Length_TL` | Length of largest initial true-leaf blade, mm. |
| `Width_TL` | Width of largest initial true-leaf blade at broadest point, mm. |
| `Total_L_area` | Estimated initial leaf area from initial leaf measurements, mm². |
| `Day_in_measure` | Days from transplanting to initial size measurement. |
| `Day_harvest` | Days from transplanting to harvest. |
| `Growth_duration` | Days from initial size measurement to harvest. |
| `Plant_dead` | Dead at harvest: 0 no, 1 yes. |
| `Above_mass` | Aboveground dry biomass, g. |
| `Main_root_mass` | Dry mass of main root system, g. |
| `Sub_root_mass` | Dry mass of scanned root subsample, g. |
| `Below_mass` | Total belowground dry biomass, g. |
| `Total_mass` | Total plant dry biomass, g. |
| `RWR` | Root weight ratio: Below_mass / Total_mass. |
| `Root_length` | Length of scanned root subsample, cm. |
| `Total_root_length` | Estimated whole-root length: Root_length × Below_mass / Sub_root_mass, cm. |
| `SRL` | Specific root length: (Total_root_length / Below_mass) / 100, m/g. |
| `Root_volume` | Volume of scanned root subsample, cm³. |
| `Total_root_volume` | Estimated whole-root volume: Root_volume × Below_mass / Sub_root_mass, cm³. |
| `RTD` | Root tissue density: Below_mass / Total_root_volume, g/cm³. |
| `Avg_root_diameter` | Average diameter of scanned root subsample, mm. |
| `EW_initial` | Initial combined earthworm weight per pot, g (called EW_in in source notes). |
| `EW_replaced` | Weight of worms added later to replace dead worms, g. |
| `EW_end` | Final earthworm weight per pot, g. |
| `EW_alive` | Number of earthworms found alive at harvest. |
| `EW_dead` | Number missing or found dead at harvest. |
| `EW_difference` | Recorded difference between initial and final worm weight, g. |
| `Soil_loose` | Visually loose soil three days before harvest: 0 no, 1 yes. |
