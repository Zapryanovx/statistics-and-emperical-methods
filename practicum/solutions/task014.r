sim.task <- function(params...) {
  b <- 1:99
  res <- sample(b, 4)
  max(res) == res[1]
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  sum(res) / n
}

prob.task(100000)
