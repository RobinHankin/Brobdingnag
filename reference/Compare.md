# Methods for Function Compare in Package Brobdingnag

Methods for comparison (greater than, etc) in package Brobdingnag

## Note

As for
[`min()`](https://robinhankin.github.io/Brobdingnag/reference/Summary.md)
and
[`max()`](https://robinhankin.github.io/Brobdingnag/reference/Summary.md),
comparison is not entirely straightforward in the presence of `NA`s.

The low-level workhorses are `.Brob.equal()` for equality and
`.Brob.greater()` for ‘strictly greater than’. All other comparisons are
calculated by combining these two.

Comparison \[function `.Brob.compare()`\] explicitly tests for a zero
length argument and if given one returns `logical(0)` to match base
behaviour.

## Examples

``` r
  a <- as.brob(10)^(0.5 + 97:103)
  a < 1e100
#> [1]  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE
  
```
