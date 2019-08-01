library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 1, skip=1) 


b <- barplot(datafile$Total, main = "Whitehake Commercial Landings", 
             axisnames=TRUE, xlab="Year", ylab= "# of Landings", names.arg= "", cex.axis= 0.8)
my_vector <- 1962:2011
text(b[,1], -100, srt = 60, adj= 1, xpd = TRUE, labels = my_vector, cex=0.8)