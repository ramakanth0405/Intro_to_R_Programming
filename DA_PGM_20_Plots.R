# Plots in R

# Bar Plot
x <- c(7, 18, 30, 30, 40, 50)
barplot(x, xlab = 'Sales',
        ylab = 'Count', col = 'white',
        col.axis = 'darkgreen',
        col.lab = 'darkgreen')

# Pie Chart
x <- c(210, 450, 250, 100, 50, 90)
names(x) <- c("Algo", "DS", "Java", "C", "C++", "Python")
pie(x, labels = names(x), col = 'white',
    main = 'Articles', radius = -1,
    col.main = 'darkgreen')

# Histogram
x <- c(21, 23, 56, 90, 20, 7, 94, 12,
       57, 76, 69, 45, 34, 32, 49, 55, 57)
hist(x, main = 'Histogram of vector x',
     xlab = 'Values',
     col.lab = 'darkgreen',
     col.main = 'darkgreen')

# Box Plot
x <- c(42, 21, 22, 24, 25, 30, 29, 22,
       23, 23, 24, 28, 32, 45, 39, 40)
boxplot(x, xlab = 'Box Plot', ylab = 'Age',
        col.axis = 'darkgreen', col.lab = 'darkgreen')
