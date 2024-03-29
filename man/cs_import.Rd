% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cs_import.R
\name{cs_import}
\alias{cs_import}
\title{Import a File and Clean Names}
\usage{
cs_import(file, which = 1)
}
\arguments{
\item{file}{The file to be imported. Can be any file type supported by rio::import.}

\item{which}{Which tab from an multi-tab Excel file.}
}
\value{
A data frame with clean names
}
\description{
Import file and clean names simultaneously
}
\details{
This function combines the import function from the rio package and the clean_names
function from the janitor package. I got tired of using those two functions in
succession for every file.
}
\examples{
library(datasets)

#' create CSV to import
rio::export(USArrests, "USArrests.csv")

#' import CSV and clean names
cs_import("USArrests.csv")

}
