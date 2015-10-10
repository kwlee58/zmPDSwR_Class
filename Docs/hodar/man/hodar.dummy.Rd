\name{hodar.dummy}
\alias{hodar.dummy}

\title{
hodar.dummy
}
\description{
Convenience function to create several factors to dummies with a single call.
}
\usage{
hodar.dummy(data, column_nos)
}

\arguments{
  \item{data}{
Data frame
}
  \item{column_nos}{
Column numbers of factors for which we want to create dummies -- expressed as a vector. 
}
}

\value{
Returns a new data frame with the dummy columns appended. 
}

\author{
Viswa Viswanathan
}




\examples{
library(hodar)
data(conversion.example)
conversion.example = hodar.dummy(conversion.example, c(2))
# In the above command, we used c(2) because the second column has the factor to be converted.
# After the command, the data frame conversion.example contains the original columns
# and the added dummy columns


## The function is currently defined as
function (data, column_nos) 
{
    library(dummies)
    nms = names(data)
    for (col in column_nos) {
        name = paste("_", nms[col], "_", sep = "")
        data = cbind(data, dummy(data[, col], sep = name))
    }
    cat(paste("Converted", length(column_nos), "attribute(s)\n"))
    data
  }
}
