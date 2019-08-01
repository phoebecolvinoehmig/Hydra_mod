library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/redhake.xlsx", sheet= 1, skip=2) 


b <- barplot(datafile$Total_Discards, main = "Redhake Commercial Landings", 
             axisnames=TRUE, xlab="Year", ylab= "# of Landings", names.arg= "", cex.axis= 0.8)
my_vector <- 1964:2009
text(b[,1], -8, srt = 60, adj= 1, xpd = TRUE, labels = my_vector, cex=1)