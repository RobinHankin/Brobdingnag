# Very Large Numbers in R

Very large numbers in R. Real numbers are held using their natural
logarithms, plus a logical flag indicating sign. Functionality for
complex numbers is also provided. The package includes a vignette that
gives a step-by-step introduction to using S4 methods.

## Details

The DESCRIPTION file: This package was not yet installed at build
time.  
Index: This package was not yet installed at build time.  
Real numbers are represented by two objects: a real, holding the
logarithm of their absolute values; and a logical, indicating the sign.
Multiplication and exponentiation are easy: the challenge is addition.
This is achieved using the (trivial) identity
\\\log(e^x+e^y)=x+\log(1+e^{y-x})\\ where, WLOG, \\y\<x\\.

Complex numbers are stored as a pair of `brob`s: objects of class
`glub`.

The package is a simple example of S4 methods.

However, it *could* be viewed as a cautionary tale: the underlying R
concepts are easy yet the S4 implementation is long and difficult. I
would not recommend using S4 methods for a package as simple as this; S3
methods would have been perfectly adequate. I would suggest that S4
methods should only be used when S3 methods are *demonstrably*
inadequate.

## Author

Robin K. S. Hankin \[aut, cre\] (ORCID:
\<https://orcid.org/0000-0001-5982-0415\>)

Maintainer: Robin K. S. Hankin \<hankin.robin@gmail.com\>

## References

R. K. S. Hankin 2007. “Very Large Numbers in R: Introducing Package
Brobdingnag”. R News, volume 7, number 3, pages 15-16

## Examples

``` r
googol <- as.brob(10)^100

googol
#> [1] +exp(230.26)
googol + googol/2
#> [1] +exp(230.66)

1/(googol + 1e99)
#> [1] +exp(-230.35)

(1:10)^googol
#>  [1] +exp(0)           +exp(6.9315e+99)  +exp(1.0986e+100) +exp(1.3863e+100)
#>  [5] +exp(1.6094e+100) +exp(1.7918e+100) +exp(1.9459e+100) +exp(2.0794e+100)
#>  [9] +exp(2.1972e+100) +exp(2.3026e+100)

googolplex <- 10^googol

googolplex
#> [1] +exp(2.3026e+100)

googolplex * googol  # practically the same as googolplex (!)
#> [1] +exp(2.3026e+100)


```
