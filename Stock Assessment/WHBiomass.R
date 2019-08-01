library("readxl")
datafilespring <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 3, skip=3) 


b <- barplot(datafilespring$Mean, main = "White Hake Biomass (Spring)", 
             axisnames=TRUE, xlab="Year", ylab= "Mean biomass per tow (kg)", names.arg= "", cex.axis= 0.8)
my_vector <- 1968:2012
text(b[,1], -1, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)


datafilefall <-  read_excel("~/Documents/NOAA/Stock Assessment/Whitehake.xlsx", sheet= 4, skip=3) 


b <- barplot(datafilefall$Mean, main = "White Hake Biomass (Fall)", 
             axisnames=TRUE, xlab="Year", ylab= "Mean biomass per tow (kg)", names.arg= "", cex.axis= 0.8)
my_vector <- 1963:2012
text(b[,1], -0.5, srt = 60, adj= 1, xpd = TRUE, labels = my_vector , cex=0.8)
