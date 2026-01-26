sim.task <- function(n, mu1, mu2, sigma1, sigma2) {
  x <- rnorm(n, mean=mu1, sd=sigma1)
  y <- rnorm(n, mean=mu2, sd=sigma2)
  t.test(x,y)$p.value
}

prob.task <- function(n, mu1, mu2, sigma1, sigma2) {
    res <- replicate( 10000, sim.t2(n=500, mu1=5, mu2=5, sigma1=1, sigma2=0.8) )
    sum(rs<=0.05)/length(rs)
}

prob.task(500, 5, 5, 1, 0.8)
