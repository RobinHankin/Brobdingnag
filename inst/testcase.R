library("Brobdingnag")
library("cubature")

f.b <- function(x) {
  x <- as.brob(x[1, ])
 as.matrix( brobmat(-x^2 + 4, ncol = length(x)))
}

print(cubature::hcubature(f = f.b, lowerLimit = -2, upperLimit = 2, vectorInterface = TRUE))
