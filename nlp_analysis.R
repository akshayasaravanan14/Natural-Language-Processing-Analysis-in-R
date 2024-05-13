#IMPORTING NLP BASED LIBRARY
library(udpipe) 

#IMPORTING DATASET
data(brussels_listings,package = 'udpipe')

#VIEWING DATASET
View(brussels_listings)

#SEGREGATING A COLUMN
x<- table(brussels_listings$neighbourhood)
View(x)

#SORTING
x<-sort(x)
View(x)

#IMPORTING TEXT VIZUALIZATION LIBRARY
library(textplot) #complex relations in text

#WORD FREQUENCY BAR CHART
textplot_bar(x,panel = 'Locations', col.panel = "darkgrey",
             xlab = "Listings", cextext = 0.75 , addpct = TRUE,
             cexpact = 0.5)

#IMPORTING DATASET 
data(brussels_reviews_anno, package = 'udpipe')
View(brussels_reviews_anno)

#SEGREGATING DATA

y<- subset(brussels_reviews_anno,
           xpos %in% "NN" & language %in% "nl" & !is.na(lemma))
View(y)

#DOCUMENT TERM FREQUENCIES

y<- document_term_frequencies(y,document = "doc_id" , term = "lemma")
View(y)

#DOCUMENT TERM MATRIX
dtm <- document_term_matrix(y)
dtm

#REMOVING LOW FREQUENCY WORDS

dtm <- dtm_remove_lowfreq(dtm , maxterms = 60)
dtm

#CORRELATION MATRIX

cor<-dtm_cor(dtm)
View(cor)

#IMPORTING LIBRARIES

library(glasso) #For graphical lasso : Estimation of Gaussian graphical 

#WORD CORRELATION PLOT
#textplot_correlation_glasso(cor,exclude_zero = TRUE)

#WORD COOCURRENCE GRAPH
#SEGREAGATING DATA
w<-subset(brussels_reviews_anno, xpos %in% "JJ" & language %in%
            "fr")
View(w)

#CONCCURRING TERMS

w<- cooccurrence(w,group = "doc_id" , term ="lemma")
View(w)

#COOCCURENCE PLOT
textplot_cooccurrence(w, top_n = 25 , subtitle = "showing onlt top 25")

#DEPENDENCY PARSING
#CREATING DATA

sentence= "Hey Friends , Welcome to the class. Lets learn about text analytics"

#TOKENIZE AND POS TAG FOR EACH WORD IN DATA

z<-udpipe(sentence,"english")
View(z)

#IMPORTING RELATIONAL DATA VIZUALIZATION LIBRARY

library(ggraph)

#DEPENDENCY PARSER  PLOT

textplot_dependencyparser(z)
