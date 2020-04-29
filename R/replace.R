## x[] <- value
setReplaceMethod("[",
                 signature(x = "brobmat",
                           i = "missing", j = "missing",
                           value = "ANY"),
		 function (x, i, j, ..., value){
                     value <- as.brob(value)
                     jj.x <- getX(x)
                     jj.pos <- getP(x)
                     jj.x[] <- getX(value)  # matrix or vector
                     jj.pos[] <- getP(value)
                     return(newbrobmat(x=jj.x,positive=jj.pos))
                 } )

## x[i,] <- value
setReplaceMethod("[",
                 signature(x = "brobmat",
                           i = "index", j = "missing",
                           value = "ANY"),
		 function (x, i, j, ..., value){
                     value <- as.brob(value)
                     jj.x <- getX(x)
                     jj.pos <- getP(x)
                     jj.x[i,] <- getX(value)  # matrix or vector
                     jj.pos[i,] <- getP(value)
                     return(newbrobmat(x=jj.x,positive=jj.pos))
                 } )

## x[,j] <- value
setReplaceMethod("[",
                 signature(x = "brobmat",
                           i = "missing", j = "index",
                           value = "ANY"),
		 function (x, i, j, ..., value){
                     value <- as.brob(value)
                     jj.x <- getX(x)
                     jj.pos <- getP(x)
                     jj.x[,j] <- getX(value)  # matrix or vector
                     jj.pos[,j] <- getP(value)
                     return(newbrobmat(x=jj.x,positive=jj.pos))
                 } )

## x[cbind(1:3,2:4)] <- value
setReplaceMethod("[",
                 signature(x = "brobmat",
                           i = "matrix", j = "missing",
                           value = "ANY"),
		 function (x, i, j, ..., value){
                     value <- as.brob(value)
                     jj.x <- getX(x)
                     jj.pos <- getP(x)
                     jj.x[i] <- getX(value)  # matrix or vector
                     jj.pos[i] <- getP(value)
                     return(newbrobmat(x=jj.x,positive=jj.pos))
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

