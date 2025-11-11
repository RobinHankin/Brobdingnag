# Class `"index"`

A virtual class for matrix extraction, copied from the `Matrix` package.

## Objects from the Class

A virtual Class: No objects may be created from it.

## Methods

- \[:

  `signature(x = "brobmat", i = "index", j = "index")`: ...

- \[:

  `signature(x = "brobmat", i = "index", j = "missing")`: ...

- \[:

  `signature(x = "brobmat", i = "missing", j = "index")`: ...

- \[\<-:

  `signature(x = "brobmat", i = "index", j = "index")`: ...

- \[\<-:

  `signature(x = "brobmat", i = "index", j = "missing")`: ...

- \[\<-:

  `signature(x = "brobmat", i = "missing", j = "index")`: ...

## References

Douglas Bates and Martin Maechler (2019). Matrix: Sparse and Dense
Matrix Classes and Methods. R package version 1.2-18.
<https://CRAN.R-project.org/package=Matrix>

## Author

Bates and Maechler, I guess

## See also

[`brobmat`](https://robinhankin.github.io/Brobdingnag/reference/brobmat-class.md)

## Examples

``` r
showClass("index")
#> Virtual Class "index" [package "Matrix"]
#> 
#> No Slots, prototype of class "logical"
#> 
#> Known Subclasses: 
#> Class "logical", directly
#> Class "numeric", directly
#> Class "character", directly
#> Class "integer", by class "numeric", distance 2
#> Class "double", by class "numeric", distance 2
#> Class "signature", by class "character", distance 2
#> Class "className", by class "character", distance 2
#> Class "ObjectsWithPackage", by class "character", distance 2
#> Class "factor", by class "numeric", distance 3
#> Class "ordered", by class "numeric", distance 4
```
