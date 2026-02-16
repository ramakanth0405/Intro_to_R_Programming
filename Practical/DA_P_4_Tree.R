# Decision Tree Model and Visualization in R using iris dataset rpart and rpart.plot

library(rpart)
library(rpart.plot)

data(iris)

names(iris)

tree_model <- rpart(Species ~ .,
                    data = iris)

rpart.plot(tree_model,
           main = 'Decision Tree for iris dataset',)
