source("~/documents/NOAA/R/Weight:Length/LWformula.R") # <- function for Length Weight formula
datafile <-  read.csv(file="Weight:Length/pollock_SV.csv", header=TRUE, sep=",")
modifiedData <- datafile[,c("INDWT","LENGTH")] # <- only wanted to compare weight (INDWT) and length

#Finding the sample size and removing any incomplete rows (taking out the NAs)
n <- length(modifiedData$INDWT) -sum(is.na(modifiedData$INDWT))

## Pollock
op = par(mfrow=c(1,1))

#Cape Hatteras to Nova Scotia (Autumn)
p_a<- 0.000007244
p_b <- 3.1151
p_L <- 0:130

#Cape Hatteras, NC to southern flank of George's Bank (Winter/Spring)
p_a2<- 0.000006788
p_b2 <- 3.1024
p_L2 <- 0:130

#Inserting the variables into the formula
LWformula(a=p_a,b=p_b,L=p_L)
CH2NSAutumn <- LWformula(a=p_a,b=p_b,L=p_L)
CH2GBWinterSpring <- LWformula(a=p_a2,b=p_b2,L=p_L2)

#Plotting
  #Autumn
plot(CH2NSAutumn,type="l", xlab= "Length (cm)", ylab= "Weight (lbs)", col=c("red"))
  #Winter/spring
lines(CH2GBWinterSpring, col=c("blue"))
  #Survey Data
points(modifiedData$LENGTH,modifiedData$INDWT*2.2046)
title(main="Pollock (L_nf=130cm)")
legend(0,40, legend=c("Cape Hatteras, NC to Nova Scotia (Autumn)", "Cape Hatteras, NC to southern flank of George's Bank (Winter/Spring)", 
                      paste("Survey Data (n=",n,")")), col=c("red", "blue", "black"), lty= c(1,1,NA), pch=c(NA,NA,1), cex=0.8)