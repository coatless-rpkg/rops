context("equality-ops")

test_that("Object equality", {
  x = y = c(1,2,3,4)
  x2 = x+1

  expect_equal(x %!=% y, FALSE)
  expect_equal(x %==% y, TRUE)

  expect_equal(x2 %==% y, FALSE)
  expect_equal(x2 %!=% y, TRUE)
})
