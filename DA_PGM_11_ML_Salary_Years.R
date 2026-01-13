library(caTools)
data <- data.frame(
  YearsExperience = c(1.1, 1.3, 1.5, 10.3, 10.5, 2.0, 2.2, 2.9, 3.0, 3.2, 3.2, 3.7, 
                      3.9, 4.0, 4.0, 4.1, 4.5, 4.9, 5.1, 5.3, 5.9, 6.0, 6.8, 7.1, 
                      7.9, 8.2, 8.7, 9.0, 9.5, 9.6),
  Salary = c(39343.00, 46205.00, 37731.00, 122391.00, 121872.00, 43525.00, 39891.00, 
             56642.00, 60150.00, 54445.00, 64445.00, 57189.00, 63218.00, 55794.00, 
             56957.00, 57081.00, 61111.00, 67938.00, 66029.00, 83088.00, 81363.00, 
             93940.00, 91738.00, 98273.00, 101302.00, 113812.00, 109431.00, 105582.00, 
             116969.00, 112635.00)
)

plot(data)

#sample.split(): Split the dataset into training and test based on a split ratio
#Here, we choose 70% data for training

#FUNCTION: subset()
#Use: This function is used to select appropriate subset of data

#TRUE: Select subset
# FASLE: Not select subset

split = sample.split(data$Salary, SplitRatio = 0.7)
training_set = subset(data, split == TRUE)
test_data = subset(data, split == FALSE)