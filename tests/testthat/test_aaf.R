test_that("Test suite aaf, some ad-hoc tests for sum(x,y) etc", {

    TOL <- 1e-6
    x <- as.brob(rnorm(4))
    y <- as.brob(rnorm(5))
    z <- as.brob(rnorm(6))

    expect_true(abs(sum(x,y) - (sum(x) + sum(y))) <= TOL)
    expect_true(abs(sum(x,z) - (sum(x) + sum(z))) <= TOL)
    expect_true(abs(sum(y,z) - (sum(y) + sum(z))) <= TOL)

    expect_true(abs(sum(x,y,z) - (sum(x) + sum(y) + sum(z))) <= TOL)

    x <- x + 1i

    expect_true(abs(sum(x,y) - (sum(x) + sum(y))) <= TOL)
    if(FALSE){
        expect_true(abs(sum(y,x) - (sum(y) + sum(x))) <= TOL)
    }

    expect_true(abs(sum(x,y,z) - (sum(x) + sum(y) + sum(z))) <= TOL)
    if(FALSE){
        expect_true(abs(sum(y,x,z) - (sum(x) + sum(y) + sum(z))) <= TOL)
        expect_true(abs(sum(y,z,x) - (sum(x) + sum(y) + sum(z))) <= TOL)
    }
    y <- y + 1i

    expect_true(abs(sum(x,y,z) - (sum(x) + sum(y) + sum(z))) <= TOL)
    expect_true(abs(sum(x,z,y) - (sum(x) + sum(y) + sum(z))) <= TOL)
    expect_true(abs(sum(y,x,z) - (sum(x) + sum(y) + sum(z))) <= TOL)
    expect_true(abs(sum(y,z,x) - (sum(x) + sum(y) + sum(z))) <= TOL)


} )
