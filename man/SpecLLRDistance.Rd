\name{SpecLLRDistance}
\alias{SpecLLRDistance}

\title{
General Spectral Dissimilarity Measure Using Local-Linear Estima-
tion of the Log-Spectra
}
\description{
The dissimilarity of two numerical series of the same length is calculated based on the 
ratio between local linear estimations of the log-spectras.
}

\usage{
SpecLLRDistance(x, y, ...)
}

\arguments{
  \item{x}{
  Numeric vector containing the first time series.
}

  \item{y}{
  Numeric vector containing the second time series.
}

  \item{...}{
   Additional parameters for the function. See  \code{\link[TSclust]{diss.SPEC.LLR}} for more 
  information.
}
}

\details{
This is simply a wrapper for the \code{\link[TSclust]{diss.SPEC.LLR}} function of package \pkg{TSclust}. As such, all the functionalities of the \code{\link[TSclust]{diss.SPEC.LLR}} function are also available when using this function. 

%\bold{Note:} This distance measure is not a metric (Montero and Vilar, 2014), but the negative definiteness is not explicitly confirmed or discarded in the literature, to the extent of our knowledge. As such, before using it directly within kernel machines (for example, by inserting it in the Gaussian RBF kernel), we recommend analyzing the positive definiteness of the Gram matrix, which is a requirement for kernel based classifiers such as Support Vector Machines or Gaussian Processes. More information and some solutions to this problem can be found in (Pree, 2014).
}

\value{
\item{d}{
  The computed distance between the pair of series.
}


}

\references{
Pablo Montero, José A. Vilar (2014). TSclust: An R Package for Time Series
  Clustering. Journal of Statistical Software, 62(1), 1-43. URL
  http://www.jstatsoft.org/v62/i01/.
}

\author{
Usue Mori, Alexander Mendiburu, Jose A. Lozano.
}



\seealso{

To calculate this distance measure using \code{ts}, \code{zoo} or \code{xts} objects see \code{\link{TSDistances}}. To calculate distance matrices of time series databases using this measure see \code{\link{TSDatabaseDistances}}.

}

\examples{

# The objects example.series1 and example.series2 are two 
# numeric series of length 100. 

data(example.series1)
data(example.series2)

# For information on their generation and shape see 
# help page of example.series.

help(example.series)

# Calculate the spec.isd distance between the two series using
# the default parameters. 

SpecLLRDistance(example.series1, example.series2)

}
