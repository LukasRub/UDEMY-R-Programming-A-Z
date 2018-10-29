library(ggplot2)


my.data <- read.csv("./Mispriced-Diamonds.csv")


ggplot(my.data[my.data$carat < 2.5, ], aes(x = carat, y = price,
                                           colour = clarity)) +
  geom_point(alpha = 0.1, size = 1.5) + 
  geom_smooth()
