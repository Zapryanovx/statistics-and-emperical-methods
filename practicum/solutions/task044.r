n <- 1000000
x = runif(n, -1, 1)
y = runif(n, -1, 1)
4 * sum(x^2 + y^2 < 1) / n 