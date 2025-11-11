# Real and imaginary manipulation

Get or set real and imaginary components of `brob`s or `glub`s.

## Usage

``` r
# S4 method for class 'glub'
Re(z)
# S4 method for class 'glub'
Im(z)
# S4 method for class 'glub'
Mod(z)
# S4 method for class 'glub'
Conj(z)
# S4 method for class 'glub'
Arg(z)
Re(z) <- value
Im(z) <- value
```

## Arguments

- z:

  object of class `glub` (or, in the case of `Im<-()` or
  `Im(z) <- value`, class `brob`)

- value:

  object of class `numeric` or `brob`

## Value

Functions `Re()` and `Im()` return an object of class `brob`; functions
`Re<-()` and `Im<-()` return an object of class `glub`

## Author

Robin K. S. Hankin

## Examples

``` r
a <- cbrob(1:10,brob(1e100))
Im(a) <- 11:1
a
#>  [1] +exp(0)+exp(2.3979)i         +exp(0.69315)+exp(2.3026)i  
#>  [3] +exp(1.0986)+exp(2.1972)i    +exp(1.3863)+exp(2.0794)i   
#>  [5] +exp(1.6094)+exp(1.9459)i    +exp(1.7918)+exp(1.7918)i   
#>  [7] +exp(1.9459)+exp(1.6094)i    +exp(2.0794)+exp(1.3863)i   
#>  [9] +exp(2.1972)+exp(1.0986)i    +exp(2.3026)+exp(0.69315)i  
#> [11] +exp(1e+100)+exp(0)i        

```
