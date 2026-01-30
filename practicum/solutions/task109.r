sim.task <- function(b0, b1, sigma) {
  x <- runif(50, 1, 7)
  y <- b0 + b1*x + rnorm(50, 0, sigma)
  m <- lm(y ~ x)
  plot(x, y)
  abline(m, lwd=2)
  list(r.squared = summary(m)$r.squared, conf.b1 = confint(m)["x", ])
}

par(mfrow=c(1,3))

#A
sim.task(2, 1.5, 2)

#B
sim.task(2, 1.5, 1)

#C
sim.task(2, 0.17, 1)

par(mfrow=c(1,1))
