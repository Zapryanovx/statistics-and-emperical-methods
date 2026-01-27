library(MASS)
data(survey)
attach(survey)

tapply(Pulse, Exer, median, na.rm=T)
tapply(Pulse, Exer, mean, na.rm=T)
tapply(Pulse, Exer, sd, na.rm=T)

boxplot(Pulse ~ Exer)
