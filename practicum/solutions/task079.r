# n = 50
# x.bar = 168
# sigma = 3.9

# H0: p.value = 170
# H1: p.value < 170

z.obs <- (168 - 170)/(3.9/sqrt(50))
z.obs
[1] -3.626189
p.value <- pnorm(z.obs, 0, 1)
p.value
[1] 0.0001438176

# p.value <= 0.05 и можем да отхвърлим H0 в полза на H1
