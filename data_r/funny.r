install.packages('neuralnet', dependencies = T)) # nolint

library(neuralnet)
# library(keras)
# library(pytorch)

head(infert)
df <- infert[,2:6]
table(df$case)
model <- neuralnet(case~., data = df, hidden = c(2, 3))
model
plot(model)
compute(model, df[1,])
