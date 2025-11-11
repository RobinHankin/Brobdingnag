# Brobdingnagian matrices

![](../../../_temp/Library/Brobdingnag/help/figures/Brobdingnag.png)

To cite the Brobdingnag package in publications, please use Hankin
(2007). R package `Brobdingnag` allows for very large numbers, and the
package now has basic functionality for matrices with Brobdingnagian
entries: objects of class `brobmat`. It includes matrix multiplication
and addition, but determinants and matrix inverses are not implemented.
First load the package:

``` r
library("Brobdingnag")
```

The standard way to create a Brobdgingnagian matrix (a `brobmat`) is to
use function
[`brobmat()`](https://robinhankin.github.io/Brobdingnag/reference/brobmat.md)
which takes arguments similar to
[`matrix()`](https://rdrr.io/r/base/matrix.html) and returns a matrix of
entries created with
[`brob()`](https://robinhankin.github.io/Brobdingnag/reference/brob.md):

``` r
M1 <- brobmat(-10:13,4,6)
colnames(M1) <- state.abb[1:6]
M1
#>      AL        AK       AZ       AR      CA      CO      
#> [1,] +exp(-10) +exp(-6) +exp(-2) +exp(2) +exp(6) +exp(10)
#> [2,] +exp(-9)  +exp(-5) +exp(-1) +exp(3) +exp(7) +exp(11)
#> [3,] +exp(-8)  +exp(-4) +exp(0)  +exp(4) +exp(8) +exp(12)
#> [4,] +exp(-7)  +exp(-3) +exp(1)  +exp(5) +exp(9) +exp(13)
```

Above, note that all entries of `M1` are greater than zero; `M1[1,1]`,
for example, is `exp(-10)`, or $e^{- 10} \simeq 4.54 \times 10^{- 5}$.
For negative matrix entries, function
[`brobmat()`](https://robinhankin.github.io/Brobdingnag/reference/brobmat.md)
takes a Boolean argument `positive` that specifies the sign:

``` r
M2 <- brobmat(
c(1,104,-66,45,1e40,-2e40,1e-200,232.2),2,4,
positive=c(T,F,T,T,T,F,T,T))
M2
#>      [,1]      [,2]      [,3]         [,4]        
#> [1,] +exp(1)   +exp(-66) +exp(1e+40)  +exp(1e-200)
#> [2,] -exp(104) +exp(45)  -exp(-2e+40) +exp(232.2)
```

Standard matrix arithmetic is implemented, thus:

``` r
rownames(M2) <- c("a","b")
colnames(M2) <- month.abb[1:4]
M2
#>   Jan       Feb       Mar          Apr         
#> a +exp(1)   +exp(-66) +exp(1e+40)  +exp(1e-200)
#> b +exp(104) +exp(45)  +exp(-2e+40) +exp(232.2)
M2[2,3] <- 0
M2
#>   Jan       Feb       Mar         Apr         
#> a +exp(1)   +exp(-66) +exp(1e+40) +exp(1e-200)
#> b +exp(104) +exp(45)  +exp(-Inf)  +exp(232.2)
M2+1000
#>   Jan          Feb          Mar          Apr         
#> a +exp(6.9105) +exp(6.9078) +exp(1e+40)  +exp(6.9088)
#> b +exp(104)    +exp(45)     +exp(6.9078) +exp(232.2)
```

We can also do matrix multiplication, although it is slow:

``` r
M2 %*% M1
#>   AL          AK          AZ          AR          CA          CO         
#> a +exp(1e+40) +exp(1e+40) +exp(1e+40) +exp(1e+40) +exp(1e+40) +exp(1e+40)
#> b +exp(225.2) +exp(229.2) +exp(233.2) +exp(237.2) +exp(241.2) +exp(245.2)
```

## Numerical verification: matrix multiplication

We will verify matrix multiplication by carrying out the same operation
in two different ways. First, create two largish Brobdingnagian
matrices:

``` r
nrows <- 11
ncols <- 18
M3 <- as.brobmat(matrix(rnorm(nrows*ncols),nrows,ncols))
M4 <- as.brobmat(matrix(rnorm(nrows*ncols),ncols,nrows))
M3[1:3,1:3]
#>      [,1]          [,2]           [,3]          
#> [1,] -exp(0.3365)  +exp(-0.46365) -exp(0.26585) 
#> [2,] +exp(-1.3652) +exp(0.72514)  +exp(-0.30411)
#> [3,] -exp(0.89088) -exp(0.48919)  +exp(0.63579)
```

Now calculate the matrix product by coercing to numeric matrices and
using base R matrix multiplication:

``` r
p1 <- as.matrix(M3) %*% as.matrix(M4)
```

Secondly, we use Brobdingnagian matrix multiplication, and then coercing
to numeric:

``` r
p2 <- as.matrix(M3 %*% M4)
```

The difference

``` r
max(abs(p1-p2))
#> [1] 5.329071e-15
```

is small. Now the other way:

``` r
q1 <- M3 %*% M4
q2 <- as.brobmat(as.matrix(M3) %*% as.matrix(M4))
max(abs(as.brob(q1-q2)))
#> [1] +exp(-32.743)
```

Above we see that the difference of `exp(-30.267)` (about
$7 \times 10^{- 14}$), is small.

## Numerical verification: integration with the `cubature` package

The matrix functionality of the `Brobdingnag` package was originally
written to leverage the functionality of the `cubature` package. Here I
give some numerical verification for this.

Suppose we wish to evaluate

$$\int_{x = 0}^{x = 4}\left( x^{2} - 4 \right)\, dx$$

using numerical methods. See how the integrand includes positive and
negative values; the theoretical value is $\frac{16}{3} = 5.33\ldots$.
The `cubature` idiom for this would be

``` r
library("cubature")

f.numeric <- function(x){x^2 - 4}

out.num <- cubature::hcubature(f = f.numeric, lowerLimit = 0, upperLimit = 4, vectorInterface = TRUE)
out.num
#> $integral
#> [1] 5.333333
#> 
#> $error
#> [1] 1.763322e-13
#> 
#> $functionEvaluations
#> [1] 15
#> 
#> $returnCode
#> [1] 0
```

and the Brobdingnagian equivalent would be

``` r

f.brob <- function(x) {
    x <- as.brob(x[1, ])
    as.matrix( brobmat(x^2 - 4, ncol = length(x)))
}

out.brob <- cubature::hcubature(f = f.brob, lowerLimit = 0, upperLimit = 4, vectorInterface = TRUE)
out.brob
#> $integral
#> [1] 5.333333
#> 
#> $error
#> [1] 1.763322e-13
#> 
#> $functionEvaluations
#> [1] 15
#> 
#> $returnCode
#> [1] 0
```

We may compare the two methods:

``` r
out.brob$integral - out.num$integral
#> [1] 8.881784e-16
```

### References

Hankin, Robin K. S. 2007. “Very Large Numbers in : introducing Package
.” *News* 7 (3): 15–16. <http://CRAN.R-project.org/doc/Rnews/>.
