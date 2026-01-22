sim.task <- function(params...) {
  x <- c(1, 0, 0, 0)
  res <- sample(x, 4)
  res[4] == 1
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  sum(res) / n
}

prob.task(100000)