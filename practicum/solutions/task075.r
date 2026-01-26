#H0 : p = 0.51
#H1 : p > 0.51
x <- 32
n <- 58  
p <- 0.51

z.obs <- (x/n - p)/sqrt(p*(1-p)/n)
z.obs
p.value <- 1-pnorm(z.obs)
p.value

prop.test( x=32, n=58, p=0.51, alternative="greater", correct=F )

# 0.2625 > 0.05 и няма как да отхвърлим H0