
## Data Cleaning ##

##ESS-Data

setwd("~/Desktop/Replication")

ESS.data <- read.csv("ESS1-9e01_1.csv", header = T, na = "NA")

#Subsetting the data

ESS.subset <- subset(ESS.data, select = c(cntry, stfdem, gndr,agea, pdjobyr, hinctnta, clsprty, polintr, trstprl, eisced))

#Recoding the variables 

install.packages("car")
library(car)

ESS.subset$gndr.rc <- as.numeric(ESS.subset$gndr=="2")

ESS.subset$agea.rc <- recode(ESS.subset$agea,'0:21=1;22:30=2;31:40=3;41:50=4;51:60=5;61:70=6;71:90=7')

ESS.subset$pdjobyr.rc <- recode(ESS.subset$pdjobyr, '2012=1;1950:2012=0;c(6666,7777,8888,9999)="NA"')

ESS.subset$hinctnta.rc <- recode(ESS.subset$hinctnta, '1:3=1;4:7=2;8:10=3;c(77,88,99)="NA"')

ESS.subset$clsprty.rc <- recode(ESS.subset$clsprty,'2=0;c(7,8,9)="NA"')

ESS.subset$polintr.rc <- recode(ESS.subset$polintr,'c(7,8,9)="NA"')

ESS.subset$eisced.rc <- recode(ESS.subset$eisced,'c(2,3,4)=2;c(5,6)=3;7=4;c(55,0)="NA"')

#Treating refused answers, "Dont know" answers etc. as missing values - or should we use methods like multiple imputation?

ESS.subset <- subset(ESS.subset, select = - c(pdjobyr, hinctnta, polintr, eisced))

#### What is missing: Trust in Institutions Mean, Winner Loser Dummy Variable

#####################

## Golder 

setwd("~/Desktop/Replication")

Golder.data <- read.csv("es_data-v2_0_1.csv", header = T, na = "NA")

## DPI 

DPI.data <- read.csv("Database_of_political_institutions_2015.csv", header = T, na = "NA")
DPI.data$pr










# Data cleaning ESS6 political trust:
summary(ESS.data$cntry)
summary(ESS.data$trstprl)

# Just to get overview of data, we see a lot of NAs
is.na(ESS6)
# details of NAs, not helpful
ESS.data$ppltrst[ESS.data$trstprl=="na"]<-NA
# I tried to delete the Nas with that formula, but dosent work, it seems the NAs are not specified


# This is all for summarizing the data for the index of trust per country, where we can find the mean.
# political interest=pltit_cntry
# Most importantly, it already gives us the rows per country, which could be useful for future measures.

pltit_BE <- ESS.data[c(1202:3070),c(6,13:19)]
summary(pltit_BE)

pltit_BG <- ESS.data[c(3071:5330),c(6,13:19)]
summary(pltit_BG)

pltit_CH <- ESS.data[c(5331:6823),c(6,13:19)]
summary(pltit_CH)

pltit_CY <- ESS.data[c(6824:7939),c(6,13:19)]
summary(pltit_CY)

pltit_CZ <- ESS.data[c(7940:9948),c(6,13:19)]
summary(pltit_CZ)

pltit_DE <- ESS.data[c(9949:12906),c(6,13:19)]
summary(pltit_DE)

pltit_DK <- ESS.data[c(12907:14556),c(6,13:19)]
summary(pltit_DK)

pltit_EE <- ESS.data[c(14557:16936),c(6,13:19)]
summary(pltit_EE)

pltit_ES <- ESS.data[c(16937:18825),c(6,13:19)]
summary(pltit_ES)

pltit_FI <- ESS.data[c(18826:21022),c(6,13:19)]
summary(pltit_FI)

pltit_FR <- ESS.data[c(21023:22990),c(6,13:19)]
summary(pltit_FR)

pltit_GB <- ESS.data[c(22991:25276),c(6,13:19)]
summary(pltit_GB)

pltit_HU <- ESS.data[c(25277:27290),c(6,13:19)]
summary(pltit_HU)

pltit_IE <- ESS.data[c(27291:29918),c(6,13:19)]
summary(pltit_IE)

pltit_IL <- ESS.data[c(29919:32426),c(6,13:19)]
summary(pltit_IL)

pltit_IS <- ESS.data[c(32427:33178),c(6,13:19)]
summary(pltit_IS)

pltit_IT <- ESS.data[c(33179:34138),c(6,13:19)]
summary(pltit_IT)

pltit_LT <- ESS.data[c(34139:36247),c(6,13:19)]
summary(pltit_LT)

pltit_NL <- ESS.data[c(36248:38092),c(6,13:19)]
summary(pltit_NL)

pltit_NO <- ESS.data[c(38093:39716),c(6,13:19)]
summary(pltit_NO)

pltit_PL <- ESS.data[c(39717:41614),c(6,13:19)]
summary(pltit_PL)

pltit_PT <- ESS.data[c(42615:43765),c(6,13:19)]
summary(pltit_PT)

pltit_SE <- ESS.data[c(46250:48096),c(6,13:19)]
summary(pltit_SE)

pltit_SI <- ESS.data[c(38097:49353),c(6,13:19)]
summary(pltit_SI)

pltit_SK <- ESS.data[c(49354:51200),c(6,13:19)]
summary(pltit_SK)
