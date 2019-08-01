##REDHAKE
source("Growth/growth_curve_function.R")
datafile <-  read.csv(file="Growth/redhake_SV.csv", header=TRUE, sep=",")
modifiedData <- datafile[,c("AGE","LENGTH")]

#sample size
n <- length(modifiedData$AGE) -sum(is.na(modifiedData$AGE))

#rh_Linf <- 66
#rh_K1 <- 0.19
#rh_t <- 0:30
#Lengthof_rh1 <- rh_Linf*(1-exp(-rh_K1*rh_t))
Lengthof_rh1 <- growthCurve(t= 0:30, k= 0.19, Linf= 66)
rh_pointst <- c(1,2,3)
rh_pointsl <- c(8,13,16)

#north west atlantic
plot(rh_t,Lengthof_rh1, type="le", xlab= "Age (years)", ylab= "Length",col=c("red"))
#bay of fundy
points(rh_pointst, rh_pointsl,pch= 19, col=c( "blue"))
#survey data
points(modifiedData$AGE, modifiedData$LENGTH)

title(main="Red Hake (L_inf= 66cm)")
legend(20,40, legend=c("North West Atlantic, US (K=0.19)", "Bay of Fundy, CA",
                       paste("Survey Data (n=",n,")")),col=c("red", "blue", "black"),
       lty=c(1,NA,NA),pch= c(NA, 19 , 1), cex=0.8)
