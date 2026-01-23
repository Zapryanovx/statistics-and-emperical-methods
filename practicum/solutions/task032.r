#A
x1 <- runif(500, 3, 5)
hist(x1, probability=T)
curve(dunif(x, 3, 5), from=3, to=5, add=T, lwd=2)

#B
x2 <- runif(5000, 3, 5)
hist(x2, probability=T)
curve(dunif(x, 3, 5), from=3, to=5, add=T, lwd=2)
