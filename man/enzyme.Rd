% Generated by roxygen2 (4.0.2): do not edit by hand
\docType{methods}
\name{enzyme}
\alias{enzyme}
\alias{enzyme,msgfPar-method}
\alias{enzyme<-}
\alias{enzyme<-,msgfPar,character-method}
\alias{enzyme<-,msgfPar,msgfParEnzyme-method}
\alias{enzyme<-,msgfPar,numeric-method}
\title{Get and set enzyme in msgfPar objects}
\usage{
enzyme(object)

enzyme(object) <- value

\S4method{enzyme}{msgfPar}(object)

\S4method{enzyme}{msgfPar,numeric}(object) <- value

\S4method{enzyme}{msgfPar,character}(object) <- value

\S4method{enzyme}{msgfPar,msgfParEnzyme}(object) <- value
}
\arguments{
\item{object}{An msgfPar object}

\item{value}{Either an integer, string or msgfParEnzyme object}
}
\value{
In case of the getter a named integer
}
\description{
These functions allow you to retrieve and set the enzyme used for digestion
during sample treatment.
}
\section{Methods (by class)}{
\itemize{
\item \code{msgfPar}: Get the enzyme currently used

\item \code{object = msgfPar,value = numeric}: Set the enzyme to use using the key for the enzyme

\item \code{object = msgfPar,value = character}: Set the enzyme to use using the name of the enzyme

\item \code{object = msgfPar,value = msgfParEnzyme}: Set the enzyme to use using an msgfParEnzyme object
}}
\examples{
parameters <- msgfPar(system.file(package='MSGFplus', 'extdata', 'milk-proteins.fasta'))
enzyme(parameters) <- 'Trypsin'
enzyme(parameters) <- 3
enzyme(parameters)
}
\seealso{
Other msgfPar-getter_setter: \code{\link{chargeRange}},
  \code{\link{chargeRange,msgfPar-method}},
  \code{\link{chargeRange<-}},
  \code{\link{chargeRange<-,msgfPar,msgfParChargeRange-method}},
  \code{\link{chargeRange<-,msgfPar,numeric-method}};
  \code{\link{db}}, \code{\link{db,msgfPar-method}},
  \code{\link{db<-}},
  \code{\link{db<-,msgfPar,character-method}};
  \code{\link{fragmentation}},
  \code{\link{fragmentation,msgfPar-method}},
  \code{\link{fragmentation<-}},
  \code{\link{fragmentation<-,msgfPar,character-method}},
  \code{\link{fragmentation<-,msgfPar,msgfParFragmentation-method}},
  \code{\link{fragmentation<-,msgfPar,numeric-method}};
  \code{\link{instrument}},
  \code{\link{instrument,msgfPar-method}},
  \code{\link{instrument<-}},
  \code{\link{instrument<-,msgfPar,character-method}},
  \code{\link{instrument<-,msgfPar,msgfParInstrument-method}},
  \code{\link{instrument<-,msgfPar,numeric-method}};
  \code{\link{isotopeError}},
  \code{\link{isotopeError,msgfPar-method}},
  \code{\link{isotopeError<-}},
  \code{\link{isotopeError<-,msgfPar,msgfParIsotopeError-method}},
  \code{\link{isotopeError<-,msgfPar,numeric-method}};
  \code{\link{lengthRange}},
  \code{\link{lengthRange,msgfPar-method}},
  \code{\link{lengthRange<-}},
  \code{\link{lengthRange<-,msgfPar,msgfParLengthRange-method}},
  \code{\link{lengthRange<-,msgfPar,numeric-method}};
  \code{\link{matches}},
  \code{\link{matches,msgfPar-method}},
  \code{\link{matches<-}},
  \code{\link{matches<-,msgfPar,msgfParMatches-method}},
  \code{\link{matches<-,msgfPar,numeric-method}};
  \code{\link{mods}}, \code{\link{mods,msgfPar-method}},
  \code{\link{mods<-}},
  \code{\link{mods<-,msgfPar,msgfParModificationList-method}},
  \code{\link{nMod}}, \code{\link{nMod,msgfPar-method}},
  \code{\link{nMod<-}},
  \code{\link{nMod<-,msgfPar,numeric-method}};
  \code{\link{ntt}}, \code{\link{ntt,msgfPar-method}},
  \code{\link{ntt<-}},
  \code{\link{ntt<-,msgfPar,msgfParNtt-method}},
  \code{\link{ntt<-,msgfPar,numeric-method}};
  \code{\link{protocol}},
  \code{\link{protocol,msgfPar-method}},
  \code{\link{protocol<-}},
  \code{\link{protocol<-,msgfPar,character-method}},
  \code{\link{protocol<-,msgfPar,msgfParProtocol-method}},
  \code{\link{protocol<-,msgfPar,numeric-method}};
  \code{\link{tda}}, \code{\link{tda,msgfPar-method}},
  \code{\link{tda<-}},
  \code{\link{tda<-,msgfPar,logical-method}},
  \code{\link{tda<-,msgfPar,msgfParTda-method}};
  \code{\link{tolerance}},
  \code{\link{tolerance,msgfPar-method}},
  \code{\link{tolerance<-}},
  \code{\link{tolerance<-,msgfPar,character-method}},
  \code{\link{tolerance<-,msgfPar,msgfParTolerance-method}},
  \code{\link{toleranceRange}},
  \code{\link{toleranceRange,msgfPar-method}},
  \code{\link{toleranceRange<-}},
  \code{\link{toleranceRange<-,msgfPar,numeric-method}},
  \code{\link{toleranceUnit}},
  \code{\link{toleranceUnit,msgfPar-method}},
  \code{\link{toleranceUnit<-}},
  \code{\link{toleranceUnit<-,msgfPar,character-method}}
}

