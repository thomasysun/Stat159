advertising <- read.csv("../../data/Advertising.csv")

#Create regression objects
regressionTV <- lm(Sales ~ TV, data = advertising)
regressionTV_summary <- summary(lm(Sales ~ TV, data = advertising))
regressionRadio <- lm(Sales ~ Radio, data = advertising)
regressionRadio_summary <- summary(lm(Sales ~ Radio, data = advertising))
regressionNewspaper <- lm(Sales ~ Newspaper, data = advertising)
regressionNewspaper_summary <- summary(lm(Sales ~ Newspaper, data = advertising))
regression <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)
regression_summary <- summary(lm(Sales ~ TV + Radio + Newspaper, data = advertising))

#Create scatterplots, residual plot, scale location plot, and normal QQ plot
png("../../images/scatterplot-tv-sales.png")
plot(advertising$TV, advertising$Sales, xlab="TV", ylab="Sales", col="blue")
abline(lm(advertising$Sales~ advertising$TV))
dev.off()

png("../../images/scatterplot-radio-sales.png")
plot(advertising$Radio, advertising$Sales, xlab="Radio", ylab="Sales", col="blue")
abline(lm(advertising$Sales~ advertising$Radio))
dev.off()

png("../../images/scatterplot-newspaper-sales.png")
plot(advertising$Newspaper, advertising$Sales, xlab="Newspaper", ylab="Sales", col="blue")
abline(lm(advertising$Sales~ advertising$Newspaper))
dev.off()

png("../../images/residual-plot.png")
plot(regression, which = 1)
dev.off()

png("../../images/scale-location-plot.png")
plot(regression, which = 3)
dev.off()

png("../../images/normal-qq-plot.png")
plot(regression, which = 2)
dev.off()

#Save regression objects to regression.RData
save(regressionTV, regressionTV_summary,
     regressionRadio, regressionRadio_summary,
     regressionNewspaper, regressionNewspaper_summary,
     regression, regression_summary, file = '../../data/regression.RData')
