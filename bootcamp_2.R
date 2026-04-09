##### Bootcamp 2 #####

library(dplyr)
library(ggplot2)
library(gapminder)
library(readr)
library(stringr)
library(lubridate)
#install.packages("lubridate")


###############################################################################
# Work with text

1:15 %>% class
c(1, 2, 3) %>% class
c(1, 'eric', 3) %>% class
c(1, 'eric', 3)

person<- 'John Benson'
adjective<- 'hairy'
verb<- 'throws'
paste0(person, ' is really ', adjective, ' today. Look how they ', verb, '!' )

vector<- 1:100
for(i in vector){
  print(paste0('Now running iteration', i))
  Sys.sleep(1)
}

# Paste can collapse too
me<- c('Sophie', 'Lorene', 'Nolen')
me
paste(me, collapse=' ')

# Same length pasting
x<- c('Aubrie', 'Sophie')
y<- c(18, 20)
paste0(x, ' is ', y)

# one to many pasting
x<- c('Sophie')
y<- c('20', 'short', 'amwesome')
paste0(x, ' is ', y)

###############################################################################
#changing case

x<- 'that tree is far away.'
toupper(x)
tolower(x)

# Number of characters
nchar(x)
(days<- 1:15 %>% as.character)
nchar(days)
days[which(nchar(days) ==1)]
days[1]
days[6]
days[6:7]

# One way to pad with zeros
(days<- 1:15 %>% as.character)
days<- paste0('0', days[which(nchar(days) == 1)])
is <- which(nchar(days) == 1)
days

# Another way to pad with zeros
(days<- 1:15 %>% as.character)
days[which(nchar(days) == 1)]<- paste0('0'[which(nchar(days) == 1)])
days

# A function for padding strings
days<- 1:15 %>% as.character
str_pad(day, width=2, side='left', pad='0')


###############################################################################
# find and replace
years<- 1900:1999 %>% as.character
year
is<- grep('198', years) # returns only the indices that match 
years[is]

is_truefalse<- grepl('198', years) # return a TRUE/FALSE decision for every element 
is_truefalse
years[is_truefalse]

# Replace / substitute
dates <- c('2025-03-01', '2026-03-16')
gsub('-', '/', dates)
# pattern you want to replace,
# what to replace with, 
# and the vector to do it to
gsub('-', '', dates)

gapminder$country %>% unique
gapminder %>% 
  mutate(country = gsub('United States', 'USA', country)) %>% 
  pull(country) %>% unique

# Subsetting text
dates <- c('2005-10-04', '2007-08-13', '2014-06-18')
yyyy <- substr(dates, 1, 4) #subsetting a string
(mm <- substr(dates, 6, 7))
(dd <- substr(dates, 9, 10))

(splits <-str_split(dates, '-'))
sapply(splits, '[[', 1)
sapply(splits, '[[', 2)
sapply(splits, '[[', 3)






















