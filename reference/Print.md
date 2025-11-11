# Methods for printing brobs and glubs

Methods for printing brobs and glubs nicely using exponential notation

## Usage

``` r
# S3 method for class 'brob'
print(x, ...)
# S3 method for class 'glub'
print(x, ...)
```

## Arguments

- x:

  An object of class `brob` or `glub`

- ...:

  Further arguments (currently ignored)

## Author

Robin K. S. Hankin

## Examples

``` r
a <- as.brob(1:5)
dput(a)
#> new("brob", x = c(0, 0.693147180559945, 1.09861228866811, 1.38629436111989, 
#> 1.6094379124341), positive = c(TRUE, TRUE, TRUE, TRUE, TRUE))
a
#> [1] +exp(0)       +exp(0.69315) +exp(1.0986)  +exp(1.3863)  +exp(1.6094) 
```
