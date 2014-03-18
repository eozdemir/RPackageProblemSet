\name{coefAnalysis}
\alias{coefAnalysis}
\alias{coefAnalysis,Regression-method}
\title{Coefficient analysis}
\usage{
coefAnalysis(object)
}
\arguments{
  \item{x}{A Regression class object}
}
\value{
An object of class Coefficient containing \item{coef}{A
coefficient matrix} \item{Rsquare}{A numeric vector}
\item{MeanRsquare}{A numeric vector} \item{x}{The first
object input} \item{y}{The second object input}
}
\description{
Employs output of the \code{\link{regAnalysis}} function to
evaluate the importance of coefficients
}
\note{
This function uses the fits of all possible combinations of
covariates to evaluate their importance
}
\examples{
myX <- matrix(rnorm(30, mean=10, sd=5), ncol=3)
myY <- sample(1:100, 10)
model<- regAnalysis(myX, myY)
coefAnalysis(model)
}
\author{
Elif Ozdemir
}
\seealso{
\code{\link{regAnalysis}}
}

