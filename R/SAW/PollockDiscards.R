library("readxl")
datafile <-  read_excel("~/Documents/NOAA/Stock Assessment/pollock.xlsx", sheet= 3, skip=2) 


b <- barplot(datafile$Total_Discards, main = "Pollock Discards", 
             axisnames=TRUE, xlab="Year", ylab= "Total Discards (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1989:2008
text(b[,1], -8, srt = 60, adj= 1, xpd = TRUE, labels = my_vector, cex=1)

#AREA5

library("readxl")
datafileOTLM <-  read_excel("~/Documents/NOAA/Stock Assessment/pollock.xlsx", sheet= 3, skip=2) 

b <- barplot(datafileOTLM$OtterTrawl_LM, main = "Otter Trawl (Large Mesh) Discards", 
             axisnames=TRUE, xlab="Year", ylab= "Total Discards (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1989:2008
text(b[,1], -8, srt = 60, adj= 1, xpd = TRUE, labels = my_vector, cex=1)

library("readxl")
datafileOTSM <-  read_excel("~/Documents/NOAA/Stock Assessment/pollock.xlsx", sheet= 3, skip=2) 

b <- barplot(datafileOTSM$OtterTrawl_SM, main = "Otter Trawl (Small Mesh) Discards", 
             axisnames=TRUE, xlab="Year", ylab= "Total Discards (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1989:2008
text(b[,1], -1, srt = 60, adj= 1, xpd = TRUE, labels = my_vector, cex=1)

library("readxl")
datafileGTLM <-  read_excel("~/Documents/NOAA/Stock Assessment/pollock.xlsx", sheet= 3, skip=2) 

b <- barplot(datafileGTLM$Gillnet_LM, main = "Gillnet (Large Mesh) Discards", 
             axisnames=TRUE, xlab="Year", ylab= "Total Discards (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1989:2008
text(b[,1], -5, srt = 60, adj= 1, xpd = TRUE, labels = my_vector, cex=1)

library("readxl")
datafileGTXLM <-  read_excel("~/Documents/NOAA/Stock Assessment/pollock.xlsx", sheet= 3, skip=2) 

b <- barplot(datafileGTXLM$Gillnet_XLM, main = "Gillnet (Extra Large Mesh) Discards", 
             axisnames=TRUE, xlab="Year", ylab= "Total Discards (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1989:2008
text(b[,1], -0.3, srt = 60, adj= 1, xpd = TRUE, labels = my_vector, cex=1)

library("readxl")
datafileGTXLM <-  read_excel("~/Documents/NOAA/Stock Assessment/pollock.xlsx", sheet= 3, skip=2) 

b <- barplot(datafileGTXLM$Gillnet_XLM, main = "Gillnet (Extra Large Mesh) Discards", 
             axisnames=TRUE, xlab="Year", ylab= "Total Discards (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1989:2008
text(b[,1], -0.3, srt = 60, adj= 1, xpd = TRUE, labels = my_vector, cex=1)

#AREA6

library("readxl")
datafileOTlm <-  read_excel("~/Documents/NOAA/Stock Assessment/pollock.xlsx", sheet= 3, skip=2) 

b <- barplot(datafileOTlm$OtterTrawl_lm, main = "Gillnet (Large Mesh) Discards", 
             axisnames=TRUE, xlab="Year", ylab= "Total Discards (mt)", names.arg= "", cex.axis= 0.8)
my_vector <- 1989:2008
text(b[,1], -0.08, srt = 60, adj= 1, xpd = TRUE, labels = my_vector, cex=1)

