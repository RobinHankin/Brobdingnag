# Brobdingagian matrix arithmetic

Basic arithmetic for Brobdingnagian matrices

## Usage

``` r
brobmat.mult(e1, e2)
brobmat.add(e1, e2)
brobmat.mult(e1, e2)
brobmat.power(e1, e2)
brobmat.inverse(e1)
brobmat.greater(e1, e2)
brobmat.equal(e1, e2)
getat(e1,e2)
```

## Arguments

- e1,e2:

  Arguments coerced to `brobmat`

## Details

These functions are helper functions used by the `brobmat` Arith group
and are not designed to be user-friendly. Function `getat()` is a helper
function that sets attributes such as dimnames of returned values.

## Value

Return a `brobmat`, or logical for the comparison operators.

## Author

Robin K. S. Hankin

## Examples

``` r
a <- brobmat(1:54,6,9)
rownames(a) <- letters[1:6]
a + 1e30
#>   [,1]         [,2]         [,3]         [,4]         [,5]         [,6]        
#> a +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078)
#> b +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078)
#> c +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078)
#> d +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078)
#> e +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078)
#> f +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078) +exp(69.078)
#>   [,7]         [,8]         [,9]        
#> a +exp(69.078) +exp(69.078) +exp(69.078)
#> b +exp(69.078) +exp(69.078) +exp(69.078)
#> c +exp(69.078) +exp(69.078) +exp(69.078)
#> d +exp(69.078) +exp(69.078) +exp(69.078)
#> e +exp(69.078) +exp(69.078) +exp(69.078)
#> f +exp(69.078) +exp(69.078) +exp(69.078)
a-a
#>   [,1]       [,2]       [,3]       [,4]       [,5]       [,6]       [,7]      
#> a -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf)
#> b -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf)
#> c -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf)
#> d -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf)
#> e -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf)
#> f -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf) -exp(-Inf)
#>   [,8]       [,9]      
#> a -exp(-Inf) -exp(-Inf)
#> b -exp(-Inf) -exp(-Inf)
#> c -exp(-Inf) -exp(-Inf)
#> d -exp(-Inf) -exp(-Inf)
#> e -exp(-Inf) -exp(-Inf)
#> f -exp(-Inf) -exp(-Inf)

b <- as.brobmat(matrix(rnorm(27),9,3))
colnames(b) <- month.abb[1:3]

a %*% b
#>   [,1]         [,2]        [,3]        
#> a +exp(47.593) +exp(46.08) +exp(48.934)
#> b +exp(48.593) +exp(47.08) +exp(49.934)
#> c +exp(49.593) +exp(48.08) +exp(50.934)
#> d +exp(50.593) +exp(49.08) +exp(51.934)
#> e +exp(51.593) +exp(50.08) +exp(52.934)
#> f +exp(52.593) +exp(51.08) +exp(53.934)
```
