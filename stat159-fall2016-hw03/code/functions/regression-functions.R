## Regression Functions

## Calculates residual sum of squares. 
## Expected input is an object of class "lm".
## Returns a numeric vector of length one, equal to the residual sum of squares of the "lm" object.
residual_sum_squares <- function(x) { 
  sum(x$residuals^2)
}

## Calculates total sum of squares. 
## Expected input is an object of class "lm".
## Returns a numeric vector of length one, equal to the total sum of squares of the "lm" object.
total_sum_squares <- function(x) { 
  sum((x$fitted.values - mean(x$fitted.values))^2) + sum(x$residuals^2)
}

## Calculates the R^2 (coefficient of determination). 
## Expected input is an object of class "lm".
## Returns a numeric vector of length one, equal to the R^2 of the "lm" object.
r_squared <- function(x) { 
  1 - sum(x$residuals^2)/(sum((x$fitted.values - mean(x$fitted.values))^2) + sum(x$residuals^2)) 
}

## Calculates the F-statistic. 
## Expected input is an object of class "lm".
## Returns a numeric vector of length one, equal to the F-statistic of the "lm" object.
f_statistic <- function(x) {
  TSS <- sum((x$fitted.values - mean(x$fitted.values))^2) + sum(x$residuals^2) 
  RSS <- sum(x$residuals^2)
  ((TSS-RSS)/(length(x$coefficient)-1)) / (RSS/(length(x$residuals) - length(x$coefficient)))
  
}

## Calculates the residual standard error. 
## Expected input is an object of class "lm".
## Returns a numeric vector of length one, equal to the residual standard error of the "lm" object.
residual_std_error <- function(x) {
  sqrt( sum(x$residuals^2)/(length(x$residuals) - length(x$coefficient)) )
}







                                 