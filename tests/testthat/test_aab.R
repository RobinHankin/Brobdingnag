test_that("Test suite aab, Brobdingnagian functionality",{
# thanks to an insightful report by martinmodrak
    
    expect_error(new("brob", x = c(30,10,15), positive = c(NA,TRUE, NA)))
    expect_error(new("brob", x = c(30,10,15), positive = c(1,2,3)))

} )


