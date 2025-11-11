# Methods for Function Arith in package Brobdingnag

Methods for Arithmetic functions in package Brobdingnag: `+`, `-`, `*`,
`/`, `^`

## Author

Robin K. S. Hankin

## Note

The unary arithmetic functions (viz “`+`” and “`-`”) do no coercion.

The binary arithmetic functions coerce `numeric` \<op\> `brob` to
`brob`; and `numeric` \<op\> `glub`, `complex` \<op\> `brob`, and `brob`
\<op\> `glub`, to `glub`.

## Examples

``` r
x <- as.brob(1:10)
y <- 1e10

x+y
#>  [1] +exp(23.026) +exp(23.026) +exp(23.026) +exp(23.026) +exp(23.026)
#>  [6] +exp(23.026) +exp(23.026) +exp(23.026) +exp(23.026) +exp(23.026)

as.numeric((x+y)-1e10)
#>  [1]  0.9999823  2.0000002  2.9999825  4.0000003  4.9999827  6.0000005
#>  [7]  6.9999828  8.0000007  8.9999830 10.0000008

x^(1/y)
#>  [1] +exp(0)          +exp(6.9315e-11) +exp(1.0986e-10) +exp(1.3863e-10)
#>  [5] +exp(1.6094e-10) +exp(1.7918e-10) +exp(1.9459e-10) +exp(2.0794e-10)
#>  [9] +exp(2.1972e-10) +exp(2.3026e-10)


```
