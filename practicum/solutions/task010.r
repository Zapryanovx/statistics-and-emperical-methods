sim.task <- function(params...) {
  x <- c(0, 1)
  res <- sample(x, 143, replace=TRUE, prob=c(0.08, 0.92))
  c(
    A = sum(res) <= 138,
    B = sum(res) == 137
  )
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  rowSums(res) / n
}

prob.task(100000)