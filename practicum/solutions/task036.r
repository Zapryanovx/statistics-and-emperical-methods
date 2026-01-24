#A
x1 <- rexp(200, 3)
plot(ecdf(x1))
curve(pexp(x, 3), add=T, lwd=2, col="red")

#B
x2 <- rexp(1000, 3)
plot(ecdf(x2))
curve(pexp(x, 3), add=T, lwd=2, col="red")
