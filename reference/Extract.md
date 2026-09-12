# Extract or Replace Parts of brobs or glubs

Methods for `"["` and `"[<-"`, i.e., extraction or subsetting of brobs
and glubs.

## Usage

``` r
# S4 method for class 'brob'
x[i, j, ..., drop = TRUE]
# S4 method for class 'glub'
x[i, j, ..., drop = TRUE]
# S4 method for class 'brobmat'
x[i, j, ..., drop = TRUE]
# S4 method for class 'brob'
x[i, j, ...] <- value
# S4 method for class 'glub'
x[i, j, ...] <- value
# S4 method for class 'brobmat'
x[i, j, ...] <- value
```

## Arguments

- x:

  Object of class brob or glub

- i, j, ...:

  elements to extract or replace

- value:

  replacement value

- drop:

  Boolean, indicating whether to `drop` the result

## Value

Always returns an object of the same class as `x`.

## Author

Robin K. S. Hankin

## Note

If `x` is a numeric vector and `y` a brob, one might expect typing
`x[1] <- y` to result in `x` being a brob. This is impossible, according
to John Chambers.

## Examples

``` r
a <- as.brob(10)^c(-100,0,100,1000,1e32)

a[4]
#> [1] +exp(2302.6)

a[4] <- 1e100

a
#> [1] +exp(-230.26)    +exp(0)          +exp(230.26)     +exp(230.26)    
#> [5] +exp(2.3026e+32)
```
