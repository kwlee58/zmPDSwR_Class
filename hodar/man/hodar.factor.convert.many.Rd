\name{hodar.factor.convert.many}
\alias{hodar.factor.convert.many}
\title{
hodar.factor.convert.many
}
\description{
Convert several numeric columns in a data frame to factors in one call
}
\usage{
hodar.factor.convert.many(dat, column_nos)
}

\arguments{
  \item{dat}{
A data frame containing one or more numeric columns that are actually categorical 
}
  \item{column_nos}{
Column  numbers of numeric columns to be converted to factors. Expressed as a vector of numbers.
}
}
\value{
Returns a data frame with all the columns as in dat with the specified columns converted to factors.
}
\author{
Viswa Viswanathan
}
\examples{
library(hodar)
data(factor.example)
class(factor.example$Salary_level)
class(factor.example$Rating)
factor.example = hodar.factor.convert.many(factor.example, c(3:4))
class(factor.example$Salary_level)
class(factor.example$Rating)
function (dat, column_nos) 
{
    nms = names(dat)
    for (col in column_nos) {
        dat[, col] = factor(dat[, col])
    }
    cat(paste("Converted", length(column_nos), "attribute(s) to factor\n"))
    dat
  }
}
