advertising <- read.csv("data/Advertising.csv")

TV <- advertising$TV
Radio <- advertising$Radio
Newspaper <- advertising$Newspaper
regression <- lm(advertising$Sales ~ TV + Radio + Newspaper)
regression_summary <- summary(lm(advertising$Sales ~ TV + Radio + Newspaper))


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

png("images//residual-plot.png")
plot(regression, which = 1)
dev.off()

png("images//scale-location-plot.png")
plot(regression, which = 3)
dev.off()

png("images//normal-qq-plot.png")
plot(regression, which = 2)
dev.off()




save(regression, regression_summary, file = 'data//regression.RData')
