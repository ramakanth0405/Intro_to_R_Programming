# Regularised Regression

library(glmnet)
data(mtcars)
X <- as.matrix(mtcars[,-1])
y <- mtcars[, 1]

model <- glmnet(X, y, family = 'gaussian', alpha = 1)
summary(model)
plot(model, label = TRUE)
coef(model, , s = 0.1)
y_pred <- predict(model, X)
fit <- cv.glmnet(X, y, alpha = 1, nfolds = 5)

summary(fit)
plot(fit)
y_pred <- predict(fit, X)

plot(y, y_pred, xlab = 'Actual', ylab = 'Predicted', main = 'Actual vs Predicted')