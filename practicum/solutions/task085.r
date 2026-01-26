sim.task <- function(n, mu1, mu2, sigma1, sigma2) {
    x <- rnorm(n, mu1, sigma1)
    y <- rnorm(n, mu2, sigma2)
    t.test(x,y)$p.value
}
 
prob.task <- function(n, mu1, mu2, sigma1, sigma2) {
    res <- replicate(10000, sim.task(n, mu1, mu2, sigma1, sigma2))
    sum(res<=0.05) / 10000
}

prob.task(1000, 5, 5.2, 1, 1)