library(rpart)
library(rpart.plot)
library(caret)

data(iris)
set.seed(123)
train_index <- createDataPartition(iris$Species, p=0.8, list=FALSE)
train_data <- iris[train_index,]
test_data <- iris[-train_index,]