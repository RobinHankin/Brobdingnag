test_that("Test suite aae, some ad-hoc tests",{
    expect_error(newbrobmat(matrix(1:20, 4, 5), positive = rep(TRUE, 21)))
        
} )
