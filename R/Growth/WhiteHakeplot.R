source("growth_curve_function.R")
datafile <-  read.csv(file="whitehake_SV.csv", header=TRUE, sep=",")
modifiedData <- datafile[,c("AGE","LENGTH")]

#Calculating sample size
n <- length(modifiedData$AGE) -sum(is.na(modifiedData$AGE))

## white hake
  #Option1
wh_Linf <- 135 #<-Length
wh_K1 <- 0.218 # <- study 1
wh_K2 <- 0.106 # <- study 2
wh_t <- 0:30 # <- Time
Lengthof_wh1 <- wh_Linf*(1-exp(-wh_K1*wh_t))
Lengthof_wh2 <- wh_Linf*(1-exp(-wh_K2*wh_t))
  #Option2
    #Study1
Lengthof_wh1 <- growthCurve(t= 0:30, k= 0.218, Linf= 133)
    #Study2
Lengthof_wh2 <- growthCurve(t= 0:30, k= 0.106, Linf= 133)

## white hake growth curve
  #Study1
plot(wh_t,Lengthof_wh1,type="l", xlab= "Age (years)", ylab= "Length",col=c("red"))
  #Study2
points(wh_t,Lengthof_wh2, type="l", xlab= "Age (years)", ylab= "Length",col=c( "blue"))

#Plotting survey data
points(modifiedData$AGE, modifiedData$LENGTH)

title(main="White Hake (L_inf= 133cm)")
legend(13,30, legend=c("Southern Gulf of St. Lawrence, CA Study 1 (K= 0.218)", "Southern Gulf of St. Lawrence, CA Study 2 (K=0.106)",
                       paste("Survey Data (n=",n,")")),col=c("red", "blue", "black"), lty= c(1, 1, NA), pch= c(NA, NA, 1), cex=0.8)


