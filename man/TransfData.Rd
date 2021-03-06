% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TransfData.R
\name{TransfData}
\alias{TransfData}
\title{Transposing data to use the functions in AGREL.}
\usage{
TransfData(id, var, rater, data)
}
\arguments{
\item{id}{Variable indicating the ID of the rated observations.}

\item{var}{Variable indicating the ratings.}

\item{rater}{Variable indicating the raters.}

\item{data}{Dataframe}
}
\value{
Returns a transposed dataframe that can be used for the functions in this package.
}
\description{
Function to transpose dataframes if they are not yet in the desired format for the functions.
}
\examples{
# Sample data
Df = cbind.data.frame(ID = sort(rep(1:10, 4)), var = sample(letters[1:2], 40, TRUE), raters = rep(paste("rater",1:4), 10))
NewDf = TransfData(ID, var, raters, Df)

FleissK(NewDf)

}
