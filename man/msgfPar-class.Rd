% Generated by roxygen2 (4.0.2): do not edit by hand
\docType{class}
\name{msgfPar-class}
\alias{getMSGFpar,msgfPar-method}
\alias{length,msgfPar-method}
\alias{msgfPar-class}
\alias{runMSGF,msgfPar-method}
\alias{show,msgfPar-method}
\title{A class to contain parameters used in an MS-GF+ analysis}
\usage{
\S4method{show}{msgfPar}(object)

\S4method{length}{msgfPar}(x)

\S4method{getMSGFpar}{msgfPar}(object)

\S4method{runMSGF}{msgfPar}(object, rawfiles, savenames, import = TRUE,
  memory = 10000, async = FALSE, msgfPath)
}
\arguments{
\item{object}{An msgfPar object}

\item{x}{An msgfPar object}

\item{rawfiles}{A character vector holding the filepath to the spectrum files
to be analysed (currently supported formats: *.mzML, *.mzXML, *.mgf, *.ms2,
*.pkl or *_dta.txt)}

\item{savenames}{An optinal vector of same length as rawfiles. Specifies the
name used to save the results. If omitted the results will be saved with the
same name as the rawfile, but with an .mzid extension.}

\item{import}{Logical (default=TRUE). Should the results be imported in to R
after the analysis is finished.}

\item{memory}{An integer (default=10000). How much memory should be allocated
to the java virtual machine during execution (in mb)}

\item{async}{An Logical (default=FALSE). Should MS-GF+ be run asynchronously?}

\item{msgfPath}{The path to an alternative MSGFPlus.jar file if the bundled
one is not desired}
}
\value{
\code{length}: 1 if a database is defined, 0 otherwise.

\code{getMSGFpar}: A stringified version of the parameters compliant
with MS-GF+.

\code{runMSGF}: If \code{import=TRUE} an mzID or mzIDCollection
object. If \code{async=TRUE} an msgfAsync object. Otherwise NULL
}
\description{
This class collects and stores parameters for an MS-GF+ analysis and is the
starting point for peptide identification
}
\details{
This class contains a range of other classes, each handling a different set
of parameters. Often these classes are simple containers that only takes care
of errorchecking and generating command line arguments, but in some cases, as
with msgfParModificationList, the class is a bit more complex.
}
\section{Methods (by generic)}{
\itemize{
\item \code{show}: Short summary of msgfPar object

\item \code{length}: Report the length of an msgfPar object

\item \code{getMSGFpar}: Get \code{\link[base]{system}} compliant function call

\item \code{runMSGF}: Initiate an MS-GF+ analysis using the selected msgfPar
object
}}
\section{Slots}{

\describe{
\item{\code{database}}{The location of the database fasta file used for the analysis.}

\item{\code{tolerance}}{An \code{msgfParTolerance} object holding the m/z tolerance
used in the search.}

\item{\code{isotopeError}}{An \code{msgfParIsotopeError} object holding the isotope
errors permitted in the search.}

\item{\code{tda}}{An \code{msgfParTda} object saying whether FDR should be estimated
using the target-decoy approach.}

\item{\code{fragmentation}}{An \code{msgfParFragmentation} object holding the type of
fragmentation expected from the experiment.}

\item{\code{instrument}}{An \code{msgfParInstrument} object holding which type of
instrument was used for collecting the data.}

\item{\code{enzyme}}{An \code{msgfParEnzyme} object holding which enzyme was used for
digestion}

\item{\code{protocol}}{An \code{msgfParProtocol} object defining whether a specific
protocol should be used in the search.}

\item{\code{ntt}}{An \code{msgfParNtt} object defining the number of tolerable
termini allowed in the peptides.}

\item{\code{modification}}{An \code{msgfParModificationList} object holding the
modifications accepted in the search.}

\item{\code{lengthRange}}{An \code{msgfParLengthRange} object setting the limits on
the peptide length in residues that the search allows.}

\item{\code{chargeRange}}{An \code{msgfParChargeRange} object defining which charges
should be included in the search.}

\item{\code{matches}}{An \code{msgfParMatches} object defining the number of matches
per PSM that gets reported in the output.}
}}
\section{Objects from the class}{

Objects can be created using the \code{\link{msgfPar}} constructor, or with
\code{\link{msgfParGUI}} for a simple graphical user interface
}
\examples{
parameters <- msgfPar(
                      database=system.file(package='MSGFplus', 'extdata', 'milk-proteins.fasta'),
                      tolerance='20 ppm',
                      instrument='TOF',
                      enzyme='Lys-C'
                     )
getMSGFpar(parameters)
\dontrun{
parameters <- msgfPar(
                      database=system.file(package='MSGFplus', 'extdata', 'milk-proteins.fasta'),
                      tolerance='20 ppm',
                      instrument='TOF',
                      enzyme='Lys-C'
                     )
runMSGF(parameters, c('file1.mzML', 'file2.mzML'))
}
}
\references{
\url{http://proteomics.ucsd.edu/Software/MSGFPlus.html}
}
\seealso{
\code{\link{msgfParGUI}}

Other msgfParClasses: \code{\link{[[,msgfParModificationList,numeric,missing-method}},
  \code{\link{[[<-,msgfParModificationList,numeric,missing,msgfParModification-method}},
  \code{\link{getMSGFpar,msgfParModificationList-method}},
  \code{\link{length,msgfParModificationList-method}},
  \code{\link{msgfParModificationList}},
  \code{\link{msgfParModificationList-class}},
  \code{\link{show,msgfParModificationList-method}};
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
  \code{\link{getMSGFpar,msgfParProtocol-method}},
  \code{\link{length,msgfParProtocol-method}},
  \code{\link{msgfParProtocol}},
  \code{\link{msgfParProtocol-class}},
  \code{\link{show,msgfParProtocol-method}};
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

