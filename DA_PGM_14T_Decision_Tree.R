# ML Model Decision Tree to classify iris flowers into species (setosa, versicolor, virginica)
library(rpart)
library(rpart.plot)
library(caret)

data(iris)
set.seed(123)
train_index <- createDataPartition(iris$Species, p=0.8, list=FALSE)
# 80 Percent Training Set, 20 Percent Test Data
# list = FALSE, to appear not as list
train_data <- iris[train_index,]
test_data <- iris[-train_index,]

# Build Decision Tree
tree_model <- rpart(Species~.,
                    data = train_data,
                    method = 'class',
                    control = rpart.control(minsplit = 10, cp = 0.01)) # For Classification
# cp: complexity parameter used to control complexity of tree, by adding penalty
# This reduces overfitting and underfitting if used properly
# Visualizing Decision Tree
rpart.plot(tree_model, box.palette='auto', nn=TRUE)
# box.palette: Used to provide color to nodes
# nn : node number

# Predictions and Evaluations
predictions <- predict (tree_model, test_data, type = 'class')
confusionMatrix(predictions, test_data$Species)
printcp(tree_model)

# To find optimal cp level
optimal_cp <- tree_model$cptable[which.min(tree_model$cptable[,'xerror']), 'CP']
# xerror: cross validation erro

# Using Optimal cp to prune decision tree
pruned_tree <- prune(tree_model, cp= optimal_cp)
rpart.plot(pruned_tree)

# Tuning Hyperparameters
control <- trainControl(method = 'cv', number=10) # 10 Fold Cross-Validation
tuned_tree <- train(Species~.,
                    data=iris,
                    method = 'rpart',
                    trControl = control,
                    tuneGrid = expand.grid(cp = seq(0.01, 0.1, 0.01)))
print(tuned_tree)
