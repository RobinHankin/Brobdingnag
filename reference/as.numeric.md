# Coerces to numeric or complex form

Coerces an object of class `brob` to numeric, or an object of class
`glub` to complex

## Arguments

- x:

  Object of class `brob` or `glub`

- ...:

  Further arguments (currently ignored)

## Details

Function `as.numeric()` coerces a `brob` to numeric; if given a `glub`,
the imaginary component is ignored (and a warning given).

Function `as.complex()` coerces to complex.

## Author

Robin K. S. Hankin

## Note

If \\\left\|x\right\|\\ is greater than `.Machine$double.xmax`, then
`as.numeric(x)` returns `Inf` or `-Inf` but no warning is given.

## Examples

``` r
a <- as.brob(1:10)
a <- cbrob(a, as.brob(10)^1e26)
a
#>  [1] +exp(0)          +exp(0.69315)    +exp(1.0986)     +exp(1.3863)    
#>  [5] +exp(1.6094)     +exp(1.7918)     +exp(1.9459)     +exp(2.0794)    
#>  [9] +exp(2.1972)     +exp(2.3026)     +exp(2.3026e+26)
as.numeric(a)
#>  [1]   1   2   3   4   5   6   7   8   9  10 Inf

as.complex(10i + a)
#>  [1]   1+10i   2+10i   3+10i   4+10i   5+10i   6+10i   7+10i   8+10i   9+10i
#> [10]  10+10i Inf+10i
```
