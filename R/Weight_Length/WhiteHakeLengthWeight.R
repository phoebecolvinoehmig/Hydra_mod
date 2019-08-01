source("Weight:Length/LWformula.R")
datafile <-  read.csv(file="Weight:Length/whitehake_SV.csv", header=TRUE, sep=",")
modifiedData <- datafile[,c("INDWT","LENGTH")]

#Sample size
n <- length(modifiedData$INDWT) -sum(is.na(modifiedData$INDWT))

## White Hake
op = par(mfrow=c(1,1))

#Cape Hatteras to Nova Scotia (Autumn)
p_a<- 0.000004119
p_b <- 3.1715
p_L <- 0:133

#Winter
p_a2<- 0.000001904
p_b2 <- 3.3669
p_L2 <- 0:133

#Spring
p_a3<- 0.000002376
p_b3 <- 3.2903
p_L3 <- 0:133
LWformula(a=p_a,b=p_b,L=p_L)
CH2NSAutumn <- LWformula(a=p_a,b=p_b,L=p_L)
CH2GBWinter <- LWformula(a=p_a2,b=p_b2,L=p_L2)
CH2GBSpring <- LWformula(a=p_a3,b=p_b3,L=p_L3)

plot(CH2NSAutumn,type="l", xlab= "Length (cm)", ylab= "Weight (lbs)", col=c("red"))
lines(CH2GBWinter, col=c("blue"))
lines(CH2GBSpring, col=c("green"))
#Survey data
points(modifiedData$LENGTH,modifiedData$INDWT*2.2046)

title(main="White Hake (L_nf= 133cm)")
legend(0,30, legend=c("Cape Hatteras, NC to Nova Scotia (Autumn)", "Cape Hatteras, NC to southern flank of George's Bank (Winter)", "Cape Hatteras, NC to southern flank of George's Bank (Spring)", 
                     paste("Survey Data (n=",n,")")), col=c("red", "blue", "green", "black"), lty= c(1,1,1,NA), pch=c(NA,NA,NA,1), cex=0.8)