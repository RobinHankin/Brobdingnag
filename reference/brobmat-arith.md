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
#>   [,1]        [,2]         [,3]        
#> a +exp(47.99) +exp(48.937) +exp(49.066)
#> b +exp(48.99) +exp(49.937) +exp(50.066)
#> c +exp(49.99) +exp(50.937) +exp(51.066)
#> d +exp(50.99) +exp(51.937) +exp(52.066)
#> e +exp(51.99) +exp(52.937) +exp(53.066)
#> f +exp(52.99) +exp(53.937) +exp(54.066)
```
