library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/pollock.xlsx", sheet= 1, skip=1) 


b <- barplot(datafile$us_landings, main = "Pollock Commercial Landings", 
        axisnames=TRUE, xlab="Year", ylab= "Total Landings (mt)", names.arg= "", cex.axis= 1)
my_vector <- 1960:2009
text(b[,1], -300, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.7)
