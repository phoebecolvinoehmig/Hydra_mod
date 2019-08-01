library("readxl")
datafileLT <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 1, skip=1) 

b <- barplot(as.numeric(datafileLT$Line_Trawl), main = "White Hake Line Trawl Commercial Landings", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1962:2011
text(b[,1], -2, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileBOT <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 1, skip=1) 

b <- barplot(as.numeric(datafileBOT$Bottom_Otter_Trawl), main = "White Hake Bottom Otter Trawl Commercial Landings", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1962:2011
text(b[,1], -100, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileSGN <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 1, skip=1) 

b <- barplot(as.numeric(datafileSGN$Sink_Gill_Net), main = "White Hake Sink Gill Net Commercial Landings", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1962:2011
text(b[,1], -75, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileO <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 1, skip=1) 

b <- barplot(as.numeric(datafileO$Other), main = "White Hake Other Commercial Landings", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1962:2011
text(b[,1], -3, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)