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

# Tokenize the text
tokens <- text_data %>% 
  unnest_tokens(word, text)

# View the tokens
print(tokens)

#Remove stopwords
data('stop_words')
clean_tokens <- tokens %>% 
  anti_join(stop_words, by = 'word')

# View cleaned tokens
print(clean_tokens)

# Calculate word frequency
word_frequency <- clean_tokens %>% 
  count(word, sort = TRUE)

# View word frequency
print(word_frequency)


library(SnowballC)
# SnowballC is a library for stemming words
stemmed_tokens <- clean_tokens %>% 
  mutate(stem = wordStem(word))

print(stemmed_tokens)

# Sentiment Analysis_Lexicon
sentiment_lexicon <- get_sentiments('bing')

# Perform sentiment analysis
sentiment_analysis <- clean_tokens %>%
  inner_join(sentiment_lexicon, by = 'word') %>% 
  count(word, sentiment, sort = TRUE)

print(sentiment_analysis)

library(wordcloud)

wordcloud(words = word_frequency$word, freq = word_frequency$n, min.freq = 1,
          random.order = FALSE, color = brewer.pal(8, 'Dark2'))
