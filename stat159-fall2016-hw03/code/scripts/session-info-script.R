library(rmarkdown)
library(knitr)
library(testthat)

sessionInfo()

sink("session-info.txt")
print(sessionInfo())
sink()

