x <- c(3.1, 3.0, 3.7, 2.6, 4.2, 3.8, 3.6, 2.7, 3.8, 4.4)

t.obs = (mean(x) - 4) / (sd(x) / sqrt(10))
t.obs

pt(t.obs, length(x) - 1)

t.test(x, mu=4, alternative="less")
