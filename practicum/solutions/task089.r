# sigma = 0.12
# n = 45
 
#A
# x.bar = 6.73
err.x.bar = 1.96 * (0.12 / sqrt(45))

lower <- (6.73 - err.x.bar)
upper <- (6.73 + err.x.bar)
c(lower, upper)
#[1] 6.694938 6.765062

# B
# x.bar = 6.76
 
x.bar.err = 1.96 * (0.12 / sqrt(45))
lower = (6.76 - x.bar.err)
upper = (6.76 + x.bar.err)

c(lower, upper)
#[1] 6.724938 6.795062