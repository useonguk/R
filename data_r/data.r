# plot(iris$Sepal.Length, iris$Sepal.Width, pch=19, col=iris$Species)
# boxplot(iris$Sepal.Length)

# head(cars)
# model <- lm(dist~speed, data=cars)
# summary(model)

# 6 + 10
# x <- 1:9
# y <- 99
#2^2
# print(y)

#install.packages('ggplot2', dependencies = T)

log(10) + 5
sqrt(25)
25^(1/2)
max(5, 4, 2)
`+`(6,10)

ifelse(1 > 2, 'big', 'small') #False
ifelse(1 < 2, 'big', 'small') #True

a <- 10
b <- 20
c <- a + b
#c <- '+'(a, b)
print(c)

x <- c(1, 2, 3) #x = c(1, 2, 3)
y <- c('a', 'b', 'c') # y = c('a', 'b', 'c')
z <- c(TRUE, TRUE, FALSE, TRUE) #z = c(TRUE, TRUE, FALSE, TRUE)
x
y
z
# x <- c(1, 2, 3)
# y <- c('a', 'b', 'c')
# c(TRUE, TRUE, FALSE, TRUE) -> z

a <- 5:10
a
b <- c(1, 3, 5, 10:15)
b
x <- 1:1000
x

v3 <- seq(1, 20, 3)
v3
v4 <- seq(1, 1000, 2)# v4 <- seq(1, 1000, 0.01)
v4

a <- rep(1, times = 5)
a
b <- rep(1:5, 3)
b
c <- rep(c(1, 3, 5), times = 2)
c
rep(c(1, 3, 5), each = 3)

score <- c(90, 80, 70)
score
names(score)
names(score) <- c('홍길동', '이순신', '강감찬')
score

d <- c(1, 4, 6, 9)
#data slice , data subset
d[1]
d[2]
d[3]
d[4]
d[5]
d[c(1, 3, 4)]
d[2:3]
d[2:4]
d[-2] # 2번쨰 빼고 가지고옴
d[-c(2, 3)]

a <- c(1, 3, 5, 7)
a
a[2] <- 9
a
a[c(3, 4)] <- c(10, 20)
a

letters
letters[c(11, 9, 19, 19)]
letters[c(4, 15, 7)]
letters[c(11, 15, 18, 5, 1)]

x <- c(1, 4, 3, 7, 8)
x
x * 2 #x백터에 전부다 * 2
x * c(2, 2, 2, 2, 2)
x
x - 5
3 * x + 4

x <- 1:10
sum(x)
mean(x[1:5])
length(x)
sort(x)#정렬
sort(x, decreasing = T)#역순 정렬
sd(x)#표준편차
var(x)#분산
x >= 5
x[x > 5]
sum(x > 5)#이 값에 만족하는게 5개이다
sum(x[x > 5])
x[x > 5 & x < 8]

x <- 10:50
x >= 40
x[x >= 40]

# Data Type 1차원 데이터:몸무게 데이터와 같이 단일 주제의 데이터 => 벡터
# - numeric
# - charater
# - logical

# Data Structure 2차원 데이터: 키,몸무게, 나이와 같이 여러 주제의 데이터 => 메트릭스,데이터프레임
# - vector
# - matrix

m <- matrix(1:20, nrow = 4, ncol = 5)
m

m <- matrix(1:19, nrow = 4, ncol = 5)
m #1~19하고 다시 1로돌아가는 recycle rule
(m1 <- matrix(1:20, nrow = 4, ncol = 5))
(m1 <- matrix(1:20, nrow = 4, ncol = 5, byrow = T))

x <- 1:4
y <- 5:8
cbind(x, y)
rbind(x, y)
