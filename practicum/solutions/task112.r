cherry <- read.table("../data/cherry.txt", header=T)
attach(cherry)

#A
m1 <- lm(volume ~ diam)
coef(m1)
plot(diam, volume)
abline(m1, lwd=2)

#B
summary(m1)

#C
m2 <- lm(volume ~ diam + height)
summary(m2)

#D
predict(m2, data.frame(diam=14, height=70), interval="confidence")

#E
m3 <- lm(volume ~ diam + I(diam^2) + height)
summary(m3)
predict(m3, data.frame(diam=14, height=70), interval="confidence")
