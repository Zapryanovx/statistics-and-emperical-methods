library(MASS)
data(survey)
table(survey$Exer)

sort(table(survey$Exer), decreasing=T)
100 * table(survey$Exer) / length(survey$Exer)
100 * prop.table(table(survey$Exer))

barplot(table(survey$Exer))
barplot(sort(table(survey$Exer), decreasing = T))
barplot(100 * prop.table(table(survey$Exer)))

pie(table(survey$Exer))
pie(table(survey$Exer), col=c("red", "green", "blue"))