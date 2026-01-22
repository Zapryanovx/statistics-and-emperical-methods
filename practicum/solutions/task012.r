sim.task <- function(params...) {
  
  coin <- sample(c("t11", "t12", "t22"),
                  1,
                  replace=FALSE,
                  prob=c(2/5, 2/5, 1/5)
                )

  if (coin == "t11") {
    res = 1
    other = 1
  } else if (coin == "t12") {
    res <- sample(c(1, 2), 1)
    other = 3 - res
  } else {
    res = 2
    other = 2
  } 
  
  c(
    result = (res == 1),
    otherSide = (other == 2)
  )
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  
  c (
    sum(res["result", ]) / n,
    sum(res["result", ] & res["otherSide", ]) / sum(res["result", ])
  )
}

prob.task(100000)