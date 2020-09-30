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
- Small Area Population Estimates Scotland Scotland for 2019
- Scottish Parliament Constituencies (SPC) & UK Parliament Constituencies (UKPC)

## Examples for potential applications

All men over 70 who live in high-density areas and have more than one chronic disease

All people on the COVID shielding list who live in places with long drive-time to a retail centre

Differences between people who are vulnerable due to respiratory disease in Aberdeen City vs rural Aberdeenshire

## Acknowledgements
The SVR was created using publicly available data. You can find the links to the data sources below under **Source data**. 

This resource is the result of work conducted by the [Aberdeen Centre for Health Data Science](https://www.abdn.ac.uk/achds/) and [Digital Research Service](https://www.abdn.ac.uk/it/services/digital-research-1435.php) at University of Aberdeen. It is administered by Dr. Jessica Butler and Dr. Bernhard Scheliga.  The work was funded by a grant from  XXX awarded to Dr. Jessica Bulter  and is part of a wider project looking at XXX + link to wider project.



## Folder content

- **Documentation** -This folder contains all the relevant documentation for the SVR e.g. the R Notebook, links to the source data including information on the date acessed, descriptions for the column names used in the dataset.

- **Data creation** -folder contains the annotated R notebook for the script used to create the current version of the SVR
	
- **SVR_data** -This folder contains the ready-to-use dataset on scottish vulnerability measures. Current version 0.2

- **Input_data** -This folder contains the source data used to create the SVR. ***Has the orignal files from the data suppliers and the corresponidng documentation***

- **RScript** - This folder contains the R scripts used to create the SVR and other experimental scripts.


## Source data 

This resource contains only publicly available open data.  More information on these sources such as the authors, method of collection etc, can be found in the file 20200624_Scotland-vulernability-data-documentation stored in the documentation folder.

- [Small Area Population Estimates Scotland](https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates/2011-based-special-area-population-estimates/small-area-population-estimates/mid-2019) SAPE 19

- [Scottish Index of Multiple Deprivation indicators for 2020](https://www.gov.scot/collections/scottish-index-of-multiple-deprivation-2020/) SIMD 2020

- [Scottish Government 6-fold Urban and Rural classification](https://www.gov.scot/publications/scottish-index-of-multiple-deprivation-2020v2-data-zone-look-up/)

- [Postcode to Datazone lookup](https://www.gov.scot/publications/scottish-index-of-multiple-deprivation-2020v2-postcode-look-up/)
