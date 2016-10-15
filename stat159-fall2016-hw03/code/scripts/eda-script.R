advertising <- read.csv("../../data/Advertising.csv")


#Create images for histograms of variables
png("../../images/histogram-sales.png")
hist(advertising$Sales, breaks=10, main="Histogram of Sales", xlab="Sales")
dev.off()

png("../../images/histogram-tv.png")
hist(advertising$TV, breaks=20, main="Histogram of TV", xlab="TV Advertising")
dev.off()

png("../../images/histogram-radio.png")
hist(advertising$Radio, breaks=10, main="Histogram of Radio", xlab="Radio Advertising")
dev.off()

png("../../images/histogram-newspaper.png")
hist(advertising$Newspaper, breaks=10, main="Histogram of Newspaper", xlab="Newspaper Advertising")
dev.off()


#Create image for correlation matrix
png("../../images/scatterplot-matrix.png")
pairs(advertising[,c(2:5)])
dev.off()


corr_matrix <- cor(advertising[, c(2:5)])

#Save summary statistics and correlation matrix to eda-output.txt
sink("../../data/eda-output.txt")
cat("Summary of TV\n", append = TRUE)
print(summary(advertising$TV))
cat("Summary of Radio\n", append = TRUE)
print(summary(advertising$Radio))
cat("Summary of Newspaper\n", append = TRUE)
print(summary(advertising$Newspaper))
cat("Summary of Sales\n", append = TRUE)
print(summary(advertising$Sales))
cat("Correlation Matrix\n", append = TRUE)
print(corr_matrix)
sink()

save(corr_matrix, file = '../../data/correlation-matrix.RData')

