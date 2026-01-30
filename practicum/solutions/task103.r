eyes <- read.table("../data/ManWomanEye.txt", header=T)
tbl <- table(eyes$man, eyes$woman)
tbl
chisq.test(tbl)
