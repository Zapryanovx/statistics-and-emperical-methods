bac.data <- read.table("../data/bac.txt", header=T)
attach(bac.data)

#A
m <- lm(bac ~ beers)
coef(m)
plot(beers, bac)
abline(m, lwd=2)

#B
summary(m)

#C
summary(m)$coefficients["beers", "Pr(>|t|)"]

#D
b1 <- summary(m)$coefficients["beers", "Estimate"]
se <- summary(m)$coefficients["beers", "Std. Error"]
t.obs <- (b1 - 0.02) / se
2 * (1 - pt(abs(t.obs), df=m$df.residual))

#E
predict(m, data.frame(beers=5), interval="confidence")

#F
new <- data.frame(beers=seq(1, 9, 0.1))
conf <- predict(m, new, interval="confidence")
pred <- predict(m, new, interval="prediction")
lines(new$beers, conf[, "lwr"], col="blue")
lines(new$beers, conf[, "upr"], col="blue")
lines(new$beers, pred[, "lwr"], col="red")
lines(new$beers, pred[, "upr"], col="red")
