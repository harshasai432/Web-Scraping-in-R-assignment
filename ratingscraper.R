library (rvest)
library(dplyr)

url <- 'https://www.amazon.in/Apple-iPhone-13-Pro-128GB/dp/B09G99YPQM/ref=sr_1_5?crid=1PI6V32TKL1A2&keywords=iphone&qid=1653668531&sprefix=iphon%2Caps%2C293&sr=8-5&th=1'

my_html <- read_html(url)

my_table <- html_nodes(my_html,'table')

rating_table <- html_table(my_table)[[7]]

View(rating_table)

write.csv(rating_table, "ratingpercentage.csv")