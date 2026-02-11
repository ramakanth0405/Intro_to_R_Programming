library(rpart)
library(rpart.plot)

data(iris)

names(iris)

tree_model <- rpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length +Petal.Width,
                    data = iris, method = 'class')

rpart.plot(tree_model,
           main = 'Decision Tree for iris dataset',)
