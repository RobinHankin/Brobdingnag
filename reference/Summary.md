# Various summary statistics for brobs and glubs

Various summary statistics for brobs and glubs

## Arguments

- x,...:

  Objects of class `brob` or, in the case of `sum()` and `prob()`, class
  `glub`

- na.rm:

  Boolean, with default `FALSE` meaning to interpret `NA`s literally and
  `TRUE` meaning to ignore any such elements

## Details

For a `brob` object, being `NA` is not entirely straightforward. The S4
method for `is.na` is too “strict” for some of the functions considered
here. Consider `max(a)` where `a` includes only positive, fully
specified, elements, and elements with known negative sign and exponents
that include `NA` values. Here, `max(a)` is unambiguously determined.

Similar logic applies to `min()` and, by extension, `range()`.

## Author

Robin K. S. Hankin

## Note

Function `prod()` is *very* slow for long `glub` vectors. It has to
compute four Brobdingnagian products and two Brobdingnagian sums per
element of its argument, and this takes a long time.

S4 generic `sum()` dispatches on its first argument, and is not perfect.
It will not automatically coerce brobs to glubs, nor numerics to brobs.
To ensure glub-consistency, use `sum(as.glub(1i), ...)`.

## See also

[`is.na`](https://rdrr.io/r/base/NA.html)

## Examples

``` r
a <- as.brob(1:10)
max(cbrob(1:10,brob(NA,FALSE)))
#> [1] +exp(2.3026)
```
