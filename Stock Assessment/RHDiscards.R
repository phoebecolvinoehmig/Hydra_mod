library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 2, skip=2) 

b <- barplot(datafile$LonglineTotal, main = "Red Hake Longline Discards (North)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -1, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 3, skip=2) 

b <- barplot(datafile$LonglineTotal, main = "Red Hake Longline Discards (South)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -0.2, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 2, skip=2) 

b <- barplot(datafile$LargemeshTotal, main = "Red Hake Large Mesh Otter Trawl Discards (North)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -30, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)


library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 3, skip=2) 


b <- barplot(datafile$LargeMeshTotal, main = "Red Hake Large Mesh Otter Trawl Discards (South)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -100, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)


library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 2, skip=10) 


b <- barplot(datafile$SmallmeshTotal, main = "Red Hake Small Mesh Otter Trawl Discards (North)", 
             axi4snames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1989:2009
text(b[,1], -15, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 3, skip=10) 


b <- barplot(datafile$SmallmeshTotal, main = "Red Hake Small Mesh Otter Trawl Discards (South)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1989:2009
text(b[,1], -15, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileSGN <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 2, skip=2) 


b <- barplot(datafileSGN$sinkgillTotal, main = "Red Hake Sink Gill Net Discards (North)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -0.5, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafileSGS <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 3, skip=2) 


b <- barplot(datafileSGS$SinkGillTotal, main = "Red Hake Sink Gill Net Discards (South)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -0.5, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)


datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 2, skip=2) 


b <- barplot(datafile$scallopTotal, main = "Red Hake Scallop Dredge Discards (North)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -0.5, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 3, skip=2) 


b <- barplot(datafile$ScallopTotal, main = "Red Hake Scallop Dredge Discards (South)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -5, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 2, skip=2) 


b <- barplot(datafile$shrimpTotal, main = "Red Hake Shrimp Trawl Discards (North)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -5, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)
