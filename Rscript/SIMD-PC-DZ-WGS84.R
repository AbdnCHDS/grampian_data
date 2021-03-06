####################################################################
#### 
#### The scripts joins postcodes (PC), datazones (DZ) & coordinates (WGS84) to the 
#### Scottish Index of Multiple Deprivation indicators (SIMD2020v2) data




### Libraries



#### loading data ####
setwd("~/grampian_data/Raw_data/")
dir()
df_SIMD2020.indi <- read.csv("SIMD2020v2indicators.csv") # add , stringsAsFactors = T later
df_SIMD2020.dz <- read.csv("SIMD2020v2datazones.csv")
df_SIMD2020.pc <- read.csv("SIMD2020v2postcodes.csv")
df_SIMD2020.pcWGS84 <- read.csv("PC_SIMD2020_WGS84.csv")


#### Cleaning data ####

# df_SIMD.dz we only need the first two columns "DZ" & "DZname"
df_SIMD2020.dz <- df_SIMD2020.dz[,c(1,2)]
# df_SIMD2020.pc we only need the first two columns "Postcode" & "DZ"
df_SIMD2020.pc <- df_SIMD2020.pc[,c(1,2)]
# Reduce the precision of the WGS84 coordinates to the 4th decimal place. Which would still allow to identify individual streets or land parcels
df_SIMD2020.pcWGS84[,c(2:3)] <- sapply(df_SIMD2020.pcWGS84[,c(2:3)], function(x) round(x,3))


#### duplicates in data set ####
sapply(df_SIMD2020.indi, function(x) sum(duplicated(x)))
# Data_Zone should be 0
sapply(df_SIMD2020.dz, function(x) sum(duplicated(x)))
# DZ (Data zone) should be 0
sapply(df_SIMD2020.pc, function(x) sum(duplicated(x)))
# Postcode should be 0


#### NA's in data set ####
sapply(df_SIMD2020.indi, function(x) sum(is.na(x)))
# Data_Zone should be 0. However, there will be NA, once I remove the "*" from 
# the data set which indicates NA or withheld data in the source data set

sapply(df_SIMD2020.dz, function(x) sum(is.na(x)))
# DZ (Data zone) should be 0
sapply(df_SIMD2020.pc, function(x) sum(is.na(x)))
# Postcode should be 0


#### Joining the data set together #### 

### First merging/join. Joining the Data zones names to the SIMD2020 data set
df_SIMD2020.1merge <- merge(df_SIMD2020.indi, df_SIMD2020.dz, by.x="Data_Zone", by.y="DZ", all = TRUE) #all= True to include potenial missing values
# reordering the data frame, placing the DZname column in the second position
df_SIMD2020.1merge <- df_SIMD2020.1merge[,c(1,38,2:37)]


### Second merging/join. Joining the postcodes to the SIMD2020 data set
df_SIMD2020.2merge <- merge(df_SIMD2020.1merge, df_SIMD2020.pc, by.x="Data_Zone", by.y="DZ", all = TRUE)
# reordering the data frame, placing the Postcodes column in the first position
df_SIMD2020.2merge <- df_SIMD2020.2merge[,c(39,1:38)]


# find the column with the NA values
sapply(df_SIMD2020.2merge, function(x) sum(is.na(x)))
# find affected rows
df_SIMD2020.2merge[is.na(df_SIMD2020.2merge$Postcode),]

## Lets check for duplicates 
sapply(df_SIMD2020.2merge, function(x) sum(duplicated(x)))
# However, there is one duplicated postcode. The Postcodes should be 0
# let find it
df_SIMD2020.2merge[duplicated(df_SIMD2020.2merge),]
# Interesting, I would assumed to find at least one hit, the rows with the duplicated postcode. 
# That might mean that we have one postcode in two data zones?
df_SIMD2020.2merge[duplicated(df_SIMD2020.2merge$Postcode, fromLast=FALSE),]
# I was kind of right. duplicated also picked up on the two NA in the postcodes

### Third merging/join. Joining the WGS84 coordinates to the SIMD2020 data set
df_SIMD2020.3merge <- merge(df_SIMD2020.2merge, df_SIMD2020.pcWGS84, by.x="Postcode", by.y="Postcode", all.x = TRUE)

# find the column with the NA values
sapply(df_SIMD2020.3merge, function(x) sum(is.na(x)))
# find affected rows
df_SIMD2020.3merge[is.na(df_SIMD2020.3merge$Longitude),]

## Lets check for duplicates 
sapply(df_SIMD2020.3merge, function(x) sum(duplicated(x)))
# However, there is one duplicated postcode. The Postcodes should be 0
# let find it
# How much pair-wise duplicates?
sum(duplicated(df_SIMD2020.3merge[,c(40:41)]))
# those duplicates are the result data from the source data sets. British National Grid data has duplicate coordinates pairs and that is carried over to WGS84.

df_SIMD2020.3merge[duplicated(df_SIMD2020.3merge[,c(40:41)]),]
# I was kind of right. duplicated also picked up on the two NA in the postcodes

