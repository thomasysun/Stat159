advertising <- read.csv("data/Advertising.csv")

regression <- lm(advertising$Sales ~ advertising$TV)
regression_summary <- summary(lm(advertising$Sales ~ advertising$TV))

png("images//scatterplot-tv-sales.png")
plot(advertising$TV, advertising$Sales, xlab="TV", ylab="Sales", col="blue")
abline(lm(advertising$Sales~ advertising$TV))
dev.off()

pdf("images//scatterplot-tv-sales.pdf")
plot(advertising$TV, advertising$Sales, xlab="TV", ylab="Sales", col="blue")
abline(lm(advertising$Sales~ advertising$TV))
dev.off()

save(regression, regression_summary, file = 'data//regression.RData')
