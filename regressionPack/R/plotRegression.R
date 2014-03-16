setGeneric("plot") #to make plot useable by an S4 function

#' Plots the y values and a fits a regression line for Regression class objects 
#' 
#' @usage plot(x) 
#' 
#' @param x A Regression class object
#' 
#'  \item{x}{The first object input} 
#'  \item{y}{The second object input}
#'  
#' @author Elif Ozdemir: \email{eozdemir@wustl.edu}
#' @note This function only plots for the regression with all covariates included
#' @seealso \code{\link{regAnalysis}}
#' @rdname plotRegression
#' @export
setMethod("plot", "Regression", 
          function(object,...){
            plot(object@y)
            abline(object@coef[length(object@coef),])
          })