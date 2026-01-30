sim.task <- function(n) {
  x <- sample(1:6, n, replace=TRUE)
  chisq.test(table(factor(x, levels=1:6)))$p.value > 0.05
}

prob.task <- function(n) {
  res <- replicate(10000, sim.task(n))
  sum(res) / 10000
}

sapply(c(100, 200, 400), prob.task)
