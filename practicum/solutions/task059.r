library(MASS)
data(survey)
attach(survey)

hist(Height)
boxplot(Height, horizontal=T)

tapply(Height, Sex, median, na.rm=T)
tapply(Height, Sex, mean, na.rm=T)
tapply(Height, Sex, sd, na.rm=T)

boxplot(Height ~ Sex)
