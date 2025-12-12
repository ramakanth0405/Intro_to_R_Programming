Name <- c('Anna','Ben','Cathy')
Age <- c(22,25,24)
Mark <- c(88,90,95)
df1 <- data.frame(Name, Age, Mark)
df1['Blood_Group'] <- c('AB-','B+','AB-') # Analogous to adding a column to df in Pandas
Height=c(110,190,175)
Weight=c(89,75,63)
df1 <- cbind(df1,Height,Weight)

# Methods to access Columns

# $ Method
df1$Age #[1] 22 25 24

# Analogous Method
# Display as a column vector
df1['Age']
df1[4]

# Display as a single array
df1[['Age']] # [1] 22 25 24
df1[[4]] # [1] "AB-" "B+"  "AB-"

# Accessing 1 single row with all columns
df1[1,]
'''Name Age Mark Blood_Group Height Weight
1 Anna  22   88         AB-    110     89'''

# Accessing a particular element in df1
df1[1,3]
# [1] 88

#Accessing all rows and columns 1 and 3
df1[,c(1,3)]
'''Name Mark
1  Anna   88
2   Ben   90
3 Cathy   95'''

#Accessing all rows and first 3 columns
df1[1:3]
'''Name Age Mark
1  Anna  22   88
2   Ben  25   90
3 Cathy  24   95'''

df1[1:4]
''' Name Age Mark Blood_Group
1  Anna  22   88         AB-
  2   Ben  25   90          B+
  3 Cathy  24   95         AB- '''

# Accessing rows 1 to 3 and all columns. Note the comma used.
df1[1:3,]
'''   Name Age Mark Blood_Group Height Weight
1  Anna  22   88         AB-    110     89
2   Ben  25   90          B+    190     75
3 Cathy  24   95         AB-    175     63'''

# Function to know the data type/ class of an attribute

# If input is given as df1['Age], then the class is data frame
class(df1['Age'])
# [1] "data.frame"

# If input is given as df1$Age then data type is numeric
class(df1$Age)
# [1] "numeric"

# Reason
'''> df1$Age
 [1] 22 25 24 '''



df1$Age <- as.logical(df1$Age)
class(df1$Age)

# Error
'''> df1['Age'] <- as.logical(df1['Age'])
Error: list object cannot be coerced to type logical'''

v1 <- c('red','blue','green','yellow')
v2 <- c(1,2,3,4)

#row
var1 <- rbind(v1,v2)
'''   [,1]  [,2]   [,3]    [,4]    
v1 "red" "blue" "green" "yellow"
v2 "1"   "2"    "3"     "4" '''

#column
var2 <- cbind(v1,v2)
'''     v1       v2 
[1,] "red"    "1"
[2,] "blue"   "2"
[3,] "green"  "3"
[4,] "yellow" "4" '''

# matrix function to create matrix

# Here only rows are specified, the columns are aligned automatically
# Note c(1,6), the comma means only 1 and 6 are elements
mat1 <- matrix(c(1,6), nrow=2)
'''     [,1]
[1,]    1
[2,]    6 '''

# Here the number of rows and columns are specified by nrow and ncol.
# Note c(1:6), the : means that the numbers 1 to 6 are selected
mat2 <- matrix(c(1:6), nrow=3, ncol=2)
'''> mat2
     [,1] [,2]
[1,]    1    4
[2,]    2    5
[3,]    3    6 '''

df1
'''Name Age Mark Blood_Group Height Weight
1  Anna  22   88         AB-    110     89
2   Ben  25   90          B+    190     75
3 Cathy  24   95         AB-    175     63 '''

# dim function to show the number of rows and columns
# dim function does not explicitly mention the number of rows and columns explicitly
dim(df1)
#[1] 3 6

# ncol Function to only display number of columns
ncol(df1)
# [1] 6

# nrow Function to only display number of rows
nrow(df1)
# [1] 3

#length function shows Number of columns
length(df1)
# [1] 6 


