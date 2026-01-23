#A
x1 <- rnorm(500, 0, 1)
hist(x1, probability=T)
curve(dnorm(x, 0, 1), add=T, lwd=2)

#B
x2 <- rnorm(5000, 0, 1)
hist(x2, probability=T)
curve(dnorm(x, 0, 1), add=T, lwd=2)