library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/pollock.xlsx", sheet= 2, skip=1) 


b <- barplot(datafile$Total, main = "Pollock Biomass", 
             axisnames=TRUE, xlab="Year", ylab= "Total Biomass (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1970:2009
text(b[,1], -8000, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)
