x <- c(12.3, 11.2, 14.2, 15.3, 14.8, 13.5, 11.1, 15.1, 15.4, 13.2)

#A
t.obs = (mean(x) - 14.6) / (sd(x) / sqrt(10))
t.obs
# [1] -1.915173

2 * (1 - pt(abs(t.obs), length(x) -1))
# [1] 0.08773213

t.test(x, mu=14.6)

#B
pt(t.obs, length(x) - 1)
# [1] 0.04386607

t.test(x, mu=14.6, alternative="less")
