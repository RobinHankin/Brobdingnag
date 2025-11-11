# Get and set methods for brob objects

Get and set methods for brobs: sign and value

## Usage

``` r
getP(x)
getX(x)
sign(x) <- value
```

## Arguments

- x:

  Brobdingnagian object

- value:

  In function `sign<-()`, Boolean specifying whehter the brob object is
  positive

## Author

Robin K. S. Hankin

## See also

[`brob`](https://robinhankin.github.io/Brobdingnag/reference/brob.md)

## Examples

``` r
x <- as.brob(-10:10)
sign(x) <- TRUE
```
