sim.task <- function(params...) {
  x <- c(1:20)
  res <- sample(x, 20)
  any(res == x)
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  sum(res) / n
}

prob.task(100000)