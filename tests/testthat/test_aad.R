test_that("Test suite aad, brobmat extraction functionality",{

    checker <- function(M){
        expect_true(all(M[M>0] > 0))
        expect_true(all(M[M<0] < 0))
    }
    
    for(i in 1:2){
        checker(as.brobmat(matrix(rnorm(20),4,5)))
    }

} )
