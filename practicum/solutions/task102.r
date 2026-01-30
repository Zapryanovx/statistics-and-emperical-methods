library(MASS)
data(survey)

tbl <- table(survey$Sex, survey$Smoke)
tbl
chisq.test(tbl)
