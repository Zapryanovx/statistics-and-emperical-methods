data <- matrix(
    c(12813, 647, 359, 42,
    65963, 4000, 2642, 303),
    nrow = 2,
    byrow = TRUE
)

chisq.test(data)

#p-value = 8.61e-13