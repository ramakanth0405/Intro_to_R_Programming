# Advanced Plots using R

library(vctrs)
library(dplyr)
library(ggplot2)

data(mtcars)

summary(mtcars)

# Customizing Scatter Plot
#HP vs Miles Per Gallon

# Size of dots
ggplot(data = mtcars, aes(x= hp, y= mpg, size = disp)) +
  geom_point()+
  labs(title = 'Miles Per Gallon vs Horse Power',
       x = 'Horse Power',
       y = 'Miles per Gallon')

# Adding shape and color categories
ggplot(data = mtcars, aes(x = hp, y = mpg, col = factor(cyl),
                                                        shape = factor(am)))+
         geom_point()+
         labs(title = 'Miles per Gallon vs Horsepower',
              x = 'Horsepower',
              y = 'Miles per Gallon')

# Histograms
# Histogram of Horsepower
ggplot(data = mtcars, aes(x = hp))+
  geom_histogram(binwidth = 5) +
  labs(title = 'Histogram of Horsepower',
       x = 'Horsepower',
       y = 'Count')