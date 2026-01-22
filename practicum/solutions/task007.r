sim.task <- function(params...) {
  xEnd <- sample(c(2,3), 1)
  yEnd <- sample(c(1,3), 1)
  zEnd <- sample(c(1,2), 1)
  length(unique(c(xEnd, yEnd, zEnd))) == 3
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  sum(res) / n
}

prob.task(100000)