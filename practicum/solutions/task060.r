sim.task <- function(n) {
  x <- rexp(n, 1/5)
  sum(x)
}

ns <- c(3, 7, 10, 30, 90, 200)

#A
par(mfrow=c(2,3))
for (n in ns) {
  res <- replicate(10000, sim.task(n))
  hist(res, probability=T, main=paste("n =", n))
}

#B
for (n in ns) {
  res <- replicate(10000, sim.task(n))
  plot(ecdf(res), main=paste("n =", n))
  curve(pnorm(x, 5*n, 5*sqrt(n)), add=T, lwd=2, col="red")
}
par(mfrow=c(1,1))
