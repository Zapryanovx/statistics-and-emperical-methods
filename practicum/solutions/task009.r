sim.task <- function(params...) {
  a <- c(0, 0, 0, 1)
  res <- sample(a, 10, replace=TRUE)
  sum(res) >= 5
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  sum(res) / n
}

prob.task(100000)