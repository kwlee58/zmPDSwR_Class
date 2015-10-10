\name{hodar.kmeans}
\alias{hodar.kmeans}

\title{
hodar.kmeans
}
\description{
Runs the k-means clustering algorithm and reports some statistics. 
}
\usage{
hodar.kmeans(data, cols = c(1:length(names(data))), nclust = 5, ns = 25)
}

\arguments{
  \item{data}{
The data frame to apply k-means clustering on.
}
  \item{cols}{
Column numbers of the columns to be used for k-means clustering -- specified as a vector of integers. 
All the specified columns must be numeric, but need not be scaled or standardized -- this function takes care of that.
}
  \item{nclust}{
The value of k to use
}
  \item{ns}{
Number of different starting points to try -- default is 25.
}
}

\value{
Returns the clustering model from the kmeans function (see: \link[stats]{kmeans})
}

\author{
Viswa Viswanathan
}





\examples{
library(hodar)
data(hw)
# Using k=2 below
hodar.kmeans(hw, c(1,2), 2)
## The function is currently defined as
function (data, cols = c(1:length(names(data))), nclust = 5, 
    ns = 25) 
{
    n = length(names(data))
    dat = hodar.scale.many(data, cols)[, (n + 1):(n + length(cols))]
    dat.scale = scale(dat)
    fit = kmeans(dat.scale, nclust, ns)
    cat("Created the clusters.\n")
    cat("Cluster sizes: ")
    print(fit$size)
    cat("\nCenters of scaled values in each cluster:\n")
    cat("----------------------------------------\n\n")
    print(fit$centers)
    cat("\n\nAverages of original data in each cluster:\n")
    cat("----------------------------------------\n\n")
    print(aggregate(data[, cols], by = list(fit$cluster), mean))
    cat("\nbetween_ss/total_ss: ", fit$betweenss/fit$totss)
    fit
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
