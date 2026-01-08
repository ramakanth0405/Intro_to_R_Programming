# Summary Statistics

#summary function
#syntax: summary(df)


x <- c(10, 20, 30, 40, 50)
df <- data.frame(x)
summary (df)
str(df)

# R has inbuilt datasets

# Function: data()
# Use: To load a dataset, only performed once
# Syntax: data(dataset_name)
data(mtcars)

#NOTE: It is optional to store an inbuilt dataset in a variable
# We can use the name of the dataset itself.
df1 <- mtcars
class(df1)

# DO NOT TYPE df1 <- data(mtcars), this will result in errors

# Function: str
#Use: Provides structure of data
#syntax: str(df)
str(mtcars)

# Function: summary
# Use: Provides Statistcical Data about Dataframe
# Syntax: summary(df)
summary(mtcars)


x <- c(1, 2, 3, 4, 5)

# Function: median
# Use: For getting median data
# Syntax: median(variable)
median(x)

# Function: median
# Use: For getting range, maximum value
# Syntax: range(variable)
range(x)
''' NOTE: The range(), will give the maximum and minimum elements, and not
the actual range '''

# Function: diff
# Use: For subtracting
# Syntax: diff(function_name(variable))
diff(range(x))
# We use the diff function to calculate the range of the data.

# Function: variance
# Use: For getting variance
# Syntax: var(variable)
var(x)

# Function: sd(variable)
# Use: For getting Standard Deviation
# Syntax: sd()
#NOTE: We cannot use standard deviation function on a whole dataframe
# We must specify a column
sd(x)

# Function: quantile
# Use: For getting quantile data
# Syntax: quantile(variable)
quantile(x)

# Function: Inter Quartile Range Data, Q3 - Q1
# Use: For getting Inter Quartile Range data
# Syntax: IQR(x)
# Note: All the letters in this function are in UPPERCASE
IQR(x)
