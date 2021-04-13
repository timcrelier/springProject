#Loading the Data into R

## ESS Data

setwd("~/Desktop/Replication")

ESS.data <- read.csv("ESS1-9e01_1.csv", header = T, na = "NA")
ESS.data$agea

## Golder 

setwd("~/Desktop/Replication")

Golder.data <- read.csv("es_data-v2_0_1.csv", header = T, na = "NA")

## DPI 

DPI.data <- read.csv("Database_of_political_institutions_2015.csv", header = T, na = "NA")
DPI.data$pr

#Subsetting the data

##ESS

ESS.subset <- subset(ESS.data, select = c(cntry, stfdem, gndr,agea, pdjobyr, hinctnta, clsprty, polintr, trstprl))
# Winner and Education is missing

#Recoding the variables 

##ESS 

#Using the car library

install.packages("car")
library(car)

# How to go about values that are not anwered? 

ESS.subset$gndr.rc <- as.numeric(ESS.subset$gndr=="2")
ESS.subset$clsprty.rc <- as.numeric(ESS.subset$clsprty=="1")

ESS.subset$agea.rc <- recode(ESS.subset$agea,'"<21"=1;"22-30"=2;"31-40"=3;"41-50"=4;"51-60"=5;"61-70"=6;">71"=7')
EES.subset$hinctnta.rc <- recode(ESS.subset$hinctnta, '"1-3"=1;"4-7"=2;"8-10"=3')

#Treating refused answers, "Dont know" answers as missing values"? 

ESS.subset <- subset (ESS.subset, select = - c(gndr, agea))
