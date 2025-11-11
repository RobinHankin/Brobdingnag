# Class `"brobmat"`

The `brobmat` class provides basic Brobdingnagian arithmetic for
matrices.

## Objects from the Class

Objects can be created by calls of the form `new("brobmat", ...)`,
although functions
[`brobmat()`](https://robinhankin.github.io/Brobdingnag/reference/brobmat.md),
[`as.brobmat()`](https://robinhankin.github.io/Brobdingnag/reference/brobmat.html)
are more user-friendly.

## Slots

- `x`::

  Object of class `"matrix"` that specifes the exponent

- `positive`::

  Object of class `"logical"` that specifies the sign

## Methods

- \[:

  `signature(x = "brobmat", i = "ANY", j = "ANY")`: ...

- \[:

  `signature(x = "brobmat", i = "index", j = "index")`: ...

- \[:

  `signature(x = "brobmat", i = "index", j = "missing")`: ...

- \[:

  `signature(x = "brobmat", i = "missing", j = "index")`: ...

- \[:

  `signature(x = "brobmat", i = "missing", j = "missing")`: ...

- \[:

  `signature(x = "brobmat", i = "matrix", j = "missing")`: ...

- \[\<-:

  `signature(x = "brobmat", i = "index", j = "index")`: ...

- \[\<-:

  `signature(x = "brobmat", i = "index", j = "missing")`: ...

- \[\<-:

  `signature(x = "brobmat", i = "missing", j = "index")`: ...

- \[\<-:

  `signature(x = "brobmat", i = "matrix", j = "missing")`: ...

- \[\<-:

  `signature(x = "brobmat", i = "missing", j = "missing")`: ...

- %\*%:

  `signature(x = "ANY", y = "brobmat")`: ...

- %\*%:

  `signature(x = "brobmat", y = "ANY")`: ...

- %\*%:

  `signature(x = "brobmat", y = "brobmat")`: ...

- Arith:

  `signature(e1 = "ANY", e2 = "brobmat")`: ...

- Arith:

  `signature(e1 = "brob", e2 = "brobmat")`: ...

- Arith:

  `signature(e1 = "brobmat", e2 = "ANY")`: ...

- Arith:

  `signature(e1 = "brobmat", e2 = "brob")`: ...

- Arith:

  `signature(e1 = "brobmat", e2 = "brobmat")`: ...

- Arith:

  `signature(e1 = "brobmat", e2 = "missing")`: ...

- as.matrix:

  `signature(x = "brobmat")`: ...

- as.vector:

  `signature(x = "brobmat")`: ...

- coerce:

  `signature(from = "brobmat", to = "matrix")`: ...

- colnames:

  `signature(x = "brobmat")`: ...

- colnames\<-:

  `signature(x = "brobmat")`: ...

- Compare:

  `signature(e1 = "ANY", e2 = "brobmat")`: ...

- Compare:

  `signature(e1 = "brobmat", e2 = "ANY")`: ...

- Compare:

  `signature(e1 = "brobmat", e2 = "brobmat")`: ...

- diag:

  `signature(x = "brobmat")`: ...

- dimnames:

  `signature(x = "brobmat")`: ...

- dimnames\<-:

  `signature(x = "brobmat")`: ...

- getP:

  `signature(x = "brobmat")`: ...

- getX:

  `signature(x = "brobmat")`: ...

- length:

  `signature(x = "brobmat")`: ...

- Math:

  `signature(x = "brobmat")`: ...

- ncol:

  `signature(x = "brobmat")`: ...

- nrow:

  `signature(x = "brobmat")`: ...

- rownames:

  `signature(x = "brobmat")`: ...

- rownames\<-:

  `signature(x = "brobmat")`: ...

- show:

  `signature(object = "brobmat")`: ...

- t:

  `signature(x = "brobmat")`: ...

## References

Brobdingnag R News paper

## Author

Robin K. S. Hankin

## See also

[`as.brob`](https://robinhankin.github.io/Brobdingnag/reference/brob.md),
[`brob`](https://robinhankin.github.io/Brobdingnag/reference/brob-class.md)

## Examples

``` r
showClass("brobmat")
#> Class "brobmat" [package "Brobdingnag"]
#> 
#> Slots:
#>                         
#> Name:         x positive
#> Class:   matrix  logical
```
