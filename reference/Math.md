# Various logarithmic and circular functions for brobs

Various elementary functions for brobs

## Arguments

- x:

  Object of class `brob` (or sometimes `glub`)

- base:

  In function `log()`, the base of the logarithm

## Details

For `brob`s: apart from `abs()`, `log()`, `exp()`, `sinh()` and
`cosh()`, these functions return `f(as.numeric(x))` so are numeric; the
exceptional functions return `brob`s.

For `glub`s: mostly direct transliteration of the appropriate formula;
one might note that `log(z)` is defined as `glub(log(Mod(x)),Arg(x))`.

Function `sum1()` takes a single argument, interpreted as a vector of
brobs, and returns its sum (compare
[`sum()`](https://robinhankin.github.io/Brobdingnag/reference/Summary.md)
which can take any number of arguments).

## Author

Robin K. S. Hankin

## Examples

``` r
exp(as.brob(3000))  #exp(3000) is represented with zero error
#> [1] +exp(3000)
```
