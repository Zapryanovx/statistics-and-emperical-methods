x <- c(3.1, 3.0, 3.7, 2.6, 4.2, 3.8, 3.6, 2.7, 3.8, 4.4)

#A
t.test(x, conf.level=0.95)$conf.int[1:2]

#B
t.test(x, conf.level=0.90)$conf.int[1:2]
