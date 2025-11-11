# Brobdingnagian matrices

Basic matrix arithmetic for Brobdingnagian numbers. Matrix addition,
multiplication extraction and replacement implemented but not the
determinant or matrix inverse.

## Usage

``` r
brobmat(..., positive)
newbrobmat(x,positive)
as.brobmat(x)
is.brobmat(x)
brobmat_to_brob(x)
diag(x,...)
# S3 method for class 'brobmat'
print(x,...)
t(x,...)
```

## Arguments

- x:

  Argument

- ...:

  Further arguments

- positive:

  Logical, indicating whether an element is positive

## Details

Basic arithmetic for Brobdingnagian matrices.

To create a Brobdingnagian matrix, use
[`as.brobmat()`](https://robinhankin.github.io/Brobdingnag/reference/brobmat.html);
function `brobmat()` can be confusing.

Function `brobmat()` is like
[`brob()`](https://robinhankin.github.io/Brobdingnag/reference/brob.md)
in that it interprets its first argument as the exponent (but creates a
matrix); the sign of the entry is given by Boolean argument `positive`.
Note that `brobmat()` accepts a Brobdingnagian vector as primary
argument, and in this case the sign is respected.

Function
[`as.brobmat()`](https://robinhankin.github.io/Brobdingnag/reference/brobmat.html)
coerces a numeric matrix to a `brobmat`.

## Value

Generally return a `brobmat` or `brob`.

## Author

Robin K. S. Hankin

## Examples

``` r
(M <- brobmat(-10:19,5,6))
#>      [,1]      [,2]     [,3]    [,4]    [,5]     [,6]    
#> [1,] +exp(-10) +exp(-5) +exp(0) +exp(5) +exp(10) +exp(15)
#> [2,] +exp(-9)  +exp(-4) +exp(1) +exp(6) +exp(11) +exp(16)
#> [3,] +exp(-8)  +exp(-3) +exp(2) +exp(7) +exp(12) +exp(17)
#> [4,] +exp(-7)  +exp(-2) +exp(3) +exp(8) +exp(13) +exp(18)
#> [5,] +exp(-6)  +exp(-1) +exp(4) +exp(9) +exp(14) +exp(19)
all(M > 0)  # should be TRUE (sic)
#> [1] TRUE

as.brobmat(matrix(-10:19,5,6))
#>      [,1]         [,2]          [,3]          [,4]         [,5]        
#> [1,] -exp(2.3026) -exp(1.6094)  +exp(-Inf)    +exp(1.6094) +exp(2.3026)
#> [2,] -exp(2.1972) -exp(1.3863)  +exp(0)       +exp(1.7918) +exp(2.3979)
#> [3,] -exp(2.0794) -exp(1.0986)  +exp(0.69315) +exp(1.9459) +exp(2.4849)
#> [4,] -exp(1.9459) -exp(0.69315) +exp(1.0986)  +exp(2.0794) +exp(2.5649)
#> [5,] -exp(1.7918) -exp(0)       +exp(1.3863)  +exp(2.1972) +exp(2.6391)
#>      [,6]        
#> [1,] +exp(2.7081)
#> [2,] +exp(2.7726)
#> [3,] +exp(2.8332)
#> [4,] +exp(2.8904)
#> [5,] +exp(2.9444)
```
