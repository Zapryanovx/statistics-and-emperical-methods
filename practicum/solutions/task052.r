v1 <- rep(4, 30)
v2 <- rep(c(3.5,4.5), 15)
v3 <- rep(c(3,5), 15)
v4 <- rep(c(2:6), 6)
v5 <- rep(c(2,6), 15)

par(mfrow=c(1,5))
stripchart(v1, method="stack", pch=20, vertical=T, ylim=c(1,7))
stripchart(v2, method="stack", pch=20, vertical=T, ylim=c(1,7))
stripchart(v3, method="stack", pch=20, vertical=T, ylim=c(1,7))
stripchart(v4, method="stack", pch=20, vertical=T, ylim=c(1,7))
stripchart(v5, method="stack", pch=20, vertical=T, ylim=c(1,7))
par(mfrow=c(1,1))

median(v1)
mean(v1)
sd(v1)

median(v2)
mean(v2)
sd(v2)

median(v3)
mean(v3)
sd(v3)

median(v4)
mean(v4)
sd(v4)

median(v5)
mean(v5)
sd(v5)
