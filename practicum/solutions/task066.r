mu <- 30
sigma <- sqrt(60^2 / 12)

a <- (25 - mu) / (sigma / sqrt(50))
b <- (35 - mu) / (sigma / sqrt(50))
pnorm(b, 0, 1) - pnorm(a, 0, 1)
