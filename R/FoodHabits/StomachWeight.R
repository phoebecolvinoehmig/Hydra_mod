#source("")
datafile <-  read.csv(file="foodHabits.csv", header=TRUE, sep=",")
modifieddata <- datafile[,c("svspp", "pdlen", "pdswgt")]

for (i in c(75,76,77)){
  
filt_data  <- modifieddata[modifieddata$svspp == i,]
stomach <- filt_data %>% mutate(interval = cut(pdlen, breaks=10*(0:130), labels= NULL)) %>% 
  group_by(interval) %>%
  summarise(result=mean(pdswgt,na.rm=T))

write.csv(stomach,file = paste("stomachweight",i,".csv", sep=""))
}