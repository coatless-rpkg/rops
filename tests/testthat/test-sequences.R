context("sequences")

test_that("Safe Sequence Generation", {

    expect_identical(safe_seq(1, 2, by = -1), integer(),
                    "Non-increasing sequence")

    expect_identical(safe_seq(1, 0, by = 1), integer(),
                    "Non-decreasing sequence")

    expect_identical(safe_seq(1L, 2L, by = 1L), 1L:2L,
                    "Increasing sequence")

    expect_identical(safe_seq(2L, 0L, by = -1L), 2L:0L,
                    "Decreasing sequence")

    expect_error(safe_seq(c(2, 3), 0, by = 0),
                 info = "No increment possible")

    expect_error(safe_seq(c(2, 3), 0, by = -1),
                 info = "Multiple `to` values sequence")

    expect_error(safe_seq(2, c(0, 1), by = -1),
                 info = "Multiple `from` values sequence")

    expect_error(safe_seq(c(2, 3), c(0, 1), by = -1),
                 info = "Multiple `to` and `from` values sequences")
})

test_that("Safe Colon Operator Generation", {

    expect_identical(1L %:% 0L, integer(),
                     "Non-increasing sequence (Safe Colon)")

    expect_identical(1L %:% 2L, 1L:2L,
                 "Increasing sequence (Safe Colon)")
})
