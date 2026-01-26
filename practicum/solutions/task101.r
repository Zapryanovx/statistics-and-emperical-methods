load("pi2000.RData")
table(pi2000)
pi2000

data <- c(181, 213,207, 189,195, 205, 200, 197, 202, 211)
probs <- (rep(1/10, 10))
chisq.test(data, p=probs)