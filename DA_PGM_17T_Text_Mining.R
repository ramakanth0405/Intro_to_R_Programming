library(tidyverse)
library(tidytext)

#Sample Text data

text_data <- tibble(
  id = 1:5,
  text = c("R is a powerful tool for text mining.",
           "The tidytext package makes text analysis straightforward.",
           "Text mining involves various techniques such as sentiment analysis.",
           "I love data science. Data science is amazing!",
           "Text mining with tidytext is fun and insightful.")
)
print(text_data)
