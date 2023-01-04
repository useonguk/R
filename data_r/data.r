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
# - data frame

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
#[행, 열]
(x <- matrix(1:20, ncol = 5))
x[2, 3]
x[3,]
x[, c(2,4)]
x[c(2,3), c(2, 4, 5)]

(x <- matrix(1:4, ncol = 2))
rownames(x) <- c('row1', 'row2')
colnames(x) <- c('col1', 'col2')
x

city <- c('seoul', 'washington', 'hongkong')
ranking <- c(1, 2, 3)
df <- data.frame(city, ranking)
str(df)
df <- data.frame(city, ranking, stringsAsFactors = F)
str(df)

#iris란 R에서 제공하는 150개의 붓꽃의 꽃받침과 꽃잎의 크기(길이, 폭)를 측정한 데이터 셋
head(iris)#위에서부터 6개
head(iris, 10)
tail(iris)
tail(iris, 3)#밑에서부터 6개
str(iris)

sd(iris$Sepal.Length)

iris[iris$Sepal.Length < 5,]

iris[, c(1, 2)]
iris[2:3, c('Sepal.Width', 'Sepal.Length')]
iris[1:2, -5]

iris[c(iris$Sepal.Length > 5), -c(1, 2)]

dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
tail(iris, 2)
head(iris, 4)
dim(iris)[1]
dim(iris)[2]

unique(iris[, 5])
table(iris$Species)

colSums(iris[, -5])
colMeans(iris[, -5])
rowSums((iris[, -5]))[1:2]
rowMeans((iris[, -5]))[1:2]

subset(iris, Species == "setosa")[1:5, ]
# subset(iris[iris$Species == "setosa", ]) # nolint
# subset(iris, Species == "setosa", ) # nolint  
subset(iris, Sepal.Length > 5.0 & Sepal.Width > 4.0)

head(airquality)
dim(airquality)
getwd()
write.csv(airquality, 'air.csv', row.names = F) # nolint

air <- read.csv('air.csv', header = T) # nolint
head(air)

# 조건문

grade <- "A"
if (grade == "A") {
    bonus <- 100
}else {
    bonus <- 50
}
print(bonus)

score <- 85
if (score > 90) {
    grade <- "A"
} else if (score > 80) {
    grade <- "B"
} else {
    grade <- "C"
}
print(grade)

a <- 10
b <- 20
if (a > 5 && b > 10){
    print(a + b)
}
if (a > 5 || b > 30){
    print(a * b)
}

# a <- c(10, 20, 30) # nolint
# b <- c(20, 30, 40) # nolint
# if (a > 5 & b > 10){
#     print(a + b) # nolint
# } # 오류

a <- 10
b <- 20
ifelse(a > 5 && b > 10, a + b, 0) #if , else문보다 빠름
ifelse(a > 5 || b > 30, a * b, 0)

#반복문
for (i in 1:9){
    for (j in 1:9){
        cat(i, ' X ', j, "=", i * j, "\n") # nolint
    }
}

for (i in 1:150){
    iris$LH <- ifelse(iris[, 1] < 5, "L", "H")
}
iris
# for (i in 1:nrow(iris)) {
#     vec[i] <- ifelse(iris$Sepal.Length < 5, "L", "H") # nolint
# }
# vec

# iris$vec <- vec # nolint
data(iris) # iris값 초기화
head(iris[, 1:4])
apply(iris[, 1:4], 2, mean) # 열단위  
apply(iris[, -5], 1, mean)[1:10] # 행단위

my_max <- function(x, y) {
    return(ifelse(x > y, x, y))
}
my_max(10, 15)
my_max(-1, -10)

fav <- c('W', 'S', 'SP', 'S', 'S', 'F', 'F') #nolint
print(fav)
table(fav)
length(fav)
table(fav) / length(fav)
round(table(fav) / length(fav), 2) * 100

dt <- round(table(fav) / length(fav), 2) * 100
barplot(dt)
barplot(sort(dt))
barplot(sort(dt, decreasing = T)) # nolint
pie(sort(dt, decreasing = T)) # nolint
# ?pie(sort(dt, decreasing = T)) # 도움말 # nolint

hist(iris$Sepal.Length)

#한글꺠짐은 인터넷 검색
head(cars)
boxplot(cars$dist, main = '자동차 제동거리') # nolint
boxplot(iris$Petal.Length)
?boxplot(iris$Petal.Length)
boxplot(iris$Petal.Length, notch = T, col = 'yellow') # nolint

#종류별로 그리기
boxplot(Petal.Length ~ Species, data = iris)

#산점도
head(mtcars)
plot(mtcars$wt, mtcars$mpg, col = 'black', pch = 3, main = '자동차 연비 산점도', xlab = '무게/t', ylab = '연비') # nolint
plot(mtcars$wt, mtcars$mpg, col = 'black', pch = 19, main = '자동차 연비 산점도', xlab = '무게/t', ylab = '연비') # nolint
plot(mtcars$wt, mtcars$mpg, col = 'black', pch = '.', main = '자동차 연비 산점도', xlab = '무게/t', ylab = '연비') # nolint

pairs(iris[-5])

plot(iris$Petal.Width, iris$Petal.Length, col = iris$Species, pch = 'O') # nolint

bears <- c(5, 2, 9, 8, 3, 7, 3, 5, 3, 5)
bal <- c(0.1, 0.03, 0.19, 0.12, 0.04, 0.095, 0.07, 0.06, 0.02, 0.05)
length(bears)
length(bal)

df <- data.frame(bears, bal)
head(df)
plot(bal~bears, data = df, pch = 'O', col = 'orange') # nolint
model <- lm(bal~bears, data = df) # nolint
abline(model, pch = 'O', col = 'orange', lw = 2) # nolint
cor(df$bears, df$bal) # 1에 가까울수록 상관관계가 높다.

month <- 1:12
late <- c(5, 8, 7, 9, 4, 6, 12, 13, 8, 6, 6, 4)
length(late)
length(month)
plot(month, late, type = 'l', lty = 'solid', lwd = 3, col = 'blue') # nolint

month <- 1:12
late1 <- c(5, 8, 7, 9, 4, 6, 12, 13, 8, 6, 6, 4)
late2 <- c(7, 12, 1, 3, 7, 4, 9, 10, 5, 1, 2, 8)
plot(month, late1, type = 'b', lty = 'dashed', lwd = 5, col = 'orange', ylim = c(1, 15)) #nolint
lines(month, late2, lty = 'solid', col = 'skyblue', lwd = 5) # nolint

# tip
# 데이터 분석용 언어로 데이터 분석용 팁을 많이 제공

moring <- rnorm(100000, mean = 7, sd = 2)
length(moring)
hist(moring)

#표본 추출 (random)
head(iris)
dim(iris)
#복원추출 중복가능성 O / 비복원추출 중복가능성 X
index <- sample(1:NROW(iris), NROW(iris) * 0.7, replace = F)
index
iris[index, ] # 70%데이터
iris[-index, ] # 30%데이터
