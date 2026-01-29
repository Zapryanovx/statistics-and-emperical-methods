x <- 14
n <- 200
p <- 0.075

z.obs <- (x/n - p)/sqrt(p*(1-p)/n)
z.obs

#A
2*(1-pnorm(abs(z.obs)))
prop.test( x=14, n=200, p=0.075, correct=F )

#B
pnorm(z.obs)
prop.test( x=14, n=200, p=0.075, alternative="less", correct=F )
