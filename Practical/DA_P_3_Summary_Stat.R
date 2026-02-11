# Summary Statistics and Grouped Analysis in R

library(dplyr)

data(iris)

df <- data.frame(iris)
summary(df)
str(iris)

df
colnames(df)
mean(df$Sepal.Length)
IQR(df$Sepal.Length)
names(df)


group_summary <- df %>% group_by(Species) %>% 
  summarise (mean_sepal_len = mean(df$Sepal.Length),
              IQR_sepal_len = IQR(df$Sepal.Length),
              SD_sepal_len = sd(df$Sepal.Length))
group_summary              
