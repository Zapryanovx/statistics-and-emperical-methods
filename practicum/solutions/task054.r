library(MASS)
data(survey)
attach(survey)

tapply(Pulse, W.Hnd, median, na.rm=T)
tapply(Pulse, W.Hnd, mean, na.rm=T)
tapply(Pulse, W.Hnd, sd, na.rm=T)

boxplot(Pulse ~ W.Hnd)
