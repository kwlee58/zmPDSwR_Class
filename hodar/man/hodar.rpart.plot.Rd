\name{hodar.rpart.plot}
\alias{hodar.rpart.plot}

\title{
hodar.rpart.plot
}
\description{
Plots a tree model produced by rpart.
}
\usage{
hodar.rpart.plot(model)
}
\arguments{
  \item{model}{
A tree model produced by rpart}
}

\value{
No return value. Produces a plot.
}

\author{
Viswa Viswanathan
}



\examples{
library(hodar)
data(lcars)
# The following builds the complete tree
cmodel = hodar.rpart.build(Car_type ~ ., lcars, 2, 0)
# Plot it
hodar.rpart.plot(cmodel)

## The function is currently defined as
function (model) 
{
    library(rpart.plot)
    prp(model, type = 2, extra = 104, nn = TRUE, fallen.leaves = TRUE, 
        faclen = 4, varlen = 8, shadow.col = "gray")
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
