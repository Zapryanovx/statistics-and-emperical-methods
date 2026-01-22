sim.task <- function(params...) {
  x <- c(1:365)
  res <- sample(x, 25, replace=TRUE)
  length(res) != length(unique(res))
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  sum(res) / n
}

prob.task(100000)