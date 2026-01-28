x <- c(4, 5, 6, 7)
p <- c(0.2, 0.4, 0.3, 0.1)

mu <- sum(x * p)
sigma <- sqrt(sum(x^2 * p) - mu^2)

a <- (5.5 - mu) / (sigma / sqrt(49))
1 - pnorm(a, 0, 1)
