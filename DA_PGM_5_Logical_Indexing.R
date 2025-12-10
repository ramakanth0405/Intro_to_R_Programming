# Logical Indexing

x <- c(10,20,30)
y <- x[c(TRUE,TRUE,FALSE)]

x[x>15] # Boolean Mask, returns values
x>15 # Returns Boolean Values