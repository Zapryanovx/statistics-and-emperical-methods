sim.task <- function(params...) {
  p <- rep(c(0, 1), times=c(18, 2))
  res <- sample(p, 20)
  at <- which(res > 0) 
  abs(at[2] - at[1]) == 1
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  sum(res) / n
}

prob.task(100000)