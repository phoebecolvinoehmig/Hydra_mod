#source("")
datafile <-  read.csv(file="foodHabits.csv", header=TRUE, sep=",")
modifieddata <- datafile[,c("svspp", "pdlen", "pdswgt")]

for (i in c(75,76,77)){
  
  filt_data  <- modifieddata[modifieddata$svspp == i,]
  stomach <- filt_data %>% mutate(interval = cut(pdlen, breaks=10*(0:130), labels= NULL)) %>% 
    group_by(interval) %>%
    summarise(result=mean(pdswgt,na.rm=T))
  if(i==75){
    title <- "Pollock (L_nf=130cm)"
  }else if (i==76){
    title <- "Whitehake (L_nf= 133cm)"
  }else if (i==77) {
    title <- "Redhake (L_inf= 66cm)"
  }
  print(i)
  if(i==75){
    names.arg=c( "0-10", "10-20", "20-30", "30-40", "40-50", "50-60",
                 "60-70", "70-80", "80-90", "90-100", "100-110", "110-120")
    }else if(i==76){
      names.arg=c( "0-10", "10-20", "20-30", "30-40", "40-50", "50-60",
                   "60-70", "70-80", "80-90", "90-100", "100-110", "110-120", "120-130","130-140")
  }else if(i==77){
    names.arg=c( "0-10", "10-20", "20-30", "30-40", "40-50", "50-60","60-70","70-80","80-90")
  }
  barplot(stomach$result, main = title, xlab="Length (cm)", ylab="Stomach Content Volume (g)" , names.arg = names.arg, cex.names=0.6)
}
