library(ISLR)
library(caret)
library(randomForest)
library(tidyverse)

data('Smarket')
dataset <- na.omit(Smarket)
dataset <- dataset %>% select(-Year)

glimpse(dataset)

set.seed(123)
train_control <- trainControl(method = 'cv', number = 10, sampling = 'up')

model_rf <- train(
  Direction ~., 
  data = dataset,
  method = 'rf',
  trControl = train_control
)