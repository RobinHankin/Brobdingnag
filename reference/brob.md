# Brobdingnagian numbers

Create, coerce to or test for a Brobdingnagian object

## Usage

``` r
brob(x = double(), positive)
as.brob(x)
is.brob(x)
```

## Arguments

- x:

  Quantity to be tested, coerced in to Brobdingnagian form

- positive:

  In function `brob()`, logical indicating whether the number is
  positive (actually, positive or zero)

## Details

Function `as.brob()` is the user's workhorse: use this to coerce numeric
vectors to `brob`s.

Function `is.brob()` tests for its arguments being of class `brob`.

Function `brob()` takes argument `x` and returns a `brob` formally equal
to \\e^x\\; set argument `positive` to `FALSE` to return \\-e^x\\. Thus
calling function `exp(x)` simply returns `brob(x)`. This function is not
really intended for the end user: it is confusing and includes no
argument checking. In general numerical work, use function `as.brob()`
instead, although be aware that if you really really want \\e^{10^7}\\,
you should use `brob(1e7)`; this would be an **exact** representation.

## Note

Real numbers are represented by two objects: a real, holding the
logarithm of their absolute values; and a logical, indicating the sign.
Multiplication and exponentiation are easy: the challenge is addition.
This is achieved using the (trivial) identity
\\\log(e^x+e^y)=x+\log(1+e^{y-x})\\ where, WLOG, \\y\<x\\.

Complex numbers are stored as a pair of `brob`s: objects of class
`glub`.

The package is a simple example of S4 methods. However, it *could* be
viewed as a cautionary tale: the underlying R concepts are easy yet the
S4 implementation is long and difficult. I would not recommend using S4
methods for a package as simple as this; S3 methods would have been
perfectly adequate. I would suggest that S4 methods should only be used
when S3 methods are *demonstrably* inadequate.

The package has poor handling of `NA` and `NaN`. Currently,
`as.brob(1) + as.brob(c(1,NA))` returns an error.

## Author

Robin K. S, Hankin

## See also

[`glub`](https://robinhankin.github.io/Brobdingnag/reference/glub.md)

## Examples

``` r

googol <- as.brob(10)^100
googolplex <- 10^googol

(googolplex/googol) / googolplex
#> [1] +exp(0)
#  Thus googolplex/googol == googolplex (!)


# use cbrob() instead of c() when Brobdingnagian numbers are involved:
cbrob(4,exp(as.brob(1e55)))
#> [1] +exp(1.3863) +exp(1e+55) 

```
