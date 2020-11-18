library(visualize)
library(BSDA)
Machine1<-c(363,404,518,521,613,587,412,469,468,496)
Machine2<-c(536,474,556,549,479,422,414,505,505,552)

xone=mean(Machine1)
xone
xtwo=mean(Machine2)
xtwo

var(Machine1)
sd(Machine1)

var(Machine2)
sd(Machine2)

qt(p=0.05/2,df=18, lower.tail = FALSE)
qt(p=0.05/2,df=18, lower.tail = TRUE)
#Obtaining t-calculated value
t.test(x=Machine1,y=Machine2,var.equal = TRUE,conf.level = 0.95)
visualize.t(stat=c(2.100922,-2.100922),df=18,section="tails")

visualize.t(stat=c(-0.47061,0.47061),df=18,section="tails")
visualize.t(stat=c(-0.47061),df=18,section="upper")
visualize.t(stat=c(-0.47061),df=18,section="lower")
