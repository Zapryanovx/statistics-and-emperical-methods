x <- rnorm(100, 5, 1)

y1 <- 2*x
y2 <- 2*x + rnorm(100, 0, 1)
y3 <- 2*x + rnorm(100, 0, 2)
y4 <- 0.1*x + rnorm(100, 0, 2)
y5 <- rnorm(100, 5, 1)
y6 <- -2*x + rnorm(100, 0, 1)

par(mfrow=c(2,3))
plot(x, y1)
plot(x, y2)
plot(x, y3)
plot(x, y4)
plot(x, y5)
plot(x, y6)
par(mfrow=c(1,1))

c(cor(x, y1), cor(x, y2), cor(x, y3), cor(x, y4), cor(x, y5), cor(x, y6))
