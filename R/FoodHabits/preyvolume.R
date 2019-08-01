#source("")
datafile <-  read.csv(file="foodHabits.csv", header=TRUE, sep=",")
modifieddata <- datafile[,c("svspp", "pynam","pyvoli")]
noNAs <- modifieddata[!is.na(modifieddata$pyvoli),]
library(dplyr)
library(scales)
library(eeptools)
data(stulevel)
preyvolume <- noNAs %>% 
  group_by(svspp, pynam) %>% 
   summarise(result=sum(pyvoli)) %>% 
    arrange(.,svspp,desc(result) ) %>% 
    group_by(svspp) %>% 
    mutate(total = sum(result)) %>%
    mutate(percentages=round((result/total)*100, digits=4))

for (i in c(75,76,77)){
  csvs <- preyvolume[preyvolume$svspp == i,]  
  write.csv(csvs, file = paste("species",i,".csv", sep = ""))
}


# preyvolume <- preyvolume[order(preyvolume$result, decreasing = FALSE)

#redhake<- noNAs[noNAs[, "svspp"]==77, ]
#redhake[redhake$svcospp==77, ]

write.csv(preyvolume,file = paste("species_77.csv"))
