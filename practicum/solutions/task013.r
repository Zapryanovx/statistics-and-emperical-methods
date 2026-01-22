sim.task <- function(params...) {
  
  card <- sample(c("ww", "bw", "bb"), 1)
  
  side <- sample(c(1, 2), 1)
  
  if (card == "ww") {
    top = 1 
    bottom = 1
  } else if (card == "bb") {
    top = 0
    bottom = 0
  } else {
    if (side == 1) {
      top = 1   
      bottom = 0
    } else {
      top = 0 
      bottom = 1
    }
  }
  
  c (
    seenWhite = (top == 1),
    bottomWhite = (bottom == 1)
  )
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  
  seen <- res["seenWhite", ]
  other <- res["bottomWhite", ]
  
  sum(seen & other) / sum(seen) 
}

prob.task(100000)