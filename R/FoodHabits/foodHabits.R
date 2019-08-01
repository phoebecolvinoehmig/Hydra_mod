#source("")
datafile <-  read.csv(file="foodHabits.csv", header=TRUE, sep=",")
modifieddata <- datafile[,c("svspp", "pynam","pyvoli")]
noNAs <- modifieddata[!is.na(modifieddata$pyvoli),]
redhake<- noNAs[noNAs[, "svspp"]==77, ]
redhake[redhake$svcospp==77, ]

write.csv(redhake,file = paste("species_77.csv"))

#redHake  = 77

#REDHAKE

# #matches all records where predator= first value in "predatorSpecies"
# speciesIndex <- (noNAs$svspp == 77)
# #selects all prey species corresponding to predator (first value in "predator species")
# preySpecies <- noNAs$pynam[speciesIndex]
# #select species volume too
# preySpecies <- sort(unique(preySpecies))
# 
# #write.csv(preySpecies,file = paste("species_77.csv"))



# #creating loops
# s <- 0
# for(i in 1:10){
#   print(i)
#   s <- s+i
# }
# print(s)