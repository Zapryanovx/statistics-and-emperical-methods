books <- read.table("../data/books.txt", header=T)
t.test(books$price1, books$price2, paired=T, alternative="greater")
