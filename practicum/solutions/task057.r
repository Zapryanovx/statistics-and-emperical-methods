library(MASS)
data(survey)
table(survey$Smoke)

sort(table(survey$Smoke), decreasing=T)
100 * prop.table(table(survey$Smoke))

barplot(table(survey$Smoke))
barplot(sort(table(survey$Smoke), decreasing = T))

pie(table(survey$Smoke))
