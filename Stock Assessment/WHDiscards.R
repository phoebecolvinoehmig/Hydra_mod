library("readxl")
datafileLLN <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 2, skip=2) 

b <- barplot(datafileLLN$LLTotal, main = "White Hake Longline Discards (North)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -1, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileLLS <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 5, skip=2) 

b <- barplot(datafileLLS$LLTotal, main = "White Hake Longline Discards (South)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -0.05, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileLMN <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 2, skip=2) 

b <- barplot(datafileLMN$LMTotal, main = "White Hake Large Mesh Otter Trawl Discards (North)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -30, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)


library("readxl")
datafileLMS <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 5, skip=2) 


b <- barplot(datafileLMS$LMTotal, main = "White Hake Large Mesh Otter Trawl Discards (South)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -100, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)


library("readxl")
datafileSMN <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 2, skip=10) 


b <- barplot(datafileSMN$SMTotal, main = "White Hake Small Mesh Otter Trawl Discards (North)", 
             axi4snames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1989:2009
text(b[,1], -15, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileSMS <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 5, skip=10) 


b <- barplot(datafileSMS$SMTotal, main = "White Hake Small Mesh Otter Trawl Discards (South)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1989:2009
text(b[,1], -15, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

#stopped
library("readxl")
datafileSGS <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 5, skip=2)


b <- barplot(datafileSGS$SGTotal, main = "White Hake Sink Gill Net Discards (South)",
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -0.1, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 2, skip=2)


b <- barplot(datafile$SGTotal, main = "White Hake Sink Gill Net Discards (North)",
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -10, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileSDN <-  read_excel("~/Documents/NOAA/Stock Assessment/WHitehake.xlsx", sheet= 2, skip=2)


b <- barplot(datafileSDN$ScallopTotal, main = "White Hake Scallop Dredge Discards (North)",
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -3, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileSDS <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 5, skip=2)


b <- barplot(datafileSDS$ScallopTotal, main = "White Hake Scallop Dredge Discards (South)",
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -5, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileST <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 2, skip=2)


b <- barplot(datafileST$ShrimpTotal, main = "White Hake Shrimp Trawl Discards (North)",
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -2, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)