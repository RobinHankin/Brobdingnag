test_that("Test suite aaa, Brobdingnagian functionality",{

testequal <- function(x,y){testzero(x-y)}
testzero <- function(x, TOL= 1e-8){expect_true(max(abs(x))<TOL)}

rcnorm <- function (n){sqrt(0.5) * (rnorm(n) + 1i*rnorm(n))}
## (copied from the cmvnorm package)


n <- 2  # number of times to check

checker1_real <- function(a){  # 'a' is numeric
    expect_true(is.brob(as.brob(a)))
    testequal(as.brob(+a),+as.brob(a))
    testequal(as.brob(-a),-as.brob(a))
    
    testequal(a,as.brob(a))
    testequal(as.brob(a*a),as.brob(a)*as.brob(a))
    testequal(as.brob(a^2),as.brob(a)^2)
    testequal(-a,-as.brob(a))
    testequal(-a,as.brob(-a))
    testequal(as.brob(sum(a)),sum(as.brob(a)))
    testequal(as.brob(prod(a)),prod(as.brob(a)))
    testequal(as.brob(max(a)),max(as.brob(a)))
    testequal(as.brob(min(a)),min(as.brob(a)))

    expect_true(all(as.brob(a)==as.brob(a)))
    expect_true(all(as.brob(a)>=as.brob(a)))
    expect_true(all(as.brob(a)<=as.brob(a)))
    expect_false(any(as.brob(a)>as.brob(a)))
    expect_false(any(as.brob(a)<as.brob(a)))
    expect_false(any(as.brob(a)!=as.brob(a)))
 }

checker1_complex <- function(a){  # 'a' is numeric
    expect_true(is.glub(as.glub(a)))
    testequal(as.glub(+a),+as.glub(a))
    testequal(as.glub(-a),-as.glub(a))
    
    testequal(a,as.glub(a))
    testequal(as.glub(a*a),as.glub(a)*as.glub(a))
    testequal(as.glub(a^2),as.glub(a)^2)
    testequal(-a,-as.glub(a))
    testequal(-a,as.glub(-a))
    testequal(as.glub(sum(a)),sum(as.glub(a)))
    testequal(as.glub(prod(a)),prod(as.glub(a)))

    expect_true(all(as.glub(a)==as.glub(a)))
    expect_false(any(as.glub(a)!=as.glub(a)))
              
}

checker2_real <- function(a,b){  # 'a','b'  numeric
    testequal(a+b,as.brob(a) + as.brob(b))
    testequal(as.brob(a+b),a + as.brob(b))
    testequal(a-b,as.brob(a) - as.brob(b))
    testequal(as.brob(a-b),a - as.brob(b))
    testequal(a*b,as.brob(a) * as.brob(b))
    testequal(as.brob(a*b),a * as.brob(b))
}

checker2_complex <- function(a,b){  # 'a','b'  numeric
    testequal(a+b,as.glub(a) + as.glub(b))
    testequal(as.glub(a+b),a + as.glub(b))
    testequal(a-b,as.glub(a) - as.glub(b))
    testequal(as.glub(a-b),a - as.glub(b))
    testequal(a*b,as.glub(a) * as.glub(b))
    testequal(as.glub(a*b),a * as.glub(b))
} 

for(i in seq_len(n)){
    checker1_real(rnorm(10))
    checker2_real(rnorm(10),rnorm(10))
    checker2_real(rnorm(10),rnorm(1))
    checker2_real(rnorm(1),rnorm(10))

    checker1_complex(rcnorm(10))
    checker2_complex(rcnorm(10),rcnorm(10))
    checker2_complex(rcnorm(10),rcnorm(1))
    checker2_complex(rcnorm(1),rcnorm(10))
}

})
