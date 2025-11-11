# Combine Brobdingnagian vectors

Combine Brobdingnagian or Glubdubbdribian vectors through concatenation

## Usage

``` r
cbrob(x, ...)
```

## Arguments

- x:

  Brobdingnagian vector

- ...:

  Other arguments coerced to brob form

## Details

If any argument has class `glub`, all arguments are coerced to `glub`s.
Otherwise, if any argument has class `brob`, all arguments are coerced
to `brob`s.

Function `cbrob()` operates recursively, calling `.cPair()` repeatedly.
Function `.cPair()` uses S4 method dispatch to call either
`.Brob.cpair()` or `.Glub.cpair()` according to the classes of the
arguments.

## Author

Robin K. S. Hankin; original idea due to John Chambers

## Note

As of R-2.4.0, it is apparently not possible to use S4 methods to
redefine [`c()`](https://rdrr.io/r/base/c.html) to coerce to class
`brob` form and concatenate as expected. This would seem to be a
reasonable interpretation of [`c()`](https://rdrr.io/r/base/c.html) from
the user's perspective.

Conceptually, the operation is simple: concatenate the `value` slot and
the `positive` slot separately, then call
[`brob()`](https://robinhankin.github.io/Brobdingnag/reference/brob.md)
on the two resulting vectors. When concatenating `glub` objects, the
real and imaginary components (being `brob`s) are concatenated using
`.Brob.cpair()`

The choice of name—`cbrob()`—is not entirely logical. Because it
operates consistently on `brob` and `glub` objects, it might be argued
that `cSwift()` would be a more appropriate name.

## Examples

``` r
a <- as.brob(2)^1e-40
cbrob(1:4,4:1,a)
#> [1] +exp(0)          +exp(0.69315)    +exp(1.0986)     +exp(1.3863)    
#> [5] +exp(1.3863)     +exp(1.0986)     +exp(0.69315)    +exp(0)         
#> [9] +exp(6.9315e-41)
cbrob(1:4,a,1i)
#> [1] +exp(0)+exp(-Inf)i            +exp(0.69315)+exp(-Inf)i     
#> [3] +exp(1.0986)+exp(-Inf)i       +exp(1.3863)+exp(-Inf)i      
#> [5] +exp(6.9315e-41)+exp(-Inf)i   +exp(-Inf)+exp(0)i           
```
