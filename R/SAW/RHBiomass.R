library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 4, skip=1) 


b <- barplot(datafile$Swept_Area_Biomass, main = "Red Hake Biomass (Fall)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1967:2009
text(b[,1], -500, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)

library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 5, skip=2) 


b <- barplot(datafile$Swept_Area, main = "Red Hake Biomass (Spring)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1968:2010
text(b[,1], -500, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)