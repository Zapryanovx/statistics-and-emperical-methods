t.obs <- -1.7012
ci <- c(0.7998512, 1.1249405)

#A
curve(dt(x, 49), from=-4, to=4)
abline(v=c(t.obs, -t.obs), col="red")

#B
pt(t.obs, 49)

#C
1 - pt(t.obs, 49)

#D
mean(ci)

#E
ci[1] <= 1.23 & 1.23 <= ci[2]
