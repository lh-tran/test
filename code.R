library(tidyverse)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
# reorder is close to order, but is made to change the order of the factor levels.
mpg$class = with(mpg, reorder(class, hwy, median))

p <- mpg %>%
  ggplot( aes(x=class, y=hwy, fill=class)) + 
    geom_violin() +
    xlab("class") +
    theme(legend.position="none") +
    xlab("")
p

p2 <- 1
