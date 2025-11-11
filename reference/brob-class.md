# Class “brob”

The formal S4 class for Brobdingnagian numbers

## Objects from the Class

Objects *can* be created by calls of the form `new("brob", ...)` but
this is not encouraged. Use functions
[`brob()`](https://robinhankin.github.io/Brobdingnag/reference/brob.md)
and, especially,
[`as.brob()`](https://robinhankin.github.io/Brobdingnag/reference/brob.md)
instead.

## Slots

- `x`::

  Object of class `"numeric"` holding the log of the absolute value of
  the number to be represented

- `positive`::

  Object of class `"logical"` indicating whether the number is positive
  (see Note, below)

## Extends

Class `"swift"`, directly.

## Author

Robin K. S. Hankin

## Note

Slot `positive` indicates non-negativity, as zero is conventionally
considered to be “positive”.

## See also

[`glub-class`](https://robinhankin.github.io/Brobdingnag/reference/glub-class.md),[`swift-class`](https://robinhankin.github.io/Brobdingnag/reference/swift-class.md)

## Examples

``` r
new("brob",x=5,positive=TRUE)  # not intended for the user
#> [1] +exp(5)

as.brob(5)  # Standard user-oriented idiom
#> [1] +exp(1.6094)
```
