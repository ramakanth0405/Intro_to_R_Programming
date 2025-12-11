Name <- c('Anna','Ben','Cathy')
Age <- c(22,25,24)
Mark <- c(88,90,95)
df1 <- data.frame(Name, Age, Mark)

#Adding a Column

#Method 1
# $
df1$City <- c('Delhi','Mumbai','Kochi')

#Method 2
df1['Blood_Group'] <- c('AB-','B+','AB-') # Analogous to adding a column to df in Pandas

# Method 3
# cbind
Height=c(110,190,175)
Weight=c(89,75,63)
df1 <- cbind(df1,Height,Weight) # Don't forget to add df, or else the entire df
# will be erased and only the new attributes will be added the rest deleted

df1[,-3] # Creates a view by deleting the third column
df1[-2,-2] # Creates a view by deleting 2nd row entries and corresponding column entries of 2nd row elements

# In order for the deletion to reflect in the data.frame use df <- df1[-2,-2]

# Adding a row using rbind
df1 <- rbind(
  df1,
  data.frame(Name='Rahul', Age= 15,Mark=89,City='Kolkota',Blood_Group='A+',Height=190,Weight=89)
)