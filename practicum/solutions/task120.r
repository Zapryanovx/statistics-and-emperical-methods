tomato <- read.table("../data/tomato2.txt", header=T)
t.test(tomato$v2, tomato$v1, alternative="greater")
