
load("../data/cereals.RData")

summary(cereals)
attach(cereals)

summary(carbo)
mean(carbo, na.rm=T)
sd(carbo, na.rm=T)
hist(carbo)
boxplot(carbo, horizontal=T)

summary(sodium)
mean(sodium, na.rm=T)
sd(sodium, na.rm=T)
hist(sodium)
boxplot(sodium, horizontal=T)

summary(potass)
mean(potass, na.rm=T)
sd(potass, na.rm=T)
hist(potass)
boxplot(potass, horizontal=T)
