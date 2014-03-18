#' Shows some parts of info for Regression class objects 
#' 
#' @usage show(x) 
#' 
#' @param x A Regression class object
#' 
#' @author Elif Ozdemir: \email{eozdemir@wustl.edu}
#' @seealso \code{\link{printRegression}}
#' @rdname showRegression
#' @note Realize that this function works in a different way than printRegression function does

#' @export
setGeneric(name="showRegression",
           def=function(object)
           {standardGeneric("showRegression")}
)

#' @export
setMethod("showRegression", "Regression", 
          function(object){
            cat("First 6 R-squared values: \n") #as head function
            if(length(object@Rsquare)<=6){
              print(object@Rsquare)
            } else {print(object@Rsquare[1:6])}
            cat("\n")
            cat("First 6 elements of coefficient matrix: \n")
            if(nrow(object@coef)<=6 & ncol(object@coef)<=6){
              print(object@coef)
            } else {print(object@coef)[1:6,1:6]}
            cat("\n")
            cat("First 6 response variable values: \n")
            if(length(object@y)<=6){
            print(object@y)  
            } else {print(object@y[1:6])} 
          })