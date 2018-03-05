context("equality-ops")

test_that("Object equality", {
    x = y = c(1, 2, 3, 4)
    x2 = x + 1

    expect_equal(x %!=% y, FALSE)
    expect_equal(x %==% y, TRUE)

    expect_equal(x2 %==% y, FALSE)
    expect_equal(x2 %!=% y, TRUE)
})

test_that("Element not in set", {

    expect_equal(2 %notin% c(2, 3), FALSE,
                 "Element found in set")

    expect_equal(1 %notin% c(2, 3), TRUE,
                 "Element not found in set")

    expect_equal(c(1, 2) %notin% c(2, 3), c(TRUE, FALSE),
                 "Vectorization set check")
})
