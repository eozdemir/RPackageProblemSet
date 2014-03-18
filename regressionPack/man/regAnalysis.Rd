\name{regAnalysis}
\alias{regAnalysis}
\alias{regAnalysis,ANY-method}
\title{Regression analysis}
\usage{
regAnalysis(x, y, ...)
}
\arguments{
  \item{x}{A matrix object}

  \item{y}{A numeric object with the same number of
  elements as the number \code{x} rows.}
}
\value{
An object of class Regression containing \item{coef}{A
coefficient matrix} \item{Rsquare}{A numeric vector}
\item{x}{The first object input} \item{y}{The second object
input}
}
\description{
Regression of all possible combinations of covariates
}
\note{
This function fits all possible combinations of covariates
into regression
}
\examples{
myX <- matrix(rnorm(30, mean=10, sd=5), ncol=3)
myY <- sample(1:100, 10)
regAnalysis(myX, myY)
}
\author{
Elif Ozdemir
}

