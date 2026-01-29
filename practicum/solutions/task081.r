react <- read.table("../data/reacttime.txt", header=T)
t.test(react$after, react$before, paired=T, alternative="greater")
