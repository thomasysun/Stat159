
x <- c(1, 2, 3, 4, 5)
y <- c(1, 2, 3, 4, NA)
z <- c(TRUE, FALSE, TRUE)
w <- letters[1:5]

library(testthat)
test_file("tests.R")

# load the source code of the functions to be tested
source("functions/range-value.R")

context("Test for NA values") 

test_that("range works as expected" {
  y <- c(1, 2, 3, 4, NA)
  
  expect_length(range_value(y), 1)
  expect_type(range_value(y), 'NA_real_')
})

context("Test for TRUE/FALSE") 

test_that("range works as expected" {
  z <- c(TRUE, FALSE, TRUE)
  
  expect_equal(range_value(z), 1L)
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
})

context("Test for non numbers") 

test_that("range works as expected" {
  w <- letters[1:5]
  
  expect_length(range_value(w), 1)
  expect_error(range_value(w), 'error')
})

source("functions/missing-values.R")

context("Test for sum of NA")

test_that("Sum of NA works as expected" {
  y <- c(1, 2, 3, 4, NA)
  
  expect_equal(range_value(x), >=0)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})

source("functions/center-measures.R")

context("Test for values of center measures")

test_that("Center measures work as expected" {
  x <- c(1, 2, 3, 4, 5)
  
  expect_length(range_value(x), 2)
  expect_type(range_value(x), 'double')
})








