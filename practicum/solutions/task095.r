sim.task <- function(n) {
  x <- runif(n, 5, 9)
  test <- t.test(x, mu=7)
  test$p.value > 0.05
}

prob.task <- function(n) {
  res <- replicate(10000, sim.task(n))
  sum(res) / 10000
}

sapply(c(20, 50, 100, 500), prob.task)
