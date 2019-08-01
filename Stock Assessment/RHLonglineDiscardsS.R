library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 3, skip=2) 


b <- barplot(datafile$LonglineTotal, main = "Red Hake Discards (South)", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1981:2009
text(b[,1], -0.2, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)