# Glubbdubdribian numbers: complex numbers with Brobdingnagian real and imaginary parts

Create, coerce to or test for a Glubbdubdribian object

## Usage

``` r
glub(real = double(), imag = double())
as.glub(x)
is.glub(x)
```

## Arguments

- real, imag:

  Real and imaginary components of complex number: must be
  Brobdingnagian numbers

- x:

  object to be coerced to or tested for Glubbdubdribian form

## Details

A Glubbdubdribian number is the Brobdingnagian equivalent of a complex
number.

Function `glub()` takes two arguments that are coerced to Brobdingnagian
numbers and returns a Glubbdubdribian number. This function is not
really intended for the end user: it is confusing and includes no
argument checking. Use function `as.glub()` instead.

Function `as.glub()` is the user's workhorse: use this to coerce numeric
or complex vectors to Glubbdubdribian form.

Function `is.glub()` tests for its arguments being Glubbdubdribian.

## Author

Robin K. S. Hankin

## Note

Function `glub()` uses recycling inherited from
[`cbind()`](https://rdrr.io/r/base/cbind.html).

## See also

[`brob`](https://robinhankin.github.io/Brobdingnag/reference/brob.md)

## Examples

``` r
a <- as.glub(1:10 + 5i)
a^2 - a*a
#>  [1] +exp(-32.172)-exp(-31.662)i   +exp(-Inf)-exp(-Inf)i        
#>  [3] +exp(-32.578)-exp(-Inf)i      +exp(-31.767)+exp(-31.662)i  
#>  [5] +exp(-33.42)-exp(-31.438)i    +exp(-32.259)-exp(-Inf)i     
#>  [7] -exp(-Inf)-exp(-Inf)i         +exp(-31.687)-exp(-Inf)i     
#>  [9] +exp(-30.632)+exp(-30.158)i   -exp(-30.34)-exp(-30.052)i   

f <- function(x){sin(x) +x^4 - 1/x}
as.complex(f(a)) - f(as.complex(a))   # should be zero (in the first
#>  [1]  1.136868e-13+1.705303e-13i -8.526513e-14-7.958079e-13i
#>  [3] -6.821210e-13-1.364242e-12i  2.046363e-12+2.046363e-12i
#>  [5] -4.547474e-13+3.090861e-13i  2.728484e-12-1.591616e-12i
#>  [7]  1.182343e-11-7.275958e-12i -9.094947e-12+1.455192e-11i
#>  [9]  9.094947e-13+1.818989e-12i -8.185452e-12-1.455192e-11i
                                      # term, f() works with glubs and coerces to
                                      # complex; in the second, f()
                                      # works with complex numbers directly)
```
