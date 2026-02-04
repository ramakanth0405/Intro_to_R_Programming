# TERM DOCUMENT MATRIX (TDM)
''' 5 Lines 5 different documents, these 5 lines are together a corpus/ collection
matrix is constructed
each doc is a column
words are rows
the frequency is put in matrix'''

library(tm)


# Data input
texts <- c("The quick brown fox jumps over the lazy dog.",
            "The dog barks at the fox.",
            "The quick fox is clever.")

# Creating Corpus
corpus <- Corpus(VectorSource(texts))

# Preprocessing Text

corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeWords, stopwords('en'))
corpus <- tm_map(corpus, stripWhitespace)



# TDM using Custom Dictionary
# Defining custom words
custom_dictionary <- c('quick', 'fox', 'lazy dog')

# Creating Term-Document Matrix with the custom dictionary
tdm <- TermDocumentMatrix(corpus, control = list (dictionary = custom_dictionary))

# Converting TDM to a matrix
tdm_matrix <- as.matrix(tdm)
print(tdm_matrix)

# Without Custom Dictionary
matrix = as.matrix(DocumentTermMatrix(corpus))
print(matrix)