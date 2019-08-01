#source("")
datafile <-  read.csv(file="foodHabits.csv", header=TRUE, sep=",")

#picks out unique set of predators
species <- unique(datafile$svspp)

#REDHAKE
for(i in 1:3) {
  #matches all records where predator= first value in "predatorSpecies"
  speciesIndex <- (datafile$svspp == species[3])
  #selects all prey species corresponding to predator (first value in "predator species")
  preySpecies <- datafile$pynam[speciesIndex]
  preySpecies <- sort(unique(preySpecies))
  
  print(preySpecies)
}
