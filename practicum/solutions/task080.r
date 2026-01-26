exam <- read.table("examAB.txt", header=T)
x <- exam$points[exam$variant=="A"]
y <- exam$points[exam$variant=="B"]
t.test(x, y, alternative="greater")