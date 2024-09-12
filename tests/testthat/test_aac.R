test_that("Test suite aab, Brobdingnagian functionality",{

    tol <- 1e-6
    
    M1 <- matrix(rnorm(99),9,11)
    M2 <- as.brobmat(M1)

    expect_true(all(abs(M2-M1) < tol))
    expect_true(all(abs(M1-M2) < tol))

    
} )
