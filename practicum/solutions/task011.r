sim.task <- function(params...) { 
  f = c(1, 1, 0, 0)
  s = c(1, 0, 0, 0, 0)
  
  scenario <- sample(c("f", "s"), 1, prob = c(1/6, 5/6))
  
  if (scenario == "f") {
    drawn <- sample(f, 1)
  } else {
    drawn <- sample(s, 1)
  }
  
  c(
    green = (drawn == 1),
    from2 = (scenario == "s")
  )
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  greens <- res["green", ]
  from2 <- res["from2", ]
  
  c(
    sum(greens) / n, 
    sum(greens & from2) / sum(greens) 
  )
}

prob.task(10000)