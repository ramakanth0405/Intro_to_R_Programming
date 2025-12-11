# Data Frames in R

# Method 1
# Giving Vectors inside data.frame
df1 <- data.frame(
  Name <- c('Ram','Shyam','Sam'),
  Age <- c(15,20,16),
  Mark <- c(100,90,87)
)

# Method 2
# Creating Vectors before data.frame and giving the vectors as
# input in data.frame
Name <- c('Ram','Shyam','Sam')
Age <- c(15,20,16)
Mark <- c(100,90,87)
df2 <- data.frame(Name, Age, Mark)