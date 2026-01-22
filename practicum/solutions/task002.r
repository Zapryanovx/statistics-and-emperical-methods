sim.task <- function(params...) {
 x <- rep(c(1,2,3), each=2)
 res <- sample(x, 2) 
 res[1] == res[2]
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  sum(res) / n
}

prob.task(100000)