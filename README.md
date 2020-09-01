# Scotland Vulnerability Resource (SVR)

## Description

The Scotland Vulnerability Resource (SVR) a ready-to-use resource that unifies demographic, socioeconomic, and deprivation measures for Scotland in a single data set. This will allow and enable users to broaden definition “vulnerable people” beyond the scope of its healthcare base definition. SVR allows you to swiftly identify “vulnerable people” and the difference of any given group to the region as a whole.

### Notes
The SVR was created using publicly available data. You can find the links to the data sources below under **Source data**.  

Feel free to commit improvement suggestions in the **Issues** - tab

## Features
### Current version 0.2

- Scottish Index of Multiple Deprivation indicators for 2020 
- 2016 Scottish Government 6-fold Urban and Rural classification 
- Postcode researchable (_**!** Spatial resolution of the values in SVR is **datazones!**_) 
- Fully documented and reproduceable creation of the data set including R-code, source data, key & meta data

### Planned
- Mid year population estimates Scotland for 2020
- Scottish Parliament Constituencies (SPC) & UK Parliament Constituencies (UKPC)


## Examples for potential applications

All men over 70 who live in high-density areas and have more than one chronic disease

All people on the COVID shielding list who live in places with long drive-time to a retail centre

Differences between people who are vulnerable due to respiratory disease in Aberdeen City vs rural Aberdeenshire

## Folder content

- **Documentation** -folder contains all the relevant documentation for the SVR e.g. _key, metadata, a detailed documentation of the SVR_
    - **Data creation** -folder contains the commented R notebook for the script used to create the current version of the SVR
	
- **SVR_data** -folder contains the ready-to-use SVR. Current version 0.2

- **Input_data** -folder contains the source data used to create the SVR 

- **RScript** -folder contains the R scripts used to create the SVR and other experimental scripts



## Source data 

This resource contains only publicly available open data

- [Population Estimates Scotland](https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates/2011-based-special-area-population-estimates/small-area-population-estimates/mid-2019)

- [Scottish Index of Multiple Deprivation indicators for 2020](https://www.gov.scot/collections/scottish-index-of-multiple-deprivation-2020/) 

- [Scottish Government 6-fold Urban and Rural classification](https://www.gov.scot/publications/scottish-index-of-multiple-deprivation-2020v2-data-zone-look-up/)

- [Postcode to Datazone lookup](https://www.gov.scot/publications/scottish-index-of-multiple-deprivation-2020v2-postcode-look-up/)
