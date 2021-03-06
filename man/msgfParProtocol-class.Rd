% Generated by roxygen2 (4.0.2): do not edit by hand
\docType{class}
\name{msgfParProtocol-class}
\alias{getMSGFpar,msgfParProtocol-method}
\alias{length,msgfParProtocol-method}
\alias{msgfParProtocol}
\alias{msgfParProtocol-class}
\alias{show,msgfParProtocol-method}
\title{A class handling protocol choice}
\usage{
\S4method{show}{msgfParProtocol}(object)

\S4method{length}{msgfParProtocol}(x)

\S4method{getMSGFpar}{msgfParProtocol}(object)

msgfParProtocol(protocol)
}
\arguments{
\item{object}{An msgfParProtocol object}

\item{x}{An msgfParProtocol object}

\item{protocol}{An integer or string specifying the protocol to use.}
}
\value{
For length() An integer.

For getMSGFpar() A string.

For msgfParProtocol() An msgfParProtocol object.
}
\description{
This class defines a protocol and provides methods to get correct system
call parameters.
}
\section{Methods (by generic)}{
\itemize{
\item \code{show}: Short summary of msgfParProtocol object

\item \code{length}: Report the length of an msgfParProtocol object

\item \code{getMSGFpar}: Get \code{\link[base]{system}} compliant
function call
}}
\section{Slots}{

\describe{
\item{\code{protocol}}{An integer specifying a specific protocol type}
}}
\examples{
protocol <- msgfParProtocol(0)
protocol <- msgfParProtocol('No protocol')
}
\seealso{
Other msgfParClasses: \code{\link{[[,msgfParModificationList,numeric,missing-method}},
  \code{\link{[[<-,msgfParModificationList,numeric,missing,msgfParModification-method}},
  \code{\link{getMSGFpar,msgfParModificationList-method}},
  \code{\link{length,msgfParModificationList-method}},
  \code{\link{msgfParModificationList}},
  \code{\link{msgfParModificationList-class}},
  \code{\link{show,msgfParModificationList-method}};
  \code{\link{getMSGFpar,msgfPar-method}},
  \code{\link{length,msgfPar-method}},
  \code{\link{msgfPar-class}},
  \code{\link{runMSGF,msgfPar-method}},
  \code{\link{show,msgfPar-method}};
  \code{\link{getMSGFpar,msgfParChargeRange-method}},
  \code{\link{length,msgfParChargeRange-method}},
  \code{\link{msgfParChargeRange}},
  \code{\link{msgfParChargeRange-class}},
  \code{\link{show,msgfParChargeRange-method}};
  \code{\link{getMSGFpar,msgfParEnzyme-method}},
  \code{\link{length,msgfParEnzyme-method}},
  \code{\link{msgfParEnzyme}},
  \code{\link{msgfParEnzyme-class}},
  \code{\link{show,msgfParEnzyme-method}};
  \code{\link{getMSGFpar,msgfParFragmentation-method}},
  \code{\link{length,msgfParFragmentation-method}},
  \code{\link{msgfParFragmentation}},
  \code{\link{msgfParFragmentation-class}},
  \code{\link{show,msgfParFragmentation-method}};
  \code{\link{getMSGFpar,msgfParInstrument-method}},
  \code{\link{length,msgfParInstrument-method}},
  \code{\link{msgfParInstrument}},
  \code{\link{msgfParInstrument-class}},
  \code{\link{show,msgfParInstrument-method}};
  \code{\link{getMSGFpar,msgfParIsotopeError-method}},
  \code{\link{length,msgfParIsotopeError-method}},
  \code{\link{msgfParIsotopeError}},
  \code{\link{msgfParIsotopeError-class}},
  \code{\link{show,msgfParIsotopeError-method}};
  \code{\link{getMSGFpar,msgfParLengthRange-method}},
  \code{\link{length,msgfParLengthRange-method}},
  \code{\link{msgfParLengthRange}},
  \code{\link{msgfParLengthRange-class}},
  \code{\link{show,msgfParLengthRange-method}};
  \code{\link{getMSGFpar,msgfParMatches-method}},
  \code{\link{length,msgfParMatches-method}},
  \code{\link{msgfParMatches}},
  \code{\link{msgfParMatches-class}},
  \code{\link{show,msgfParMatches-method}};
  \code{\link{getMSGFpar,msgfParModification-method}},
  \code{\link{msgfParModification}},
  \code{\link{msgfParModification-class}},
  \code{\link{show,msgfParModification-method}};
  \code{\link{getMSGFpar,msgfParNtt-method}},
  \code{\link{length,msgfParNtt-method}},
  \code{\link{msgfParNtt}}, \code{\link{msgfParNtt-class}},
  \code{\link{show,msgfParNtt-method}};
  \code{\link{getMSGFpar,msgfParTda-method}},
  \code{\link{length,msgfParTda-method}},
  \code{\link{msgfParTda}}, \code{\link{msgfParTda-class}},
  \code{\link{show,msgfParTda-method}};
  \code{\link{getMSGFpar,msgfParTolerance-method}},
  \code{\link{length,msgfParTolerance-method}},
  \code{\link{msgfParTolerance}},
  \code{\link{msgfParTolerance-class}},
  \code{\link{show,msgfParTolerance-method}};
  \code{\link{msgfPar}}
}

