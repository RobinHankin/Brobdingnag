# Infinite brobs and glubs

Brobdingnagian and Glubbdubdribian infinity

## Usage

``` r
# S4 method for class 'brob'
is.infinite(x)
# S4 method for class 'glub'
is.infinite(x)
# S4 method for class 'brob'
is.finite(x)
# S4 method for class 'glub'
is.finite(x)
```

## Arguments

- x:

  vector of class brob or glub

## Details

For a Brobdingnagian number, `is.infinite()` returns `TRUE` if the
exponent is infinite.

A Glubbdubdribian number is infinite if either the real or imaginary
component is infinite.

Function `is.finite()` is simply the logical negation of
`is.infinite()`.

## Author

Robin K. S. Hankin

## Examples

``` r

is.infinite(brob(c(1,4,Inf)))
#> [1] FALSE FALSE  TRUE

is.infinite(glub(3,Inf))
#> [1] TRUE
is.infinite(glub(Inf,3))
#> [1] TRUE


is.infinite(exp(1e300))
#> [1] TRUE
is.infinite(brob(1e300))
#> [1] FALSE
# (Brobdingnagian infinity is bigger than regular infinity ;-)

```
