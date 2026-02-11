data(mtcars)
model <- lm(mpg~wt, data = mtcars)
summary(model)

plot(mtcars$wt, mtcars$mpg,
     main = 'Simple Linear Regression: mtcars : Weight vs Miles Per Gallon',
     xlab = 'Weight of Car (wt)',
     ylab = 'Miles Per Gallon (mpg')
abline(model, col = 'red')
