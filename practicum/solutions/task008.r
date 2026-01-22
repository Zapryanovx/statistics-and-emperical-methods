sim.task <- function(params...) {
  eggs <- rep(c(0, 1), times=c(6, 2))
  res <- sample(eggs, 8)
  first <- sum(res[c(1, 3, 5, 7)])
  c(
    A = first == 0 | first == 2,
    B = first == 1,
    C = first == 2,
    D = first == 0
  )
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  rowSums(res) / n
}

prob.task(100000)
