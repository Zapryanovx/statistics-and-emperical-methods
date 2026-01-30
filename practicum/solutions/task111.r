sat <- read.table("../data/satgpa.txt", header=T)
attach(sat)

#A
m <- lm(fy_gpa ~ hs_gpa)
coef(m)
plot(hs_gpa, fy_gpa)
abline(m, lwd=2)

#B
summary(m)

#C
predict(m, data.frame(hs_gpa=3.5), interval="confidence")
predict(m, data.frame(hs_gpa=3.5), interval="prediction")

#D
m2 <- lm(fy_gpa ~ hs_gpa + sat_v + sat_m)
summary(m2)
c(summary(m)$adj.r.squared, summary(m2)$adj.r.squared)
