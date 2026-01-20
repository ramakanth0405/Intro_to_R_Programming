library(ggplot2)
library(caTools)

# Load datasets
data(mtcars)

# Save the dataset in a variable for ease of use
d <- mtcars

#NOTE: Do not type d <- data(mtcars)!!!

# Fitting the model in Linear Regression
# We are going to analyse how the fuel efficiency (mpg) varies with weight (wt)
model <- lm(mpg ~ wt, data = d)

# Predict the values using linear regression model
d$predicted <- predict(model)

# Calculate the residuals from the fitted model
d$residuals <- residuals(model)

ggplot(d, aes(x=wt, y= mpg)) +
  geom_smooth(method='lm', se=FALSE, color='lightgrey') + # Regression Line
  # draw line from point to line
  geom_segment(aes(xend=wt, yend = predicted), alpha = .2) +
  
  # Size of points
  geom_point(aes(color=abs(residuals), size= abs(residuals))) +
  
  # color of the points mapped to residuals, green is small, red is big
  scale_color_continuous(low='green', high='red') +
  
  guides(color=FALSE, size=FALSE) + # size legend removed
  
  geom_point(aes(y= predicted), shape =1) +
  
  theme_bw()

# Plot: RESIDUAL vs FITTED PLOT
res <- resid(model)
plot(fitted(model), res)
abline(0,0)

# Plot: Density Plot
# Use: To check normality of residuals
plot(density(res))


# Plot: Residual vs Leverage Plot
plot(model, which=5, col=c('blue'))
# The line to the right top or bottom left is known as Cook's Distance(Grey Dotted Line),
# The points above the Cook's Distance are mostly influential points/ outliers

# Plot: Quantile - Quantile Plot (Q-Q Plot)
# Use: Mostly for checking Normality of residuals
# Additionally Q-Q Plot can also be used for checking whether two distributions are similar

