#A
x1 <- rnorm(200, 4, 1.2)
plot(ecdf(x1))
curve(pnorm(x, 4, 1.2), add=T, lwd=2, col="red")

#B
x2 <- rnorm(1000, 4, 1.2)
plot(ecdf(x2))
curve(pnorm(x, 4, 1.2), add=T, lwd=2, col="red")
