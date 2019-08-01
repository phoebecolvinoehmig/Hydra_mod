#First had to change my working directory to my Weight Length folder from my Growth folder (use setwed())
#This calculated Length-weight relationship for the fish
LWformula <- function (a,L,b){
  W=a*L^b
  W=W*2.2046 # <- pink number = converting data from kilograms to lbs
  return(W)}