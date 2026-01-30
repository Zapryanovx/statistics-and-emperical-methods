x <- runif(50, 1, 7)
y <- 2 + 1.1*x^2 + rnorm(50, 0, 2.5)

m <- lm(y ~ x)
plot(x, y)
abline(m, lwd=2)
summary(m)$r.squared
