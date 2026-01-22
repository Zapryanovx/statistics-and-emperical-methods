sim.task <- function(params...) {
  floors = 2:16
  res <- sample(floors, 7, replace=TRUE)
  length(unique(res)) < length(res)
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  sum(res) / n
}

prob.task(100000)

#=======================================

sim2.task <- function(params...) {
  floors = 2:16
  myFloor = sample(floors, 1)
  othersFloors = sample(floors, 6, replace=TRUE)
  any(othersFloors == myFloor)
}

prob2.task <- function(n, params...) {
  res <- replicate(n, sim2.task())
  sum(res) / n
}

prob2.task(100000)