install.packages('dplyr', dependencies = T)
install.packages('gapminder', dependencies = T)

library(ggplot2)
library(dplyr)
library(gapminder)
gapminder %>%
    filter(year == 1952 & continent == "Asia") %>%
    ggplot(aes(reorder(country, pop), pop)) +
    geom_bar(stat = "identity") +
    scale_y_log10() +
    coord_flip()

head(iris)
iris$Sepal.Width
boxplot(iris$Sepal.Width)
boxplot.stats(iris$Sepal.Width)

# 이 범위안에수 = 정상치 && 외 이상치
m <- mean(iris$Sepal.Width)
s <- sd(iris$Sepal.Width)
c(m - 3 * s, m + 3 * s)

2 / sum(1 / 100, 1 / 80)#조화평균
