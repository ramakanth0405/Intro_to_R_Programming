# Regression with K Fold Cross Validation
library(ISLR)
library(caret)
library(randomForest)
library(tidyverse)
library(lattice)
library(datarium)

data('marketing', package='datarium')

head(marketing)
set.seed(125)
train_control <- trainControl(method = 'cv', number = 10)

model <- train(sales ~., data = marketing, 
               method = 'lm',
               trControl= train_control)

print(model)
