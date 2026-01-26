library(MASS)
data(survey)

#table(survey$Age)

age.interval <- cut(survey$Age, breaks=seq(15, 75, 5))
table(age.interval)

barplot( table(age.interval) )
#barplot( table(survey$Age))