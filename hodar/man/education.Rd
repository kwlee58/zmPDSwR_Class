\name{education}
\alias{education}
\docType{data}
\title{
Data file for various regression illustrations
}
\description{
Data file for various regression illustrations
}
\usage{data(education)}
\format{
  A data frame with 50 observations on the following 6 variables.
  \describe{
    \item{\code{state}}{a factor with levels \code{AK} \code{AL} \code{AR} \code{AZ} \code{CA} \code{CO} \code{CT} \code{DE} \code{DY} \code{FL} \code{GA} \code{HI} \code{IA} \code{ID} \code{IL} \code{IN} \code{KS} \code{LA} \code{MA} \code{MD} \code{ME} \code{MI} \code{MN} \code{MO} \code{MS} \code{MT} \code{NB} \code{NC} \code{ND} \code{NH} \code{NJ} \code{NM} \code{NV} \code{NY} \code{OH} \code{OK} \code{OR} \code{PA} \code{RI} \code{SC} \code{SD} \code{TN} \code{TX} \code{UT} \code{VA} \code{VT} \code{WA} \code{WI} \code{WV} \code{WY}}
    \item{\code{region}}{a numeric vector}
    \item{\code{urban}}{a numeric vector}
    \item{\code{income}}{a numeric vector}
    \item{\code{under18}}{a numeric vector}
    \item{\code{expense}}{a numeric vector}
  }
}


\source{
P. J. Rouseeuw and A. M. Leroy. Robust regression and outlier detection. Wiley, 1987
}

\examples{
data(education)
## maybe str(education) ; plot(education) ...
}
\keyword{datasets}
