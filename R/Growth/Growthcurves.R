source("growth_curve_function.R")

##REDHAKE
##Option1
#rh_Linf <- 66
#rh_K1 <- 0.19
#rh_t <- 0:30
#Lengthof_rh1 <- rh_Linf*(1-exp(-rh_K1*rh_t))

##Option2
Lengthof_rh1 <- growthCurve(t= 0:30, k= 0.19, Linf= 66)
rh_pointst <- c(1,2,3)
rh_pointsl <- c(8,13,16)


## white hake
##Option1
#wh_Linf <- 135
#wh_K1 <- 0.218
#wh_K2 <- 0.106
#wh_t <- 0:30
#Lengthof_wh1 <- wh_Linf*(1-exp(-wh_K1*wh_t))
#Lengthof_wh2 <- wh_Linf*(1-exp(-wh_K2*wh_t))

##Option2
Lengthof_wh1 <- growthCurve(t= 0:30, k= 0.218, Linf= 133)
Lengthof_wh2 <- growthCurve(t= 0:30, k= 0.106, Linf= 133)

## Pollock
  ##Option1
#p_Linf <- 130
#p_K1 <- 0.17
#p_K2 <- 0.1
#p_t <- 0:30
#Lengthof_p1 <- p_Linf*(1-exp(-p_K1*p_t))
#Lengthof_p2 <- p_Linf*(1-exp(-p_K2*p_t))
  ##Option2
Lengthof_p1 <- growthCurve(t= 0:30, k= 0.17, Linf= 130)
Lengthof_p2 <- growthCurve(t= 0:30, k= 0.1, Linf= 130)


#png("~/testplot.png")
par(mfrow = c(3,1)) #only need this once to get multiple plots on one figure 

# red hake
plot(rh_t,Lengthof_rh1, type="le", xlab= "Time (years)", ylab= "Length",col=c("red"))
points(rh_pointst, rh_pointsl,col=c( "blue"))
title(main="Red Hake (L_inf= 66cm)")
legend(20,40, legend=c("North West Atlantic, US (K=0.19)", "Bay of Fundy, CA"),col=c("red", "blue"), lty=1, cex=0.8)

# white hake
plot(wh_t,Lengthof_wh1,type="l", xlab= "Time (years)", ylab= "Length",col=c("red"))
points(wh_t,Lengthof_wh2, type="l", xlab= "Time (years)", ylab= "Length",col=c( "blue"))
title(main="White Hake (L_inf= 133cm)")
legend(17,80, legend=c("Southern Gulf of St. Lawrence, CA Study 1 (K= 0.218)", "Southern Gulf of St. Lawrence, CA Study 2 (K=0.106)"),col=c("red", "blue"), lty=1, cex=0.8)

#pollock
plot(p_t,Lengthof_p1,type="l", xlab= "Time (years)", ylab= "Length", col=c("red"))
lines(p_t, Lengthof_p2, col=c("blue"))
title(main="Pollock (L_nf=130cm)")
legend(20,60, legend=c("Nova Scotia, CA (K=0.1)", "Northwest Atlantic, CA (K=0.17)"),col=c("red", "blue"), lty=1, cex=0.8)

#dev.off() #Sean showing me ggplot stuff
library(ggplot2)
library(tidyr)
library(cowplot)

plt <- data.frame(time = 0:30,
                  white_hake = Lengthof_wh1,
                  white_hake2  = Lengthof_wh2)

long_df <- tidyr::gather(plt, Variable, Value, -time)

pollock <- data.frame(time = 0:30,
                  pollock = Lengthof_p1,
                  pollock2  = Lengthof_p2)

long_df <- tidyr::gather(pollock, Variable, Value, -time)

plot_2 <- ggplot(data = long_df) +
  geom_line(aes(x = time,
                y = Value, color = Variable)) +
  ylab("Length") +
  xlab("Time (yrs)") +
  theme_bw()


cowplot::plot_grid(plot_1, plot_2, ncol = 2)


