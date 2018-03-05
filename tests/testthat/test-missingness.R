context("missingness operators")

test_that("ifna Operator", {

    x = c(1, NA, NA, 4)
    y = 1:4

    expect_equal(ifna(x, y), y)


    x = c(1, NA, NA, 4)
    y = 3

    expect_equal(ifna(x, y), c(1, y, y, 4))
})


test_that("Null Coalescing Operator", {
    expect_equal(3 %??% 4, 3)

    expect_equal(1 %??% NULL, 1)

    expect_equal(NULL %??% 2, 2)

    expect_equal(NULL %??% 7 %??% 8, 7)
})
