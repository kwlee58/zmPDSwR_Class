\name{hodar.kmeans.plot}
\alias{hodar.kmeans.plot}

\title{
hodar.kmeans.plot
}
\description{
Function to plot total within_ss for various values of k to help determine a good value of k
}
\usage{
hodar.kmeans.plot(data, cols, num_clust = 15, seed = 9876)
}

\arguments{
  \item{data}{
The data frame to apply k-means clustering on.
}
  \item{cols}{
Column numbers of the columns to be used for k-means clustering -- specified as a vector of integers. 
All the specified columns must be numeric, but need not be scaled or standardized -- this function takes care of that.
}
  \item{num_clust}{
Max value for k. The function will plot total within_ss for values of k between 2 and num_clust-1
}
  \item{seed}{
Seed for the random number generator
}
}

\value{
No return value. The function plots between_ss against the number of clusters and also prints a textual output with this information.
}

\author{
Viswa Viswanathan
}



\examples{
library(hodar)
data(hw)
hodar.kmeans(hw, c(1,2), 11)
# From the result, 2 seems to be a really good value for k

## The function is currently defined as
function (data, cols, num_clust = 15, seed = 9876) 
{
    n = length(names(data))
    dat = hodar.scale.many(data, cols)[, (n + 1):(n + length(cols))]
    dat.scale = scale(dat)
    wss <- (nrow(dat.scale) - 1) * sum(apply(dat.scale, 2, var))
    for (i in 2:num_clust) {
        set.seed(seed)
        wss[i] <- sum(kmeans(dat.scale, centers = i)$withinss)
    }
    plot(1:num_clust, wss, type = "b", pch = 5, xlab = "# Clusters", 
        ylab = "Total within_ss across clusters")
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
