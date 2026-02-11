name <- c('Ram', 'Sam', 'Hari')
Age <- c(20, 30 , 15)
weight <- c(70, 60, 55)

df <- data.frame(name, Age, weight)

summary(df)

df$Grade <- c('A', 'A', 'B')
df$weight <- NULL
names(df)
