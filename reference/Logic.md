# Logical operations on brobs

Logical operations on brobs are not supported

## Author

Robin K. S. Hankin

## Note

The S4 group generic “Logic” appeared in R-2.4.0-patched.

Carrying out logical operations in this group will call `.Brob.logic()`,
which reports an error.

Negation, “`!`”, is not part of this group: attempting to negate a brob
will not activate `.Brob.logic()`; an “invalid argument type” error is
given instead.

## Examples

``` r

if (FALSE) { # \dontrun{
!brob(10)
} # }
```
