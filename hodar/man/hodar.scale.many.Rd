\name{hodar.scale.many}
\alias{hodar.scale.many}

\title{
hodar.scale.many
}
\description{
Convenience function to standardize several columns of a data frame with one call.
}
\usage{
hodar.scale.many(dat, column_nos)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
The data frame containing the columns to be standardized.
}
  \item{column_nos}{
Vector of column numbers of columns that we want to standardize. 
}
}

\value{
Returns a data frame with all the original columns and appended columns with standardized values for the chosen columns,
}

\author{
Viswa Viswanathan
}



\examples{
library(hodar)
data(conversion.example)
names(conversion.example)
conversion.example = hodar.scale.many(conversion.example, c(3:4))
## The function is currently defined as
function (dat, column_nos) 
{
    nms = names(dat)
    for (col in column_nos) {
        name = paste(nms[col], "_z", sep = "")
        dat[name] = scale(dat[, col])
    }
    cat(paste("Scaled", length(column_nos), "attribute(s)\n"))
    dat
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
