advertising <- read.csv("data/Advertising.csv")


png("images//histogram-tv.png")
hist(advertising$TV, breaks=20, main="Histogram of TV", xlab="TV Advertising")
dev.off()

pdf("images//histogram-tv.pdf")
hist(advertising$TV, breaks=20, main="Histogram of TV", xlab="TV Advertising")
dev.off()


png("images//histogram-sales.png")
hist(advertising$Sales, breaks=10, main="Histogram of Sales", xlab="Sales")
dev.off()

pdf("images//histogram-sales.pdf")
hist(advertising$Sales, breaks=10, main="Histogram of Sales", xlab="Sales")
dev.off()


sink("data//eda-output.txt")
cat("Summary of TV\n", append = TRUE)
print(summary(advertising$TV))
cat("Summary of Sales\n", append = TRUE)
print(summary(advertising$Sales))
sink()
