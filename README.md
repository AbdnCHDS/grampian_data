# Scotland Vulnerability Resource (SVR)

## Description

The Scotland Vulnerability Resource (SVR) a ready-to-use resource that unifies demographic, socioeconomic, and deprivation measures for Scotland in a single data set. This will allow and enable users to broaden definition “vulnerable people” beyond the scope of its healthcare base definition. SVR allows you to swiftly identify “vulnerable people” and the difference of any given group to the region as a whole.

Feel free to commit improvement suggestions in the **Issues** - tab

## Features
### Current version 0.2

- Scottish Index of Multiple Deprivation indicators for 2020 
- 2016 Scottish Government 6-fold Urban and Rural classification 
- Postcode researchable (_**!** Spatial resolution of the values in SVR is **datazones!**_) 
- Fully documented and reproduceable creation of the data set including R-code, source data, key & meta data

### Planned
- Small Area Population Estimates Scotland for 2019
- Scottish Parliament Constituencies (SPC) & UK Parliament Constituencies (UKPC)

## Examples for potential applications

All men over 70 who live in high-density areas and have more than one chronic disease

All people on the COVID shielding list who live in places with long drive-time to a retail centre

Differences between people who are vulnerable due to respiratory disease in Aberdeen City vs rural Aberdeenshire

## How to use

### Scotland Vulnerability Resource (SVR)
Either Fork this repository or download the current version of SVR dataset from ***SVR_data*** folder

### Small Area Population Estimates Scotland for 2019 (SAPE2019)
Due to file size limitation from GitHub and the actual size of the SAPE2019 it was not feasible to integrate the SAPE2019 dataset directly into the SVR dataset. For details more see issues [#31](https://github.com/AbdnCHDS/Scotland_Vulnerability_Resource/issues/31) & [#17](https://github.com/AbdnCHDS/Scotland_Vulnerability_Resource/issues/17).  
Hence, we are providing a ready to use R-script which formats the SAPE2019 dataset into an SVR friendly format the researcher. 

## How to cite

***DOI will follow*** 

## Acknowledgements
The SVR was created using publicly available data. You can find the links to the data sources below under **Source data**. 

This resource is the result of work conducted by the [Aberdeen Centre for Health Data Science](https://www.abdn.ac.uk/achds/) and [Digital Research Service](https://www.abdn.ac.uk/it/services/digital-research-1435.php) at University of Aberdeen. It is administered by Dr. Jessica Butler and Dr. Bernhard Scheliga.  The work was funded by a grant from  XXX awarded to Dr. Jessica Butler  and is part of a wider project looking at XXX + link to wider project.



## Folder content

- **Documentation** - *Administrative Information*  
Contains the information and documentation on the creation of SVR e.g. Administrative & descriptive (***Key atm***) Metadata, Technical Note, R Notebook on the SVR creation

- **SVR_data** - *Project Output*  
Contains the ready-to-use dataset on Scotland vulnerability Resource. Current version 0.2

- **Input_data** - *Project Input*  
Contains the source data used to create the SVR. ***Has the orignal files from the data suppliers and the corresponding documentation***

- **RScript** - *Code & Scripts*  
Contains the R script used to create the SVR and script related to the SVR.


## Source data 

This resource contains only publicly available open data.  More information on these sources such as the authors, method of collection etc, can be found in the file 20200624_Scotland-vulernability-data-documentation stored in the documentation folder.

- [Small Area Population Estimates Scotland](https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates/2011-based-special-area-population-estimates/small-area-population-estimates/mid-2019) SAPE 19

- [Scottish Index of Multiple Deprivation indicators for 2020](https://www.gov.scot/collections/scottish-index-of-multiple-deprivation-2020/) SIMD 2020

- [Scottish Government 6-fold Urban and Rural classification](https://www.gov.scot/publications/scottish-index-of-multiple-deprivation-2020v2-data-zone-look-up/)

- [Postcode to Datazone lookup](https://www.gov.scot/publications/scottish-index-of-multiple-deprivation-2020v2-postcode-look-up/)
