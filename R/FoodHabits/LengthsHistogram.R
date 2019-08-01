#source("")
datafile <-  read.csv(file="foodHabits.csv", header=TRUE, sep=",")

modifieddata <- datafile[,c("svspp", "pdlen")]

unique(modifieddata$svspp)

for (i in c(75,76,77)){
  filt_data  <- modifieddata[modifieddata$svspp == i,]
    if(i==75){
      title <- "Pollock (L_nf=130cm)"
    }else if (i==76){
        title <- "Whitehake (L_nf= 133cm)" 
      }else if (i==77) {
        title <- "Redhake (L_inf= 66cm)"
      }
  hist(filt_data$pdlen, main = title, xlab="Length (cm)")
}
