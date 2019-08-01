#This calculated Von Bertanalanfy growth curve using K and Linf as arguments
growthCurve <- function (t,k, Linf){
  lengthof <- Linf*(1-exp(-k*t))
  return(lengthof)}
  