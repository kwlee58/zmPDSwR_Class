\name{hodar.partition3}
\alias{hodar.partition3}

\title{
hodar.partition3
}
\description{
Convenience function to create three partitions of a data frame prior to data mining.
}
\usage{
hodar.partition3(dat, trainSize = 0.7 * nrow(dat), validationSize = (nrow(dat) - trainSize)/2, seed = 2013)
}

\arguments{
  \item{dat}{
The data frame to be partitioned
}
  \item{trainSize}{
Number of rows in the first or training partition. Default is 70% of the original rows.
}
  \item{validationSize}{
Number of rows in the second or validation partition. Default is 30% of the original rows.
}
  \item{seed}{
Random seed to initialize the random number generator.
}
}

\value{
A list with:
\item{data}{The original data}
\item{training}{Rows in the training partition}
\item{validation}{Rows in the validation partition}
\item{test}{Rows in the test partition}
}

\author{
Viswa Viswanathan
}
\examples{
library(hodar)
data(housing)
dat = hodar.partition3(housing)
nrow(dat$training)
nrow(dat$validation)
nrow(dat$test)
dat1 = hodar.partition2(housing, 300, 106)
nrow(dat1$training)
nrow(dat1$validation)
nrow(dat$test)

## The function is currently defined as
function (dat, trainSize = 0.7 * nrow(dat), validationSize = (nrow(dat) - 
    trainSize)/2, seed = 2013) 
{
    if (trainSize + validationSize >= nrow(dat)) {
        cat("Error: Training size + validation size equals or exceeds the total number of cases.\n")
        cat("You can leave both of these empty to make the function use a 70-15-15 division\n")
        cat("by using hodar.partition3(<data frame name>) \n or specify the size of the training partition alone\n")
        cat("by using hodar.partition3(<data frame name>, <no of cases in training>) or \n")
        cat("specify the sizes for both training and validation by using\n")
        cat("hodar.partition3(<data frame name>, <no of cases in training>, <no of cases in validation>\n")
        return()
    }
    set.seed(seed)
    sam = sample(1:nrow(dat), trainSize, replace = F)
    trg = dat[sam, ]
    rest = dat[-sam, ]
    sam = sample(1:nrow(rest), validationSize, replace = F)
    val = rest[sam, ]
    tes = rest[-sam, ]
    res = list(data = dat, training = trg, validation = val, 
        test = tes)
    res
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
