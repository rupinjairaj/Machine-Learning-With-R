# setup the data
secondsCall <- c(23, 28, 39, 48, 64, 75, 88, 96, 97, 109, 118, 149, 150, 156, 165)
dollarProfit <- c(1, 2, 3, 3, 4, 4, 5, 6, 6, 7, 8, 8, 9, 10, 10)

# create a simple plot
plot(secondsCall, dollarProfit)

# define the linear model
model <- lm(secondsCall ~ dollarProfit)
model

# expand the summary of the model
summary(model)

abline(model)

# make a basic prediction of someone making $5
predict(model, newdata = data.frame(dollarProfit=5))

predict(model, newdata = data.frame(dollarProfit=5), interval = "pred")

predict(model, newdata = data.frame(dollarProfit=5), interval = "confidence")
