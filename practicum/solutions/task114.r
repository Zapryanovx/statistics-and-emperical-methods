sim.task <- function(n, errors) {
  x <- runif(n, 1, 10)
  e <- if (errors == "norm") rnorm(n, 0, 5) else rexp(n, 1/5)
  y <- 2 + 5*x + e
  m <- lm(y ~ x)
  ci <- confint(m)["x", ]
  c(
    b1 = unname(coef(m)["x"]),
    covered = unname(ci[1] <= 5 & 5 <= ci[2]),
    len = unname(ci[2] - ci[1])
  )
}

prob.task <- function(n, errors) {
  res <- replicate(10000, sim.task(n, errors))
  rowMeans(res)
}

#A
sapply(c(30, 50, 100, 500), prob.task, errors="norm")

#B
sapply(c(30, 50, 100, 500), prob.task, errors="exp")
