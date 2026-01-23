x <- runif(5000, 2, 3)
hist(x, probability=T)
curve(dunif(x, 2, 3), from=2, to=3, add=T, lwd=2)