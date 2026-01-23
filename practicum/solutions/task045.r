x1 <- rnorm(100000, 0, 1)
sum(x1 > 0.8 & x1 < 4) / length(x1)
