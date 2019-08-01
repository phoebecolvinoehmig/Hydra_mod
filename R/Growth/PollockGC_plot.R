source("growth_curve_function.R") # <- created a function to calculate Von Bertanalanfy growth curve using K and Linf as arguments on another sheet
#Importing data from Commerical Fisheries (CF)
datafile <-  read.csv(file="pollockData_CF.csv", header=TRUE, sep=",")
modifiedData <- datafile[,c("AGE","LENGTH")]
datafileSV <- read.csv(file="pollockData_SV.csv", header=TRUE, sep=",")
modifiedSV <- datafileSV[,c("AGE", "LENGTH")]

#Sample size of survey and commercial fisheries data
nSV <- length(modifiedSV$AGE) -sum(is.na(modifiedSV$AGE))
nCF <- length(modifiedData$AGE) - sum(is.na(modifiedData$AGE))

## Pollock
  #Option1
p_Linf <- 130
p_K1 <- 0.17
p_K2 <- 0.1
p_t <- 0:30
Lengthof_p1 <- p_Linf*(1-exp(-p_K1*p_t))
Lengthof_p2 <- p_Linf*(1-exp(-p_K2*p_t))
  #Option2
Lengthof_p1 <- growthCurve(t= 0:30, k= 0.17, Linf= 130)
Lengthof_p2 <- growthCurve(t= 0:30, k= 0.1, Linf= 130)

##Plotting the Growth curve
plot(0:30,Lengthof_p1,type="l", xlab= "Age (years)", ylab= "Length", col=c("red"))
lines(p_t, Lengthof_p2, type= "l", col=c("blue"))
  #Plotting CFData
points(modifiedData$AGE,modifiedData$LENGTH)
  #Plotting Survey Data
points(modifiedSV$AGE,modifiedSV$LENGTH, pch=0)
title(main="Pollock (L_nf=130cm)")
legend(16,60, legend=c("Nova Scotia, CA (K=0.1)", "Northwest Atlantic, CA (K=0.17)",
                       paste("Commercial Fishing Data (1976-2018, n=",nCF,")"),
                       paste("Survey Data (n=",nSV,")")),col=c("red", "blue", "black", "black"),
                             lty= c(1,1, NA, NA), pch= c(NA, NA, 1, 0), cex=0.8)

