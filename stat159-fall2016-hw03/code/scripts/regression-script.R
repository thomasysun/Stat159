advertising <- read.csv("data/Advertising.csv")

TV <- advertising$TV
regression <- lm(advertising$Sales ~ TV)
regression_summary <- summary(lm(advertising$Sales ~ TV))


png("images//scatterplot-tv-sales.png")
plot(advertising$TV, advertising$Sales, xlab="TV", ylab="Sales", col="blue")
abline(lm(advertising$Sales~ advertising$TV))
dev.off()

png("images//scatterplot-radio-sales.png")
plot(advertising$Radio, advertising$Sales, xlab="Radio", ylab="Sales", col="blue")
abline(lm(advertising$Sales~ advertising$Radio))
dev.off()

png("images//scatterplot-newspaper-sales.png")
plot(advertising$Newspaper, advertising$Sales, xlab="Newspaper", ylab="Sales", col="blue")
abline(lm(advertising$Sales~ advertising$Newspaper))
dev.off()


save(regression, regression_summary, file = 'data//regression.RData')
