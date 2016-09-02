s <- sample(100, 12, replace = TRUE)

# get a basic summary of the vector: lowest value, 1st quartile, median, 
## mean, 3rd quartile and maximum value
summary(s)

# just get the minimum
min(s)

# get the average
mean(s)

# get the median
median(s)

# get the standard deviation
sd(s)

# use the table function to see the frequency of the data
table(s)
