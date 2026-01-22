sim.task <- function(params...) {
  q <- rep(c(0, 1), times=c(3,17))
  res <- sample(q, 2)
  sum(res) == 1
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  sum(res) / n
}

prob.task(100000)