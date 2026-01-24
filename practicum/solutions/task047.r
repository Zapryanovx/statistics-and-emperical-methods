u <- runif(5000, 0, 1)
hist(u, probability=T)

x <- -(1/(1/8)) * log(1 - u)
hist(x, probability=T)
curve(dexp(x, 1/8), from=0, to=max(x), add=T, lwd=2)
