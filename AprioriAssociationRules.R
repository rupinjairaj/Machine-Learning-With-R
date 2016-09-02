# Installing the 'arules' package
install.packages("arules", dependencies = TRUE)

# loading the library
library(arules)

# set the working directory to the location where the 'data' folder is located
setwd("/home/rupin/Documents/Rupin/R")

# imoprting the transactions data; 'rm.duplicates' is set to false so as to not accidently delete any transaction data
transactions <- read.transactions(file = "./data/transactions.csv", rm.duplicates = FALSE, format = "single", sep = ",", cols = c(1,2))
transactions

# relative frequency of items 
itemFrequencyPlot(transactions)

# running the algorithm
minedbasketrules <- apriori(transactions, parameter = list(sup = 0.5, conf = 0.8, target = "rules"))

# inspecting the result
inspect(minedbasketrules)


