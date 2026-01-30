houses <- read.csv("../data/duke_forest.csv")

m <- lm(price ~ bed + bath + area + year_built + lot, data=houses)
summary(m)

m2 <- step(m)
summary(m2)
