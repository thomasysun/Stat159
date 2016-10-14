
# load the source code of the functions to be tested
source("../functions/regression-functions.R")

context("Test for values of summary statistics for multiple regression") 

test_that("returns the value that is expected", {
  
  reg <- lm(mpg ~ disp + hp, data = mtcars)
  regsum <- summary(reg)
  
  expect_equal(residual_sum_squares(reg), sum(reg$residuals^2))
  expect_length(residual_sum_squares(reg), 1)
  expect_type(residual_sum_squares(reg), 'double')
  
  expect_equal(total_sum_squares(reg), sum((mtcars$mpg - mean(mtcars$mpg))^2))
  expect_length(total_sum_squares(reg), 1)
  expect_type(total_sum_squares(reg), 'double')
  
  expect_equal(r_squared(reg), regsum$r.squared)
  expect_length(r_squared(reg), 1)
  expect_type(r_squared(reg), 'double')
  
  expect_equal(f_statistic(reg), regsum$fstatistic[[1]])
  expect_length(f_statistic(reg), 1)
  expect_type(f_statistic(reg), 'double')
  
  expect_equal(residual_std_error(reg), regsum$sigma)
  expect_length(residual_std_error(reg), 1)
  expect_type(residual_std_error(reg), 'double')
  
})

context("Test for values of summary statistics for simple regression") 

test_that("returns the value that is expected", {
  
  reg <- lm(mpg ~ disp, data = mtcars)
  regsum <- summary(reg)
  
  expect_equal(residual_sum_squares(reg), sum(reg$residuals^2))
  expect_length(residual_sum_squares(reg), 1)
  expect_type(residual_sum_squares(reg), 'double')
  
  expect_equal(total_sum_squares(reg), sum((mtcars$mpg - mean(mtcars$mpg))^2))
  expect_length(total_sum_squares(reg), 1)
  expect_type(total_sum_squares(reg), 'double')
  
  expect_equal(r_squared(reg), regsum$r.squared)
  expect_length(r_squared(reg), 1)
  expect_type(r_squared(reg), 'double')
  
  expect_equal(f_statistic(reg), regsum$fstatistic[[1]])
  expect_length(f_statistic(reg), 1)
  expect_type(f_statistic(reg), 'double')
  
  expect_equal(residual_std_error(reg), regsum$sigma)
  expect_length(residual_std_error(reg), 1)
  expect_type(residual_std_error(reg), 'double')
  
})


