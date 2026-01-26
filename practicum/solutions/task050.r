library(MASS)
data(survey)

table(survey$Pulse)
table(survey$Pulse, useNA="ifany")

pulse.interval <- cut(survey$Pulse, breaks=seq(30,110,10))
pulse.interval
table(pulse.interval)

barplot( table(pulse.interval) )
hist(survey$Pulse)
hist(survey$Pulse, breaks=seq(30,110,5))

stripchart(survey$Pulse, method="stack", pch=20)
stripchart(survey$Pulse, method="stack", pch=18)
stripchart(survey$Pulse, method="stack", pch=1)
stripchart(survey$Pulse, method="stack", pch="!")