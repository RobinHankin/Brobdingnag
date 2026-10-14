# Random brobs

Creates a vector of random brobs. Intended as quick “get you going”
examples

## Usage

``` r
rbrob(n = 10)
rbrobb(n = 30)
```

## Arguments

- n:

  Length of random vector to generate

## Details

Functions `rbrobb()` gives, by default, a more complicated expression.

## Author

Robin K. S. Hankin

## Examples

``` r

rbrob()
#>  [1] +exp(-499.93)   +exp(-500.64)   -exp(-0.049965) -exp(-0.25148) 
#>  [5] +exp(500.44)    -exp(2.7554)    +exp(500.05)    +exp(0.57771)  
#>  [9] +exp(500.12)    -exp(-1.9117)  
rbrobb()
#>  [1] -exp(499.45)   -exp(-498.89)  +exp(-2.6123)  -exp(-500.16)  -exp(0.43389) 
#>  [6] -exp(-500.38)  -exp(500.42)   -exp(-498.94)  +exp(-498.95)  +exp(-500.04) 
#> [11] +exp(-499.51)  -exp(1.6729)   +exp(-500.35)  +exp(500.95)   +exp(1.3168)  
#> [16] +exp(-0.29664) -exp(499.61)   +exp(-500.79)  +exp(498.94)   +exp(499.2)   
#> [21] -exp(-1.7563)  -exp(-0.69054) +exp(-500.56)  +exp(499.46)   +exp(-499.77) 
#> [26] +exp(0.97845)  -exp(-500.21)  +exp(-501.4)   +exp(0.25854)  -exp(-0.4418) 
```
