library(rmarkdown)
library(knitr)

sessionInfo()

sink("session-info.txt")
print(sessionInfo())
sink()