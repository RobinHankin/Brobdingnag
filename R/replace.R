## x[] <- value
setReplaceMethod("[",
                 signature(x = "brobmat",
                           i = "missing", j = "missing",
                           value = "ANY"),
		 function (x, i, j, ..., value){
                     stop("replacement method 1 not implemented")
                 } )

## x[i,] <- value
setReplaceMethod("[",
                 signature(x = "brobmat",
                           i = "index", j = "missing",
                           value = "ANY"),
		 function (x, i, j, ..., value){
                     stop("replacement method 2 not implemented")
                 } )

## x[,j] <- value
setReplaceMethod("[",
                 signature(x = "brobmat",
                           i = "missing", j = "index",
                           value = "ANY"),
		 function (x, i, j, ..., value){
                     stop("replacement method 3 not implemented")
                 } )


## x[i,j] <- value
setReplaceMethod("[",
                 signature(x = "brobmat",
                           i = "index", j = "index",
                           value = "ANY"),
		 function (x, i, j, ..., value){
                     value <- as.brob(value)
                     jj.x <- getX(x)
                     jj.pos <- getP(x)
                     jj.x[i,j] <- getX(value)  # matrix or vector
                     jj.pos[i,j] <- getP(value)
                     return(newbrobmat(x=jj.x,positive=jj.pos))
                 } )

