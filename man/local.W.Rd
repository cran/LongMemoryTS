% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/local_W.R
\name{local.W}
\alias{local.W}
\title{Local Whittle estimator of fractional difference parameter d.}
\usage{
local.W(data, m, int = c(-0.5, 2.5), taper = c("none", "Velasco",
  "HC"), diff_param = 1, l = 1)
}
\arguments{
\item{data}{vector of length T.}

\item{m}{bandwith parameter specifying the number of Fourier frequencies.
used for the estimation usually \code{floor(1+T^delta)}, where 0<delta<1.}

\item{int}{admissible range for d. Restricts the interval 
of the numerical optimization.}

\item{taper}{string that is either \code{"none"}, \code{"Velasco"}, or \code{"HC"} and determines whether the standard local Whittle estimator of Robinson (1995), 
the tapered version of Velasco (1999), or the differenced and tapered estimator of Hurvich and Chen (2000) is used.}

\item{diff_param}{integer specifying the order of differentiation for the estimator of Hurvich and Chen (2000). Default is \code{diff_param=1}.}

\item{l}{integer that determines how many frequencies (l-1) are trimmed out if taper="none" is selected. Default is l=1.}
}
\description{
\code{local.W} Semiparametric local Whittle estimator for memory parameter d following Robinson (1995).
 Returns estimate and asymptotic standard error.
}
\examples{
library(fracdiff)
T<-1000
d<-0.4
series<-fracdiff.sim(n=T, d=d)$series
local.W(series,m=floor(1+T^0.65))
}
\references{
Robinson, P. M. (1995): Gaussian Semiparametric Estimation of Long Range Dependence. 
The Annals of Statistics, Vol. 23, No. 5, pp. 1630 - 1661.

Velasco, C. (1999): Gaussian Semiparametric Estimation for Non-Stationary Time Series.
Journal of Time Series Analysis, Vol. 20, No. 1, pp. 87-126. 

Hurvich, C. M., and Chen, W. W. (2000): An Efficient Taper for Potentially 
Overdifferenced Long-Memory Time Series. Journal of Time Series Analysis, Vol. 21, No. 2, pp. 155-180.
}
