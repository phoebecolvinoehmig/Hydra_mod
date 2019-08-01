library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 1, skip=1) 


b <- barplot(datafile$Northern_Total, main = "Redhake Commercial Landings", 
             axisnames=TRUE, xlab="Year", ylab= "# of Landings", names.arg= "", cex.axis= 0.8)
my_vector <- 1964:2009
text(b[,1], -20, srt = 60, adj= 1, xpd = TRUE, labels = my_vector, cex=0.8)

library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Redhake.xlsx", sheet= 1, skip=1) 


b <- barplot(datafile$Southern_Total, main = "Redhake Commercial Landings", 
             axisnames=TRUE, xlab="Year", ylab= "# of Landings", names.arg= "", cex.axis= 0.8)
my_vector <- 1964:2009
text(b[,1], -20, srt = 60, adj= 1, xpd = TRUE, labels = my_vector, cex=0.8)