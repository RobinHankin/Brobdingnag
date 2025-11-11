# Basic plotting of Brobs

Plotting methods. Essentially, any brob is coerced to a numeric and any
glub is coerced to a complex, and the argument or arguments are passed
to `plot()`.

## Usage

``` r
plot(x, y, ...)
```

## Arguments

- x,y:

  Brob or glub

- ...:

  Further arguments passed to `plot()`

## Author

Robin K. S. Hankin

## Examples

``` r
plot(as.brob(1:10))
```
