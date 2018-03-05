context("is_check")

test_that("Verify whole number", {
    expect_equal(is_whole(2.3), FALSE,
                 "Check non-whole numeric")

    expect_equal(is_whole(1), TRUE,
                 "Check whole numeric")

    expect_equal(is_whole(4L), TRUE,
                 "Check integer")

    expect_equal(is_whole(1), TRUE,
                 "Vectorization check")
})
