x <- rexp(5000, 1/8)
hist(x, probability=T)

y <- 1 - exp(-x/8)
hist(y, probability=T)
