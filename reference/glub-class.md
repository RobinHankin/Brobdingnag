# Class "glub"

Complex Brobdingnagian numbers

## Objects from the Class

A `glub` object holds two slots, both `brobs`, representing the real and
imaginary components of a complex vector.

## Slots

- `real`::

  Object of class `"brob"` representing the real component

- `imag`::

  Object of class `"brob"` representing the imaginary component

## Extends

Class `"swift"`, directly.

## Methods

- .cPair:

  `signature(x = "brob", y = "glub")`: ...

- .cPair:

  `signature(x = "ANY", y = "glub")`: ...

- .cPair:

  `signature(x = "glub", y = "glub")`: ...

- .cPair:

  `signature(x = "glub", y = "ANY")`: ...

- .cPair:

  `signature(x = "glub", y = "brob")`: ...

- Im\<-:

  `signature(x = "glub")`: ...

- Re\<-:

  `signature(x = "glub")`: ...

## Author

Robin K. S. Hankin

## See also

[`brob-class`](https://robinhankin.github.io/Brobdingnag/reference/brob-class.md),[`swift-class`](https://robinhankin.github.io/Brobdingnag/reference/swift-class.md)

## Examples

``` r
a <- as.brob(45)
new("glub",real=a, imag=a)
#> [1] +exp(3.8067)+exp(3.8067)i  

as.brob(5+5i)   # standard R idiom; imaginary component discarded
#> Warning: imaginary parts discarded
#> [1] +exp(1.6094)
as.glub(5+5i)   # returns a Glubbdubdribian object
#> [1] +exp(1.6094)+exp(1.6094)i  

```
