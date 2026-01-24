#A
x1 <- runif(200, 7, 9)
plot(ecdf(x1))
curve(punif(x, 7, 9), add=T, lwd=2, col="red")

#B
x2 <- runif(1000, 7, 9)
plot(ecdf(x2))
curve(punif(x, 7, 9), add=T, lwd=2, col="red")
