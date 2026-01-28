sim.task <- function(n) {
  x <- rpois(n, 3)
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
  curve(pnorm(x, 3*n, sqrt(3*n)), add=T, lwd=2, col="red")
}
par(mfrow=c(1,1))
