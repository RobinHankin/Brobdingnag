# Very large numbers in R: the Brobdingnag package

# ![](reference/figures/Brobdingnag.png)

# Overview

The Brobdingnag package provides R-centric functionality for working
with very large numbers. It represents a number as its logarithm
together with a logical that indicates whether is positive. The vignette
functions as a “hello world” for S4 methods.

The package has functionality to represent Brobdingnagian matrices, and
complex numbers.

# Installation

You can install the released version of Brobdingnag from
[CRAN](https://CRAN.R-project.org) with:

``` r

# install.packages("Brobdingnag")  # uncomment this to use the package
library("Brobdingnag")
```

The package is maintained on
[github](https://github.com/RobinHankin/Brobdingnag).

# The `Brobdingnag` package in use

Consider a googol, conventionally defined as . In standard arithmetic we
may evaluate this as follows:

``` r

10^100
#> [1] 1e+100
```

But a googolplex, , is beyond floating-point representation:

``` r

10^(10^100)
#> [1] Inf
```

We may represent a googol or indeed a googolplex straightforwardly using
Brobdingnagian arithmetic, specifically by working with `brob` objects.

``` r

as.brob(10)
#> [1] +exp(2.3026)
googol <- as.brob(10)^100
googol
#> [1] +exp(230.26)
gplex <- 10^googol
gplex
#> [1] +exp(2.3026e+100)
```

In the above, we coerce `10` to Brobdingnagian form (that is, an object
of class `brob`) using
[`as.brob()`](https://robinhankin.github.io/Brobdingnag/reference/brob.md).
Most arithmetic methods work transparently with Brobdingnagian numbers:

``` r

googol
#> [1] +exp(230.26)
googol + googol
#> [1] +exp(230.95)
googol/10
#> [1] +exp(227.96)
1/googol
#> [1] +exp(-230.26)
sqrt(googol)
#> [1] +exp(115.13)
exp(googol)
#> [1] +exp(1e+100)
```

Note that precision may be adversely affected for very large numbers:

``` r

gplex
#> [1] +exp(2.3026e+100)
gplex - gplex/10
#> [1] -exp(-Inf)
```

The last line looks odd \[the return value is package idiom for zero\]
but symbolically we have . The package is vectorised and allows
Brobdingnagian arithmetic:

``` r

googol/(1:20)
#>  [1] +exp(230.26) +exp(229.57) +exp(229.16) +exp(228.87) +exp(228.65)
#>  [6] +exp(228.47) +exp(228.31) +exp(228.18) +exp(228.06) +exp(227.96)
#> [11] +exp(227.86) +exp(227.77) +exp(227.69) +exp(227.62) +exp(227.55)
#> [16] +exp(227.49) +exp(227.43) +exp(227.37) +exp(227.31) +exp(227.26)
```

Signed quantities operate as expected:

``` r

as.brob(5) - 1:10
#>  [1] +exp(1.3863)      +exp(1.0986)      +exp(0.69315)     +exp(-2.2204e-16)
#>  [5] -exp(-Inf)        -exp(4.4409e-16)  -exp(0.69315)     -exp(1.0986)     
#>  [9] -exp(1.3863)      -exp(1.6094)
```

It is a semi-nonobvious fact that, in addition to large numbers (that
is, and small numbers (), the package can deal with numbers very close
to 1 (that is, ). Suppose we wish to deal with . In the package:

``` r

a <- brob(1e-100)
a
#> [1] +exp(1e-100)
a^googol
#> [1] +exp(1)
```

The last line being numerical verification of the fact that . The
package also includes some functionality for Brobdingnagian matrices:

``` r

brobmat(1:9,3,3)
#>      [,1]    [,2]    [,3]   
#> [1,] +exp(1) +exp(4) +exp(7)
#> [2,] +exp(2) +exp(5) +exp(8)
#> [3,] +exp(3) +exp(6) +exp(9)
brobmat(1:9,3,3) %*% 10^brobmat(9:1,3,3)
#>      [,1]        [,2]         [,3]        
#> [1,] +exp(18659) +exp(929.93) +exp(47.249)
#> [2,] +exp(18660) +exp(930.93) +exp(48.249)
#> [3,] +exp(18661) +exp(931.93) +exp(49.249)
```
