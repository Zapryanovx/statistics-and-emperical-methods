x <- 58
n <- 100
p <- 0.5

z.obs <- (x/n - p)/sqrt(p*(1-p)/n)
z.obs
p.value <- 1-pnorm(z.obs)
p.value

prop.test( x=58, n=100, p=0.5, alternative="greater", correct=F )
