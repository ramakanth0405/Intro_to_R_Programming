data (iris)
head (iris)

library('factoextra')
library('cluster')

plot(iris$Sepal.Length, iris$Sepal.Width,
     main = 'Sepal Length vs Sepal Width',
     xlab = 'Sepal Lenght',
     ylab = 'Sepal Width')

iris_1 <- iris[,-5]
set.seed(240)

#kmeans(), perform K-means clustering, unsupervised algorithm
kmeans.re <- kmeans(iris_1, centers = 3, nstart = 20)
# nstart: Perfrom n trials for centers initially

# Cluster Assignment
kmeans.re$cluster

# Cluster Centroids
kmeans.re$centers

# Total Sum of Squares
kmeans.re$totss

# Total within cluster Sum of Squares
kmeans.re$withinss

# Between cluster Sum of Squares
kmeans.re$betweenss

# Number of observations per cluster
kmeans.re$size

# Number of iterations
kmeans.re$iter
