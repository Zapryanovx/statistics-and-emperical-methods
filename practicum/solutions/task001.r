sim.task <- function(params...) {
  x <- sample(1:8, 2, replace = TRUE)
  x[1] == x[2]
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  sum(res) / n;
}

prob.task(100000)