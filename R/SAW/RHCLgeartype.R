library("readxl")
datafileLLN <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 1, skip=1) 

b <- barplot(as.numeric(datafileLLN$LL_N), main = "Red Hake Longline Commercial Landings (North)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1964:2009
text(b[,1], -2, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileLLS <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 1, skip=1) 

b <- barplot(as.numeric(datafileLLS$LL_S), main = "Red Hake Longline Commercial Landings (South)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1964:2009
text(b[,1], -1, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileOTFN <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 1, skip=1) 

b <- barplot(as.numeric(datafileOTFN$OTF_N), main = "Red Hake OTF (North)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1964:2009
text(b[,1], -10, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileOTFS <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 1, skip=1) 

b <- barplot(as.numeric(datafileOTFS$OTF_S), main = "Red Hake OTF (South)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1964:2009
text(b[,1], -500, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileOTSN <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 1, skip=1) 

b <- barplot(as.numeric(datafileOTSN$OTS_N), main = "Red Hake OTS (North)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1964:2009
text(b[,1], -5, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileSGNN <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 1, skip=1) 

b <- barplot(as.numeric(datafileSGNN$SGN_N), main = "Red Hake Sink Gill Net (North)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1964:2009
text(b[,1], -3, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileSGNS <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 1, skip=1) 

b <- barplot(as.numeric(datafileSGNS$SGN_S), main = "Red Hake Sink Gill Net (South)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1964:2009
text(b[,1], -0.3, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileOTHN <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 1, skip=1) 

b <- barplot(as.numeric(datafileOTHN$OTH_N), main = "OTH (North)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1964:2009
text(b[,1], -0.3, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileOTHS <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 1, skip=1) 

b <- barplot(as.numeric(datafileOTHS$OTH_N), main = "OTH (South)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1964:2009
text(b[,1], -0.3, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)
