
load("cereals.RData")

summary(cereals)
attach(cereals)

summary(carbo)
mean(carbo, na.rm=T)
sd(carbo, na.rm=T)
my.summary(carbo)
hist(carbo)
boxplot(carbo, horizontal=T)

summary(sodium)
mean(sodium, na.rm=T)
sd(sodium, na.rm=T)
my.summary(sodium)
hist(sodium)
boxplot(sodium, horizontal=T)

summary(potass)
mean(potass, na.rm=T)
sd(potass, na.rm=T)
my.summary(potass)
hist(potass)
boxplot(potass, horizontal=T)