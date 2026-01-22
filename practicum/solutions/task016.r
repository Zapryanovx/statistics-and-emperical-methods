sim.task <- function(params...) {
  cards <- rep(c(0, 1), times=c(48, 4))
  given <- sample(cards, 52)
  
  first = given[seq(1, length(given), by=4)]
  second = given[seq(2, length(given), by=4)]
  third = given[seq(3, length(given), by=4)]
  fourth = given[seq(4, length(given), by=4)]
   
  all(c(sum(first), sum(second), sum(third), sum(fourth)) == 1)
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  sum(res) / n
}

prob.task(10000)